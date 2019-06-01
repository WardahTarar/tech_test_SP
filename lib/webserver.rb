class WebServer
  attr_reader :logs

  def initialize
    @logs = []
    @session = false
  end

  def receive_log(log)
    @session = true
    @logs.push(log)
  end

  def display_page_visits
    @logs.each_with_object(Hash.new(0)) { |page, visit| 
      visit[page] += 1 
    }.sort
  end

  def display_unique_views
    counter = 1
      @logs.each do |log|
          log << " #{counter} unique views"
      end
    @logs.uniq
  end

end