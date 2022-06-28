const fs = require('fs-extra');
const path = require('path');
const uuid = require('uuid');

const {
  RECOGNIZE_IMAGE_DIRECTORY,
  USERS_IMAGE_DIRECTORY,
} = require('../utils/constants');

exports.registerRecognizeUserImages = async (userId) => {
  const userDirectory = USERS_IMAGE_DIRECTORY;

  if (!fs.existsSync(path.join(userDirectory, userId))) {
    fs.mkdirSync(path.join(userDirectory, userId), { recursive: true });
  }

  fs.moveSync(userDirectory, path.join(userDirectory, userId, uuid.v1()), {
    overwrite: true,
  });
};
