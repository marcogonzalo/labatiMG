Given /^an article with the title "([^"]*)"$/ do |titulo|
  @article = Article.create!(:title => titulo)
end

When /^I am on the articles page$/ do
  visit articles_path
end

Then /^I should see "([^"]*)"$/ do |texto|
  response.should contain(texto)
end

