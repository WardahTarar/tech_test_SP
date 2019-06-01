require 'webserver'
require 'page_visit_helper'

describe WebServer do
  subject(:webserver) { WebServer.new }

  it 'checks for webserver to be empty by default' do
    expect(webserver.logs).to eq []
  end

  it 'receives log as an arguement' do
    expect(webserver.receive_log('/parser')).to eq ['/parser']
  end

  it 'displays pages from most visited to least visited' do
    pages_visited
    expect(webserver.display_page_visits()).to eq [["/about", 7], ["/home", 5], ["/index", 3]]
  end

  it 'displays unique page views after one session' do
    pages_visited
    expect(webserver.display_unique_views()).to eq ["/home 1 unique views", "/index 1 unique views", "/about 1 unique views"]
  end

end