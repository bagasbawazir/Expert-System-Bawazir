'use strict';

var response = require('./respon');
var connection = require('./connection');


exports.login = function(req, res) {
    
    var username = req.query.username;
    var password = req.query.password;

    connection.query('SELECT * FROM user where username = ? and password = ?',
    [ username,password ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            if(rows.length>0) {
                response.ok(rows, "Success Login", res)
            }
            else {
                response.failure(rows, "Login Failed", res)
            }
            
        }
    });
};

exports.register = function(req, res) {
    
    var username = req.body.username;
    var fullName = req.body.fullname;
    var password = req.body.password;
    var email = req.body.email;
    var location = req.body.location;
    var createdAt = Date.now();
    var updatedAt = Date.now();
    connection.query('INSERT INTO user (username,fullName, email,password,location,createdAt,updatedAt) values (?,?,?,?,?,?,?)',
    [ username,fullName,email,password,location,createdAt,updatedAt ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
            response.failure(error,'Something was wrong',res)
        } else{
            response.ok(rows, "Success add User!", res)
        }
    });
};

exports.update = function(req, res) {
    
    var username = req.query.username;
    var oldUsername = req.params.oldUsername;
    var email = req.query.email;
    var location = req.query.location;
    var updatedAt = Date.now();

    connection.query('UPDATE user SET username = ?, email = ?, location = ?, updatedAt = ? WHERE username = ?',
    [ username, email, location, updatedAt ,oldUsername ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
        	if(rows.affectedRows>0) {
        		response.ok(rows, "Success Update Data", res)
        	}
        	else {
        		response.failure(rows, "failure Update Data", res)
        	}
            
        }
    });
};


exports.delete = function(req, res) {

    var username = req.params.username;
    connection.query('DELETE FROM user WHERE username = ?',
    [ username ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, "Success delete " + username, res)
        }
    });
};


exports.index = function(req, res) {
    response.ok("Node Js for Diagnosa Cabai", res)
};