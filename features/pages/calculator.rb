class CalculatorPage
  def initialize(browser)
    @browser = browser
  end
  def visit
    @browser.goto 'http://localhost:4567/calculator.html'
  end
  def protein=(value)
    @browser.text_field(:id, 'protein').value = value
  end
  def carbs=(value)
    @browser.text_field(:id, 'carbs').value = value
  end
  def fat=(value)
    @browser.text_field(:id, 'fat').value = value
  end
  def fiber=(value)
    @browser.text_field(:id, 'fiber').value = value
  end
  def points
    (16 * @protein.to_f + 19 * @carbs.to_f + 45 * @fat.to_f - 14 * @fiber.to_f) / 175
  end
end