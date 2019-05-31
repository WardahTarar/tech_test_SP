require 'webserver'

describe WebServer do
  it 'checks for webserver to be empty by default' do
    webserver = WebServer.new
    expect(webserver.logs).to eq []
  end
end