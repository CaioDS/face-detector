const userService = require('../services/userService');

const STORAGE_USER_DIR = './api/utils/assets/users';

exports.registerRecognizeUserImages = async (req, res) => {
  const { userId } = req.params;

  try {
    await userService.registerRecognizeUserImages(userId);

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
