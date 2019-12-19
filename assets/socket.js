'use strict';

const socket = io();
const form = document.querySelector('form');
const message = document.getElementById('m');

form.addEventListener('submit', e => {
  e.preventDefault();
	socket.emit('chat message', message.value);
  form.reset();
});
