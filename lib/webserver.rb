class WebServer
  attr_reader :logs

  def initialize
    @logs = []
  end

  def receive_log(log)
    @logs.push(log)
  end

  def display_page_visits
    @logs.each_with_object(Hash.new(0)) { |page, visit| 
      visit[page] += 1 
    }.sort
  end

end