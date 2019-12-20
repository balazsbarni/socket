'use strict';

const socket = io();
const form = document.querySelector('form');
const message = document.getElementById('m');
const messages = document.getElementById('messages');

form.addEventListener('submit', e => {
  e.preventDefault();
  socket.emit('chat message', message.value);
  form.reset();
});

socket.on('chat message', msg => {
  let li = document.createElement('li');
  li.innerText = msg;
  messages.appendChild(li);
});