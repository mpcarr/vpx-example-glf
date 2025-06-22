// renameAndReplace.js

const fs = require('fs-extra');
const path = require('path');
// We will import 'replace-in-file' dynamically inside main().

// --- PATH CONFIGURATION ---
// Assume this script is in a subdirectory (e.g., /scripts). The project root is one level up.
const projectRoot = path.join(__dirname, '..');
const scriptSubDir = path.basename(__dirname); // Gets the name of the folder this script is in (e.g., 'scripts')

// --- CONFIGURATION ---
// IMPORTANT: Define the file types/paths where the old name should be replaced.
const FILES_TO_SEARCH = [
    '**/*.json',
    '**/*.vbs',
    // Add other file types if necessary
];

// Define paths to ignore during file content replacement.
const FILES_TO_IGNORE = [
    'node_modules/**',
    // Dynamically ignore this script itself, regardless of its name.
    path.join(scriptSubDir, path.basename(__filename)),
    // We will NOT ignore gamename.txt, so it gets updated if the old name is in it.
];

// --- SCRIPT LOGIC ---

async function main() {
    // Use object destructuring to get the NAMED export from the ESM module
    const { replaceInFile } = await import('replace-in-file');

    // 1. Get the new name from command line arguments
    const args = process.argv.slice(2);
    const newName = args[0];

    if (!newName) {
        console.error(`Usage: node ${path.join(scriptSubDir, path.basename(__filename))} <NewProjectName>`);
        console.error(`Example: node ${path.join(scriptSubDir, path.basename(__filename))} MyNewProject`);
        process.exit(1);
    }

    let oldProjectName;
    const gameNameFilePath = path.join(projectRoot, 'gamename.txt');

    try {
        // Read the old project name from gamename.txt
        console.log(`\nReading old project name from "${gameNameFilePath}"...`);
        const fileContent = await fs.readFile(gameNameFilePath, 'utf8');
        
        // CRITICAL FIX: The content of gamename.txt MUST be the clean project name.
        oldProjectName = fileContent.trim();
        if (!oldProjectName || oldProjectName.includes('\n')) {
            console.error(`Error: "${gameNameFilePath}" must contain only the project name and nothing else.`);
            console.error('Please remove any extra lines or comments from that file.');
            process.exit(1);
        }
        console.log(`Old project name found: "${oldProjectName}"`);

    } catch (error) {
        if (error.code === 'ENOENT') {
            console.error(`Error: The file "${gameNameFilePath}" was not found.`);
            console.error(`Please ensure "gamename.txt" exists in the project root directory and contains the project name.`);
        } else {
            console.error(`Error reading "${gameNameFilePath}":`);
            console.error(error.message);
        }
        process.exit(1);
    }

    console.log(`\nStarting rename and replace process...`);
    console.log(`Old Name: "${oldProjectName}"`);
    console.log(`New Name: "${newName}"`);

    const oldFolderPath = path.join(projectRoot, oldProjectName);
    const newFolderPath = path.join(projectRoot, newName);

    try {
        // 2. Rename the folder (if it exists)
        console.log(`\nAttempting to rename folder from "${oldFolderPath}" to "${newFolderPath}"...`);
        if (await fs.pathExists(oldFolderPath)) {
            await fs.move(oldFolderPath, newFolderPath, { overwrite: true });
            console.log(`Successfully renamed folder.`);
        } else {
            console.warn(`Warning: Folder "${oldFolderPath}" does not exist. Skipping folder rename.`);
        }

        // 3. Find and replace occurrences in all targeted files.
        console.log(`\nAttempting to replace all occurrences of "${oldProjectName}" with "${newName}" in project files...`);

        const escapedOldProjectName = oldProjectName.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');

        const replaceOptions = {
            files: FILES_TO_SEARCH,
            ignore: FILES_TO_IGNORE,
            from: new RegExp(escapedOldProjectName, 'g'),
            to: newName,
            cwd: projectRoot,
        };
        
        const results = await replaceInFile(replaceOptions);
        const changedFiles = results.filter(r => r.hasChanged).map(r => r.file);

        if (changedFiles.length > 0) {
            console.log(`Successfully replaced text in ${changedFiles.length} file(s).`);
            console.log('Modified files:');
            changedFiles.forEach(file => console.log(`  - ${file}`));
        } else {
            console.log('No file content was modified.');
        }

        // 4. CRITICAL FIX: Overwrite gamename.txt with the new name to ensure the script can run again.
        console.log(`\nUpdating "${gameNameFilePath}" to the new name for future use...`);
        await fs.writeFile(gameNameFilePath, newName);
        console.log(`Successfully updated "${gameNameFilePath}".`);

        console.log('\nProcess completed successfully!');

    } catch (error) {
        console.error('\nAn error occurred during the process:');
        console.error(error);
        console.error('\nOperation failed. The project might be in an inconsistent state. Please check the changes.');
        process.exit(1);
    }
}

// Execute the main function
main();