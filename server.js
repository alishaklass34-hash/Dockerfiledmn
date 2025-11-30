const http = require("http");

const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/plain; charset=utf-8" });
  res.end("Docker + Quay.io çalışıyor!\n");
});

server.listen(8000, () => {
  console.log("Server 8000 portunda çalışıyor");
});
