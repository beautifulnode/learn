var http = require('http');

var server = http.createServer(function(req, res) {
  console.log('recieved request');
  res.writeHead(200, { 'content-type': 'text/plain' });
  res.end("Hello World\n\n");
});

server.listen(3000, function() { 
  console.log('running...');
});
