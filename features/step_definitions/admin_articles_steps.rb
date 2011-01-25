Given /^there is no article with the title "([^"]*)"$/ do |titulo|
  Article.find_by_title(titulo) == nil
end

Then /^I should see "([^"]*)" on the articles list$/ do |arg1|
  page.should have_content(arg1)
end

Then /^I should not see "([^"]*)" on the articles list$/ do |arg1|
  page.should_not have_content(arg1)
end
