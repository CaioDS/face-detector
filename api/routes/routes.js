const express = require('express');
const fs = require('fs-extra');
const path = require('path');
const multer = require('multer');

const classficatorController = require('../controllers/classificatorController');
const directoryController = require('../controllers/directoryController');
const userController = require('../controllers/userController');
const {
  RECOGNIZE_IMAGE_DIRECTORY,
  USERS_IMAGE_DIRECTORY,
} = require('../utils/constants');

const router = express.Router();

const storageImageUsers = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, USERS_IMAGE_DIRECTORY);
  },
  filename: function (req, file, cb) {
    cb(null, Date.now() + '-' + file.originalname);
  },
});

const storageImageRecognize = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, RECOGNIZE_IMAGE_DIRECTORY);
  },
  filename: function (req, file, cb) {
    cb(null, file.originalname);
  },
});

const uploadImageUsers = multer({ storage: storageImageUsers });
const uploadImageRecognize = multer({ storage: storageImageRecognize });

router.post(
  '/user/:userId',
  uploadImageUsers.single('image'),
  userController.registerRecognizeUserImages
);
router.post('/classificator', classficatorController.rateImage);
router.post(
  '/recognize/:userId',
  uploadImageRecognize.single('image'),
  classficatorController.recognizeUser
);
router.get('/directory/clear', directoryController.removeSnapshotsFiles);
router.get('/healthcheck', (req, res) => {
  return res.json({
    check: true,
  });
});

module.exports = router;
