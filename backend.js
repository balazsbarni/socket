'use strict';

const express = require('express');
const app = express();
// const io = require('socket.io')(app);
app.use(express.static('assets'));

app.get('/', (req, res) => {
  res.sendFile(__dirname + '/index.html');
});

// io.on()





app.listen(3000);