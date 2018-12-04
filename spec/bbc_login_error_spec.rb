require 'spec_helper'

describe 'Incorrect user details produces valid error' do

  context 'it should respond with the correct error when incorrect details are put' do

    it "should produce an error when inputting no username" do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_sign_in_page.click_sign_in_button
      expect(@bbc_site.bbc_sign_in_page.get_somethings_missing_error_message).to eq "Something's missing. Please check and try again."
      sleep 2
    end

    it "should produce an error when inputting an invalid username" do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_sign_in_page.click_sign_in_button
      @bbc_site.bbc_sign_in_page.input_invalid_username
      @bbc_site.bbc_sign_in_page.click_sign_in_button
      expect(@bbc_site.bbc_sign_in_page.get_details_dont_match_error_message).to eq "Sorry, those details don't match. Check you've typed them correctly."
      sleep 2
    end

    it "should produce an error when inputting a valid password but invalid username" do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_sign_in_page.click_sign_in_button
      @bbc_site.bbc_sign_in_page.get_invalid_username
      @bbc_site.bbc_sign_in_page.input_password
      @bbc_site.bbc_sign_in_page.click_sign_in_button
      expect(@bbc_site.bbc_sign_in_page.get_username_error_message).to eq "Sorry, we can’t find an account with that username. If you're over 13, try your email address instead or get help here."
      sleep 2
    end

    it "should produce an error when entering a username with an invalid character" do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_sign_in_page.visit_sign_in_page
      @bbc_site.bbc_sign_in_page.input_invalid_character_username
      @bbc_site.bbc_sign_in_page.click_sign_in_button
      expect(@bbc_site.bbc_sign_in_page.get_username_error_message).to eq "Usernames can only include... Letters, numbers and these characters: ?/|}{+=_-^~`%$#"
      sleep 2
    end

  end

end
