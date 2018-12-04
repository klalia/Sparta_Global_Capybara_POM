require 'capybara/dsl'
#domain specific language
#capybara is extended seleninum (sits on top of selenium)

class BbcHomepage

  # page objects
  # constants are in caps in ruby
  HOMEPAGE = 'https://www.bbc.co.uk'
  SIGN_IN_LINK_ID = '#idcta-link'

  def initialize
    Capybara.register_driver(:chrome) do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end

    @driver = Capybara::Session.new(:chrome)
  end

  def visit_homepage
    @driver.visit(HOMEPAGE)
  end

  def click_sign_in_link
    @driver.find(SIGN_IN_LINK_ID).click
  end

end
