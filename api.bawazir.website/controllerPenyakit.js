'use strict';

var response = require('./respon');
var connection = require('./connection');



exports.getAll = function(req, res) {
    
    connection.query('SELECT * FROM penyakit',
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, "Success Get Penyakit", res)
        }
    });
};

exports.getSymp = function(req, res) {
    var query = "select  p.kode, p.penyakit, x.kodegejala, x.namagejala, y.idpertanyaan, y.pertanyaan from penyakit p join (select  p.kode, p.penyakit, group_concat(gp.kodegejala) as kodegejala, group_concat(g.gejala separator '--') as namagejala from penyakit p join gejalapenyakit gp on p.kode = gp.kodepenyakit join gejala g on g.kode = gp.kodegejala group by p.penyakit, p.kode) x on x.kode = p.kode join ( select  p.kode, p.penyakit, group_concat(pp.idpertanyaan) as idpertanyaan, group_concat(py.pertanyaan separator '--') as pertanyaan from penyakit p join pertanyaanpenyakit pp on p.kode = pp.kodepenyakit join pertanyaan py on  pp.idpertanyaan = py.id group by p.penyakit, p.kode) y on y.kode = p.kode";
    connection.query(query,
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, "Success Get Penyakit, Pertanyaan dan Gejala", res)
        }
    });
};

exports.getSympImage = function(req, res) {
    
    connection.query("SELECT kodepenyakit, penyakit, gambar, deskripsi, solusi, group_concat(kodegejala) as kodegejala, group_concat(gejala SEPARATOR '--') as namagejala FROM gejalapenyakit gp join penyakit p on gp.kodepenyakit = p.kode join gejala g on gp.kodegejala = g.kode group by penyakit",
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, "Success Get Penyakit dan Gejala", res)
        }
    });
};

exports.getSympImageId = function(req, res) {
    
    var kode = req.params.kode;
    connection.query("SELECT kodepenyakit, penyakit, gambar, deskripsi, solusi, group_concat(kodegejala) as kodegejala, group_concat(gejala SEPARATOR '--') as namagejala FROM gejalapenyakit gp join penyakit p on gp.kodepenyakit = p.kode join gejala g on gp.kodegejala = g.kode where kodepenyakit = ? group by penyakit", [ kode],
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, "Success Get Penyakit dan Gejala", res)
        }
    });
};

exports.getSympbyDisease = function(req, res) {

    var kode = req.params.kode
    connection.query("SELECT kodepenyakit, penyakit, group_concat(kodegejala) as kodegejala, group_concat(gejala SEPARATOR '--') as namagejala FROM gejalapenyakit gp join penyakit p on gp.kodepenyakit = p.kode join gejala g on gp.kodegejala = g.kode where kodepenyakit = ? group by penyakit", [ kode],
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, "Success Get Penyakit dan Gejala", res)
        }
    });
};

exports.getQuestionbyDisease = function(req, res) {

    connection.query("select pp.kodepenyakit, group_concat(pp.idpertanyaan) as idpertanyaan, group_concat(py.pertanyaan separator '--') as pertanyaan from pertanyaanpenyakit pp  join pertanyaan py on  pp.idpertanyaan = py.id group by pp.kodepenyakit",
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, "Success Get Pertanyaan dan Penyakit", res)
        }
    });
};

exports.getAllQuestion = function(req, res) {
    
    connection.query('SELECT * FROM pertanyaan',
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, "Success Get Penyakit", res)
        }
    });
};


