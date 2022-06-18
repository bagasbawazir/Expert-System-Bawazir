'use strict';

exports.ok = function(values, message, res) {
  if(message == "Success Get Penyakit dan Gejala"){
    var i;
    var j;
    var nama,kode;
    var arrkodenama, arrnama, arrkode;
    arrkodenama = arrnama = arrkode = new Array();
    
    for (i = 0; i < values.length; i++) {
      kode = values[i]["kodegejala"];
      arrkode = kode.split(",");
      nama = values[i]["namagejala"];
      arrnama = nama.split("--");
      delete values[i]["kodegejala"];
      delete values[i]["namagejala"];
      
      var arrkodenama = [];
      for(j = 0; j < arrkode.length; j++){ // cause the length of name and code is always the same
        arrkodenama.push({"kode":arrkode[j],"nama":arrnama[j]});
      }
      values[i]["gejala"] = arrkodenama;
    }
  }

  if(message == "Success Get Pertanyaan dan Penyakit"){
    var i;
    var j;
    var idpertanyaan, pertanyaan;
    var arrall, arridpertanyaan, arrpertanyaan;
    arrall = arridpertanyaan = arrpertanyaan = new Array();
    
    for (i = 0; i < values.length; i++) {
      idpertanyaan = values[i]["idpertanyaan"];
      arridpertanyaan = idpertanyaan.split(",");
      pertanyaan = values[i]["pertanyaan"];
      arrpertanyaan = pertanyaan.split("--");
      delete values[i]["idpertanyaan"];
      delete values[i]["pertanyaan"];
      
      var arrall = [];
      for(j = 0; j < arridpertanyaan.length; j++){ // cause the length of name and code is always the same
        arrall.push({"id":arridpertanyaan[j],"pertanyaan":arrpertanyaan[j]});
      }
      values[i]["pertanyaan"] = arrall;
    }
  }

  if(message == "Success Get Penyakit, Pertanyaan dan Gejala"){
    var i;
    var j;
    var idpertanyaan, pertanyaan;
    var arrall, arridpertanyaan, arrpertanyaan;
    arrall = arridpertanyaan = arrpertanyaan = new Array();
    var nama,kode;
    var arrkodenama, arrnama, arrkode;
    arrkodenama = arrnama = arrkode = new Array();
    
    for (i = 0; i < values.length; i++) {
      idpertanyaan = values[i]["idpertanyaan"];
      arridpertanyaan = idpertanyaan.split(",");
      pertanyaan = values[i]["pertanyaan"];
      arrpertanyaan = pertanyaan.split("--");
      delete values[i]["idpertanyaan"];
      delete values[i]["pertanyaan"];
      
      var arrall = [];
      for(j = 0; j < arridpertanyaan.length; j++){ // cause the length of name and code is always the same
        arrall.push({"id":arridpertanyaan[j],"pertanyaan":arrpertanyaan[j]});
      }
      values[i]["pertanyaan"] = arrall;

      kode = values[i]["kodegejala"];
      arrkode = kode.split(",");
      nama = values[i]["namagejala"];
      arrnama = nama.split("--");
      delete values[i]["kodegejala"];
      delete values[i]["namagejala"];
      
      var arrkodenama = [];
      for(j = 0; j < arrkode.length; j++){ // cause the length of name and code is always the same
        arrkodenama.push({"kode":arrkode[j],"nama":arrnama[j]});
      }
      values[i]["gejala"] = arrkodenama;
      
    }
  }
  
  var data = {
      'status': 200,
      'message' : message,
      'values': values
  };
  res.json(data);
  res.end();
};

exports.failure = function(values,message, res) {
  var data = {
      'status': 404,
      'message': message,
      'values' : values
  };
  res.json(data);
  res.end();
};