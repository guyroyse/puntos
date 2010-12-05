class CalculatorPage
  attr_writer :protein, :carbs, :fat, :fiber
  def initialize(browser)
    @browser = browser
  end
  def visit
    @browser.goto 'http://localhost:4567/calculator.html'
  end
  def points
    (16 * @protein.to_f + 19 * @carbs.to_f + 45 * @fat.to_f - 14 * @fiber.to_f) / 175
  end
end