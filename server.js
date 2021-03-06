"use strict";

const express = require('express');
const app = express();

// Enable HTML template middleware
app.engine('html', require('ejs').renderFile);

// Enable static CSS styles
app.use(express.static('styles'));

// reply to request with "Hello World!"
app.get('/', function (req, res) {
  res.json({res: "this is a demo!"});
});

//start a server on port 80 and log its start to our console
const server = app.listen(5000, function () {
  const port = server.address().port;

  console.log('Example app listening on port ', port);

});
