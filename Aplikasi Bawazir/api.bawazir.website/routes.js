    'use strict';

module.exports = function(app) {
    var user = require('./controllerLogin');
    var feedback = require('./controllerFeedback');
    var diagnosa = require('./controllerDiagnosa');
    var gejala = require('./controllerGejala');
    var penyakit = require('./controllerPenyakit');

    app.route('/')
        .get(user.index);

    app.route('/users').get(user.login);
    app.route('/users').post(user.register);
    app.route('/users/:oldUsername').put(user.update);
    app.route('/users/:username').delete(user.delete);
    app.route('/feedback').get(feedback.getAll);
    app.route('/feedback/:username').get(feedback.getById);
    app.route('/feedback').post(feedback.insertFeedback);
    app.route('/feedback').put(feedback.update);
    app.route('/feedback/:id').delete(feedback.delete);
    app.route('/diagnosa').get(diagnosa.getAll);
    app.route('/diagnosadetail').get(diagnosa.getAllDetail);
    app.route('/diagnosadetail/:iduser').get(diagnosa.getAllDetailUser);
    app.route('/diagnosa/:username').get(diagnosa.getById);
    app.route('/diagnosa').post(diagnosa.insertDiagnosa);
    app.route('/diagnosa/:id').delete(diagnosa.delete);
    app.route('/gejala').get(gejala.getAll);
    app.route('/gejala/:kode').get(gejala.getById);
    app.route('/disease').get(penyakit.getAll);
    app.route('/diseasesymp').get(penyakit.getSymp);
    app.route('/diseasesympimage').get(penyakit.getSympImage);
    app.route('/diseasesympimage/:kode').get(penyakit.getSympImageId);
    app.route('/diseasesymp/:kode').get(penyakit.getSympbyDisease);
    app.route('/diseasequestion').get(penyakit.getQuestionbyDisease);
    app.route('/questionAll').get(penyakit.getAllQuestion);
    app.route('/questionAll').get(penyakit.getAllQuestion);
    
};