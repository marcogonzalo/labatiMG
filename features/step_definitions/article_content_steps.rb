Given /^an article with the title "([^"]*)" and the content "([^"]*)"$/ do |titulo, contenido|
  @article = Article.create!(:title => titulo, :content => contenido)
end

When /^I follow "([^"]*)"$/ do |titulo_enlace|
  click_link(titulo_enlace)
end

