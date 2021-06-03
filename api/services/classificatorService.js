const tf = require("@tensorflow/tfjs-node");
const fs = require("fs").promises;
const mobilenet = require("@tensorflow-models/mobilenet");
const cocoSsd = require("@tensorflow-models/coco-ssd");

exports.detectImageObjects = async (path) => {
  const image = await fs.readFile(path);
  const decodedImage = tf.node.decodeImage(new Uint8Array(image), 3);

  const classificatorModel = await cocoSsd.load();
  const predictions = await classificatorModel.detect(decodedImage);

  return predictions;
};
