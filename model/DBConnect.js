const mysql = require('mysql');

class DBConnect {

    connect() {
        return mysql.createConnection({
            host: '127.0.0.1',
            user: 'root',
            password: '123456@Abc',
            database: 'eshop-app'
        })
    }
}

module.exports = DBConnect;
