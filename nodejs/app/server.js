#!/usr/bin/env node

var express = require('express');
var app = express();

app.get('/', function (req, res) {
	res.send('NodeJS apllication is running');
});

app.listen(3000);
