const classificatorService = require('../services/classificatorService');

const { RECOGNIZE_IMAGE_DIRECTORY } = require('../utils/constants');

exports.rateImage = async (req, res) => {
  const image = req.files['image'];
  try {
    const classificationResult = await classificatorService.detectImageObjects(
      image.tempFilePath
    );

    if (classificationResult[0]) {
      const parsedResult = classificationResult[0].class;
      return res.json({
        rate: parsedResult,
      });
    }
    return res.json({
      rate: 'Not found',
    });
  } catch (error) {
    console.log('ERRO:', error);
    return res.json({
      error,
    });
  }
};

exports.recognizeUser = async (req, res) => {
  const { userId } = req.params;

  try {
    const classificationResult = await classificatorService.recognizeUser2(
      userId,
      RECOGNIZE_IMAGE_DIRECTORY
    );

    return res.json({
      message: classificationResult,
    });
  } catch (error) {
    console.log('ERRO:', error);
    return res.json({
      error,
    });
  }
};
