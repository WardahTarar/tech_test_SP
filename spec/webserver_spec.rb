require 'webserver'

describe WebServer do
  it 'checks for webserver to be empty by default' do
    webserver = WebServer.new
    expect(webserver.logs).to eq []
  end
  
  it 'receives log as an arguement' do
    webserver = WebServer.new
    expect(webserver.receive_log('/parser')).to eq ['/parser']
  end
end