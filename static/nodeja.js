const http = require('http');
const fs = require('fs');

const hostname = '127.0.0.1';
const port = 5501;

const home = fs.readFileSync('homepage.html');
const homepage = fs.readFileSync('homepage.css');
const hp = fs.readFileSync('homepage.js');

const server = http.createServer((req, res) => {
    console.log(req.url);
    url = req.url;

    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/html');
    res.end(hp);
});

server.listen(port, hostname, () => {
    console.log(`Server running at http://${hostname}:${port}/`);
});