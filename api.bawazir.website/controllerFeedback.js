'use strict';

var response = require('./respon');
var connection = require('./connection');



exports.getAll = function(req, res) {
    

    connection.query('SELECT * FROM feed_back',
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, "Success Get feedback", res)
        }
    });
};



exports.getById = function(req, res) {
    var username = req.params.username;
    connection.query('SELECT * FROM feed_back where username = ?',
    [username],
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, "Success Get feedback!", res)
        }
    });
};


exports.insertFeedback = function(req, res) {
    
    var username = req.body.username;
    var feedback = req.body.feedback;
    var createdAt = Date.now();
    var updatedAt = Date.now();

    connection.query('INSERT INTO feed_back (username, feedback,createdAt,updatedAt) values (?,?,?,?)',
    [ username,feedback,createdAt,updatedAt ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows,"Success add feedback!", res)
        }
    });
};

exports.update = function(req, res) {
    
    var username = req.body.username;
    var feedback = req.body.feedback;
    var updatedAt = Date.now();

    connection.query('UPDATE feed_back SET feedback = ?, updatedAt = ? WHERE username = ?',
    [ feedback, updatedAt ,username ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
        	if(rows.affectedRows>0) {
        		response.ok(rows,"Success Update feedback", res)
        	}
        	else {
        		response.failure(rows,"failure Update feedback", res)
        	}
            
        }
    });
};

exports.delete = function(req, res) {
    
    var id = req.params.id;

    connection.query('DELETE FROM feed_back WHERE id = ?',
    [ id ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, "Success delete feedback at id : " + id, res)
        }
    });
};

