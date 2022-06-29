const express = require('express');
const router = express.Router();
const AuthController = require('../controller/AuthController')
const auth = new AuthController();


/* GET register page. */
router.get('/register', function(req, res, next) {
    // xu ly request -> dieu huong den controller
    auth.showFormRegister(req, res)
});

router.post('/register', function(req, res, next) {
    // xu ly request -> dieu huong den controller
    auth.register(req, res)
});


module.exports = router;
