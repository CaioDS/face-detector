const classificatorService = require("../services/classificatorService");

exports.rateImage = async (req, res) => {
  const image = req.files["image"];

  const classificationResult = await classificatorService.detectImageObjects(
    image.tempFilePath
  );
  const x = classificationResult[0].class;
  return res.json({
    x,
  });
};
