const classificatorService = require("../services/classificatorService");

exports.rateImage = async (req, res) => {
  const image = req.files["image"];
  try {
    const classificationResult = await classificatorService.detectImageObjects(
      image.tempFilePath
    );
    const x = classificationResult[0].class;
    return res.json({
      x,
    });
  } catch (error) {
    console.log("ERRO:", error);
    return res.json({
      error,
    });
  }
};
