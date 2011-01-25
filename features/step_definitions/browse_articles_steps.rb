Given /^an article with the title "([^"]*)"$/ do |titulo|
  @articles = Article.create!(:title => titulo)
end

Given /^an article with the title "([^"]*)" and the content "([^"]*)"$/ do |titulo, contenido|
  @article = Article.create!(:title => titulo, :content => contenido)
end

