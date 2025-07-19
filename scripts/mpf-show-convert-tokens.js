const fs = require('fs');
const path = require('path');
const yaml = require('js-yaml');

const inputDir = process.argv[2];
if (!inputDir) {
  console.error("Usage: node batch-convert-yaml-to-glfshow.js <folder_path>");
  process.exit(1);
}

// Convert grayscale hex color to 0–100 intensity
function grayscaleHexToIntensity(hex) {
  const r = parseInt(hex.slice(0, 2), 16);
  return Math.round((r / 255) * 100);
}

function convertFile(filePath, showName) {
  try {
    const raw = fs.readFileSync(filePath, 'utf8');
    const data = yaml.load(raw);

    let output = `With CreateGlfShow("${showName}")\n`;

    data.forEach(step => {
      const time = step.time.toFixed(5);
      output += `  With .AddStep(${time}, Null, Null)\n`;

      const lights = step.lights || {};
      const entries = Object.entries(lights);

      if (entries.length > 0) {
        output += `    .Lights = Array( _\n`;

        entries.forEach(([name, hex], index) => {
          const intensity = grayscaleHexToIntensity(hex);
          const lineEnd = (index === entries.length - 1) ? '\n' : ', _\n';
          if(lineEnd=='\n')
          {
            output += `      "${name}|${intensity}|(color)")\n`;
          }else
          {
            output += `      "${name}|${intensity}|(color)"` + lineEnd;
          }
        });

        
      }

      output += `  End With\n`;
    });

    output += `End With\n`;

    const outputFileName = path.basename(filePath).replace(/\.(ya?ml)$/i, '.glf.vbs');
    const outputPath = path.join(path.dirname(filePath), outputFileName);
    fs.writeFileSync(outputPath, output, 'utf8');

    console.log(`✅ Converted & Tokenized: ${outputFileName}`);
  } catch (err) {
    console.error(`❌ Error converting ${filePath}: ${err.message}`);
  }
}

// Process all .yaml/.yml files in the input folder
fs.readdirSync(inputDir).forEach(file => {
  const fullPath = path.join(inputDir, file);
  if (fs.statSync(fullPath).isFile() && /\.(ya?ml)$/i.test(file)) {
    const showName = path.basename(file, path.extname(file));
    convertFile(fullPath, showName);
  }
});
