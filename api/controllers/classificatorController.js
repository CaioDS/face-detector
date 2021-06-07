const classificatorService = require("../services/classificatorService");

exports.rateImage = async (req, res) => {
  const image = req.files["image"];
  try {
    const classificationResult = await classificatorService.detectImageObjects(
      image.tempFilePath
    );
    const parsedResult = classificationResult[0].class;
    if (parsedResult.length > 0) {
      return res.json({
        rate: parsedResult,
      });
    }
    return res.json({
      rate: "Not found",
    });
  } catch (error) {
    console.log("ERRO:", error);
    return res.json({
      error,
    });
  }
};
