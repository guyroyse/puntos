class CalculatorPage
  def initialize(browser)
    @browser = browser
  end
  def visit
    @browser.goto 'http://localhost:4567/calculator.html'
  end
  def set_field(id, value)
    @browser.text_field(:id, id).set(value)
  end
  def calculate
    @browser.button(:id, 'calculate').click
  end
  def points
    @browser.span(:id, 'points').text
  end
end