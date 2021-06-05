const express = require("express");
const classficatorController = require("../controllers/classificatorController");

const router = express.Router();

router.post("/classificator", classficatorController.rateImage);
router.get("/healthcheck", (req, res) => {
  return res.json({
    check: true,
  });
});

module.exports = router;
