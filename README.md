# Sparta_Global_Capybara_POM

This lab looks at capybara, which is an extension of selenium with more additional methods. Capybara is specific to the Ruby library and is used as an underlying web-based driver. It uses the capybara/dsl (Domain Specific Language) gem which describes actions that are executed by the underlying web driver. The web browser that this lab is based upon is the chrome web browser. It declares constants in the initialize method, which are defined in capitals in ruby. These constants link back to the id's and classes of that specific element on the web page.

This lab has been created in a POM (Page Object Model), which breaks done the pages of the website into pages and creates methods around the page and its data specific to that page. This abstracts the logic from our tests, making it easier when a page or the page data changes. A POM makes code more reusable and maintainable, with less repeated code and complex logic.

This model has tested all the potential tests for the username in the sign up page of the BBC website (https://www.bbc.co.uk/). It ensures that all potential errors messages are displayed when users enter invalid inputs for the username when signing up for an account. 
