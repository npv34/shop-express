const createError = require('http-errors');
const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const bodyParser = require('body-parser');
const session = require('express-session');
const flash = require('connect-flash');

// import router module
const indexRouter = require('./routes/index');
const usersRouter = require('./routes/users');
const authRouter = require('./routes/auth');

const app = express();

//config sử dụng session
app.use(session({
  secret: 'secret key',
  resave: false,
  saveUninitialized: false
}));

// sử dụng hàm flash tạo ra session, session này chỉ có thời gian sống trong request hiện tại
app.use(flash());

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true}))

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

// điều hướng luồng xử lý router con theo url
/*
  - các url /admin điều hướng cho router index
  - các url /users điều hướng cho router user
  - các url /auth điều hướng cho router auth
 */
app.use('/admin', indexRouter);
app.use('/users', usersRouter);
app.use('/auth', authRouter)


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
