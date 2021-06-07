const tf = require("@tensorflow/tfjs-node");
const fs = require("fs").promises;
const cocoSsd = require("@tensorflow-models/coco-ssd");

exports.detectImageObjects = async (path) => {
  const image = await fs.readFile(path);
  console.log("IMAGEM:", image);
  const decodedImage = tf.node.decodeImage(new Uint8Array(image), 3);
  console.log("IMAGEM Decodificada:", decodedImage);

  const classificatorModel = await cocoSsd.load();
  const predictions = await classificatorModel.detect(decodedImage);
  console.log("PREDIÇÃO ENCONTRADA:", predictions);

  return predictions;
};
