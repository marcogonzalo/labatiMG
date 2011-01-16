Given /^an article with the title "([^"]*)"$/ do |titulo|
  @articles = Article.create!(:title => titulo)
end

When /^I am on the articles page$/ do
  visit articles_path
end

Then /^I should see "([^"]*)"$/ do |titulo|
  @articles.title.should == titulo
end

