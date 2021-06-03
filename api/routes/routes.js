const express = require("express");
const classficatorController = require("../controllers/classificatorController");

const router = express.Router();

router.post("/classificator", classficatorController.rateImage);

module.exports = router;
