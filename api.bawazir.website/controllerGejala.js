'use strict';

var response = require('./respon');
var connection = require('./connection');



exports.getAll = function(req, res) {
    
    connection.query('SELECT * FROM gejala',
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, "Success Get Gejala", res)
        }
    });
};

exports.getById = function(req, res) {
    
    var kode = req.params.kode
    connection.query("SELECT * FROM gejala WHERE kode = ?",
    [ kode],
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, "Success Get Gejala", res)
        }
    });
};


