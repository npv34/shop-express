class AuthController {
    showFormRegister(req, res) {
        res.render('register', { message: req.flash('errPass') });
    }

    register(req, res) {
        // xu ly logic

        let pass = req.body.password;
        let reqPass = req.body.repeatPassword;

        if (pass != reqPass) {
            // tao session flash thong bao loi
            req.flash('errPass', 'Mật khẩu nhập lại không khớp.');
            // chuyen hướng về trang /auth/register
            res.redirect('/auth/register')
        }
        // goi model de them vao csdl

        // quay ve page login
    }
}

module.exports = AuthController;
