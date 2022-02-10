const express = require("express");
const router = express.Router();
const userController = require("../controllers/userController");

router.get("/", userController.userList);
router.post("/", userController.findUser);
router.get("/add-user", userController.create);
router.post("/add-user", userController.store);

router.get("/update-user/:id", userController.edit);
router.post("/update-user/:id", userController.update);

router.get("/:id", userController.destroy);

module.exports = router;
