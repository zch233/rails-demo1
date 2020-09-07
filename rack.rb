require 'rack'
require 'webrick'

class RackApp
  def call(env)
    [
      200,
      {},
      ['<h1>Rack</h1>']
    ]
  end
end

Rack::Handler::WEBrick.run RackApp.new, Host: '0.0.0.0', Port: '1234'
