class WebServer
  attr_reader :logs

  def initialize
    @logs = []
    @session = false
    @counter = 0
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
    @counter += 1
    unique_views = @logs.map do |log|
      log + " #{@counter} unique views"
    end
    @session = false
    unique_views.uniq
  end

end