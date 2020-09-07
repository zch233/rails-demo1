require 'rack'
require 'webrick'

class RackApp
  def call(env)
    request = Rack::Request.new(env)
    p "你请求的路径是：#{request.path}"
    case request.path
    when '/index.html'
      [
        200,
        {},
        ['<h1>首页</h1>']
      ]
    else
      [
        404,
        {},
        ['<h1>404</h1>']
      ]
    end
  end
end

Rack::Handler::WEBrick.run RackApp.new, Host: '0.0.0.0', Port: '1234'
