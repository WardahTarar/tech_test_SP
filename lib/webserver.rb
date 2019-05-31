class WebServer
  attr_reader :logs

  def initialize
    @logs = []
  end

  def receive_log(log)
    @logs.push(log)
  end

end