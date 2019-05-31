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

  it 'displays pages from most visited to least visited' do
    webserver = WebServer.new
    5.times { webserver.receive_log('/home')}
    3.times { webserver.receive_log('/index')}
    7.times { webserver.receive_log('/about')}
    expect(webserver.display_page_visits()).to eq [["/about", 7], ["/home", 5], ["/index", 3]]
  end
end