// renameAndReplace.js

const fs = require('fs-extra');
const path = require('path');
const replaceInFile = require('replace-in-file');

// --- CONFIGURATION ---
// IMPORTANT: Define the file types/paths where the old name should be replaced.
// This is a glob pattern, so it will search in these files throughout your project.
// Adjust as needed (e.g., if you only want to replace in .vbs files, use ['**/*.vbs']).
const FILES_TO_SEARCH = [
    '**/*.js',
    '**/*.json',
    '**/*.vbs',
    '**/*.md',
    '**/*.html',
    // Add other file types if necessary
];

// Define paths to ignore during file content replacement.
// This prevents the script from trying to replace in its own code or in node_modules.
const FILES_TO_IGNORE = [
    'node_modules/**',
    'renameAndReplace.js', // Exclude this script itself
    // Add other paths to ignore if needed (e.g., build output directories)
];

// --- SCRIPT LOGIC ---

async function main() {
    // 1. Get the new name from command line arguments
    const args = process.argv.slice(2);
    const newName = args[0];

    if (!newName) {
        console.error('Usage: node renameAndReplace.js <NewFolderName>');
        console.error('Example: node renameAndReplace.js MyNewProjectName');
        process.exit(1);
    }

    let OLD_FOLDER_NAME;
    const gameNameFilePath = path.join(process.cwd(), 'gamename.txt');

    try {
        // Read the old project name from gamename.txt
        console.log(`\nReading old project name from "${gameNameFilePath}"...`);
        const fileContent = await fs.readFile(gameNameFilePath, 'utf8');
        OLD_FOLDER_NAME = fileContent.trim(); // Trim whitespace/newlines
        if (!OLD_FOLDER_NAME) {
            console.error(`Error: "${gameNameFilePath}" is empty or contains no valid name.`);
            process.exit(1);
        }
        console.log(`Old project name found: "${OLD_FOLDER_NAME}"`);

    } catch (error) {
        console.error(`Error reading "${gameNameFilePath}":`);
        console.error(`Please ensure "gamename.txt" exists in the root directory and contains the current folder name.`);
        console.error(error.message);
        process.exit(1);
    }

    console.log(`\nStarting rename and replace process...`);
    console.log(`Old Name: "${OLD_FOLDER_NAME}"`);
    console.log(`New Name: "${newName}"`);

    const oldFolderPath = path.join(process.cwd(), OLD_FOLDER_NAME);
    const newFolderPath = path.join(process.cwd(), newName);

    try {
        // 2. Rename the folder
        console.log(`\nAttempting to rename folder from "${oldFolderPath}" to "${newFolderPath}"...`);
        if (await fs.pathExists(oldFolderPath)) {
            await fs.move(oldFolderPath, newFolderPath, { overwrite: true });
            console.log(`Successfully renamed folder.`);
        } else {
            console.warn(`Warning: Folder "${oldFolderPath}" does not exist. Skipping folder rename.`);
        }

        // 3. Find and replace occurrences in files
        console.log(`\nAttempting to replace all occurrences of "${OLD_FOLDER_NAME}" with "${newName}" in files...`);

        // Escape special characters in OLD_FOLDER_NAME for use in a regular expression
        const escapedOldFolderName = OLD_FOLDER_NAME.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');

        const replaceOptions = {
            files: FILES_TO_SEARCH,
            ignore: FILES_TO_IGNORE,
            from: new RegExp(escapedOldFolderName, 'g'), // Use regex to handle global replacement
            to: newName,
        };

        const results = await replaceInFile(replaceOptions);

        if (results && results.length > 0) {
            const changedFiles = results.filter(r => r.hasChanged).map(r => r.file);
            console.log(`Successfully replaced text in ${changedFiles.length} file(s).`);
            if (changedFiles.length > 0) {
                console.log('Modified files:');
                changedFiles.forEach(file => console.log(`  - ${file}`));
            }
        } else {
            console.log('No files were modified or no occurrences found for replacement.');
        }

        console.log('\nProcess completed successfully!');

    } catch (error) {
        console.error('\nAn error occurred during the process:');
        console.error(error);
        process.exit(1);
    }
}

main();

