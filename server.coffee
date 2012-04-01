fs = require 'fs'
path = require 'path'

server = require('http').createServer (request, response) ->
  filePath = '.' + request.url
  if filePath == './'
    filePath = './index.html'

  extname = path.extname(filePath)
  contentType = 'text/html'

  switch extname
    when '.coffee'
      contentType = 'text/javascript'
    when '.css'
      contentType = 'text/css'

  path.exists filePath, (exists) ->
    if exists
      fs.readFile filePath, (error, content) ->
        if error
          response.writeHead(500)
          response.end()
        else

          response.writeHead(200, { 'Content-Type': contentType })
          response.end(content, 'utf-8')
    else
      response.writeHead(404, {'Content-Type': 'text/plain'})
      response.write('404 Not Found\n');
      response.end()

server.listen 8000
console.log 'Server running at http://0.0.0.0:8000/'