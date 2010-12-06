class CalculatorPage
  def initialize(browser)
    @browser = browser
  end
  def visit
    @browser.goto 'http://localhost:4567/calculator.html'
  end
  def set_field(id, value)
    @browser.text_field(:id, id).value = value
  end
  def points
    @browser.div(:id, 'points').text
  end
end