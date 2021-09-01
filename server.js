var http = require('http');
var url = require('url');

let valuesAdded = [];

http.createServer(function (request, response) {
  const queryParams = url.parse(request.url, true).query;

  if(queryParams.add){
    valuesAdded.push(queryParams.add);
    
  }   

  response.writeHead(200, {'Conntent-Type':'text/plain'});
  const valuestring = valuesAdded.join('\n\n  -');
  response.end(`The values add till now: \n\n  -${valuestring}`);

}).listen(8080);



console.log('running server!');
