'use strict';

var response = require('./respon');
var connection = require('./connection');



exports.getAll = function(req, res) {
    
    connection.query('SELECT * FROM diagnosa ORDER BY createdAt DESC ',
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, "Success Get Diagnosa", res)
        }
    });
};

exports.getById = function(req, res) {
    
    var username = req.params.username
    connection.query('SELECT * FROM diagnosa WHERE username = ?',
    [ username],
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, "Success Get Diagnosa", res)
        }
    });
};


exports.insertDiagnosa = function(req, res) {
    
    var username = req.body.username;
    var location = req.body.lokasi;
    var hasil = req.body.hasil;
    var presentase = req.body.presentase;
    var createdAt = Date.now();

    connection.query('INSERT INTO diagnosa (username, hasil,location,persentase,createdAt) values (?,?,?,?,?)',
    [ username,hasil,location, presentase,createdAt ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows,"Success add diagnosa!", res)
        }
    });
};


exports.delete = function(req, res) {
    
    var id = req.params.id;

    connection.query('DELETE FROM diagnosa WHERE id = ?',
    [ id ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, "Success delete diagnosa at id : " + id, res)
        }
    });
};

