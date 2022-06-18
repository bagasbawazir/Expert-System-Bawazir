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

exports.getAllDetail = function(req, res) {

    connection.query('select d.username, d.id, d.location, py.penyakit, py.gambar, d.createdAt, detail from diagnosa d join penyakit py on d.hasil = py.penyakit',
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            rows.forEach((item,index) => {
                var details  = item.detail;
                if(details !== ""){
                    details = JSON.parse(details);
                }else{
                    details = []
                }
                rows[index]['detail'] = details

            });
            response.ok(rows, "Success Get Detail Diagnosa", res)

        }
    });
};

exports.getAllDetailUser = function(req, res) {
    
    var iduser = req.params.iduser
    connection.query('select d.username, d.id, d.location, py.penyakit, py.gambar, d.createdAt, detail from diagnosa d join penyakit py on d.hasil = py.penyakit where d.username = ?', [iduser],
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            rows.forEach((item,index) => {
                var details  = item.detail;
                if(details !== ""){
                    details = JSON.parse(details);
                }else{
                    details = []
                }
                rows[index]['detail'] = details

            });
            response.ok(rows, "Success Get Detail Diagnosa", res)

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
    console.log(req.body.detail);
    var username = req.body.username;
    var location = req.body.lokasi;
    var hasil = req.body.hasil;
    var presentase = req.body.presentase;
    var createdAt = Date.now();
    var detail = req.body.detail;

    connection.query('INSERT INTO diagnosa (username, hasil,location,persentase,createdAt,detail) values (?,?,?,?,?,?)',
    [ username,hasil,location, presentase,createdAt,detail], 
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

