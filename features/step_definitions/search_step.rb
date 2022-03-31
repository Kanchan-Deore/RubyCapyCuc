require 'capybara'
Given('I am on the Google homepage') do
  visit 'https://www.google.com'
end

When('I will type the text {string}') do |string|
  fill_in('q', :with => string)
end

When('I will click on the search button') do
  click_button('btnK')
end

Then('I should see {string} on the Page') do |string|
  page.has_content?('Red Hat')
end


