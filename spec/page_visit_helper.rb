def pages_visited 
  5.times { webserver.receive_log('/home')}
  3.times { webserver.receive_log('/index')}
  7.times { webserver.receive_log('/about')}
end