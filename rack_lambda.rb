require 'rack'
require 'webrick'
Rack::Handler::WEBrick.run ->(env) {
  [
    200,
    {"Content-Type" => "text/html;charset=utf-8"},
    ["<h1>rack_lambda</h1>", "<p>a第二行内容</p>"]
  ]
},  Host: '0.0.0.0', Port: 1234