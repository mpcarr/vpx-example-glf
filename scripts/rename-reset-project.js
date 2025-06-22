// renameAndReplace.js

const fs = require('fs-extra');
const path = require('path');
const { exec } = require('child_process');

const projectRoot = path.join(__dirname, '..');
const scriptSubDir = path.basename(__dirname);

const FILES_TO_SEARCH = [
    '**/*.json',
    '**/*.vbs',
];

const FILES_TO_IGNORE = [
    'node_modules/**',
    path.join(scriptSubDir, path.basename(__filename)),
];

async function main() {
    const { replaceInFile } = await import('replace-in-file');

    const args = process.argv.slice(2);
    const newName = args[0];
    const doGitReset = args.includes('--git');

    if (!newName || newName.startsWith('--')) {
        console.error(`Usage: node ${path.join(scriptSubDir, path.basename(__filename))} <NewProjectName> [--git]`);
        process.exit(1);
    }

    let oldProjectName;
    const gameNameFilePath = path.join(projectRoot, 'gamename.txt');

    try {
        const fileContent = await fs.readFile(gameNameFilePath, 'utf8');
        oldProjectName = fileContent.trim();
        if (!oldProjectName || oldProjectName.includes('\n')) {
            console.error(`Error: "${gameNameFilePath}" must contain only the project name and nothing else.`);
            process.exit(1);
        }
    } catch (error) {
        console.error(`Error reading "${gameNameFilePath}":`, error.message);
        process.exit(1);
    }

    console.log(`\nOld Name: "${oldProjectName}"`);
    console.log(`New Name: "${newName}"`);
    if (doGitReset) console.log(`Git reset: ENABLED`);

    const oldFolderPath = path.join(projectRoot, oldProjectName);
    const newFolderPath = path.join(projectRoot, newName);

    try {
        if (await fs.pathExists(oldFolderPath)) {
            await fs.move(oldFolderPath, newFolderPath, { overwrite: true });
            console.log(`Renamed folder to "${newFolderPath}".`);
        } else {
            console.warn(`Folder "${oldFolderPath}" not found. Skipping rename.`);
        }

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
            console.log(`Modified ${changedFiles.length} file(s):`);
            changedFiles.forEach(file => console.log(`  - ${file}`));
        } else {
            console.log('No content changes found.');
        }

        await fs.writeFile(gameNameFilePath, newName);
        console.log(`Updated "${gameNameFilePath}".`);

        // --- Optional Git logic ---
        if (doGitReset) {
            const gitDirPath = path.join(projectRoot, '.git');
            if (await fs.pathExists(gitDirPath)) {
                console.log('\nRemoving existing Git repository...');
                await fs.remove(gitDirPath);
                console.log('.git directory deleted.');
            }

            console.log('Initializing new Git repository...');
            await runCommand('git init', projectRoot);

            console.log('Staging all files...');
            await runCommand('git add .', projectRoot);

            const commitMessage = `Initial commit for ${newName}`;
            console.log(`Creating initial commit: "${commitMessage}"`);
            await runCommand(`git commit -m "${commitMessage}"`, projectRoot);
        }

        console.log('\nProcess completed successfully!');

    } catch (error) {
        console.error('\nAn error occurred during the process:');
        console.error(error);
        process.exit(1);
    }
}

function runCommand(command, cwd) {
    return new Promise((resolve, reject) => {
        exec(command, { cwd }, (error, stdout, stderr) => {
            if (error) {
                console.error(`Error running command: "${command}"`);
                console.error(stderr);
                return reject(error);
            }
            if (stdout.trim()) console.log(stdout.trim());
            resolve();
        });
    });
}

main();
