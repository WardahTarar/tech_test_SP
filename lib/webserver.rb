class WebServer
  attr_reader :logs

  def initialize
    @logs = []
    @session = false
    @counter = 0
  end

  def receive_log(log)
    turn_on_session
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
    turn_off_session
    unique_views.uniq
  end

  private

  def turn_on_session
    @session = true
  end

  def turn_off_session
    @session = false
  end

end