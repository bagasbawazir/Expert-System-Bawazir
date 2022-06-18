var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  // --- Development
  // user: "root",
  // password: "",
  // database: "diagnosaCabai"
  // --- Production
  user: "bawazir1_root",
  password: "Bawazir12345",
  database: "bawazir1_diagnosacabai"
});

con.connect(function (err){
    if(err) throw err;
});

module.exports = con;
