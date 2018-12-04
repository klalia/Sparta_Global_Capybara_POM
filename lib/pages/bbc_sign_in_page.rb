require 'capybara/dsl'

class BbcSignInPage

  include Capybara::DSL

  SIGN_IN_PAGE_URL = 'https://www.bbc.co.uk/signin'
  SIGN_IN_BUTTON = '#submit-button'
  USERNAME_VALUE = 'user-identifier-input'
  PASSWORD_VALUE = 'password-input'
  SOMETHINGS_MISSING_ERROR_MESSAGE = '#form-message-username'
  DETAILS_DONT_MATCH_ERROR_MESSAGE = '#form-message-general'
  USERNAME_ERROR_MESSAGE = '#form-message-username'

  def visit_sign_in_page
    visit(SIGN_IN_PAGE_URL)
  end

  def click_sign_in_button
    find(SIGN_IN_BUTTON).click
  end

  def get_somethings_missing_error_message
    find(SOMETHINGS_MISSING_ERROR_MESSAGE).text
  end

  def get_details_dont_match_error_message
    find(DETAILS_DONT_MATCH_ERROR_MESSAGE).text
  end

  def get_username_error_message
    find(USERNAME_ERROR_MESSAGE).text
  end

  def input_invalid_username
    fill_in(USERNAME_VALUE, :with => 'Keerat')
  end

  def input_invalid_character_username
    fill_in(USERNAME_VALUE, :with => 'Keerat!')
  end

  def get_invalid_username
    find_field(USERNAME_VALUE)
  end

  def input_password
    fill_in(PASSWORD_VALUE, :with => '1Direction')
  end

end
