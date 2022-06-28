const sys = require('sys');
const tf = require('@tensorflow/tfjs-node');
const fs = require('fs').promises;
const cocoSsd = require('@tensorflow-models/coco-ssd');
const tensorflow = require('@tensorflow/tfjs-node');
const { spawn } = require('child_process');

async function preprocess(filePath) {
  const imageBuffer = await fs.readFile(filePath);
  const input = tf.node.decodeImage(imageBuffer);

  let image = tf.image.resizeBilinear(input, [100, 100]).div(tf.scalar(255));

  return image;
}

exports.detectImageObjects = async (path) => {
  const image = await fs.readFile(path);
  const decodedImage = tf.node.decodeImage(new Uint8Array(image), 3);

  const classificatorModel = await cocoSsd.load();
  const predictions = await classificatorModel.detect(decodedImage);

  return predictions;
};

exports.recognizeUser2 = async (userId, path) => {
  const pyScript = spawn('python', ['./api/services/script.py', path, userId]);

  let result;

  await new Promise((resolve) => {
    pyScript.stdout.on('data', (data) => {
      console.log(data.toString());
      result = data.toString() === 'True\r\n' ? true : false;
    });

    console.log(`child process exited with code , ${result}`);
    pyScript.on('close', resolve);
  });

  return result;
};
