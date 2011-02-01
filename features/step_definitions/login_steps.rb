Given /^I am an authenticated user$/ do  
  email = "prueba@prueba.com"
  password = "prueba"
  
  Admin.new(:email => email,
           :password => password,
           :password_confirmation => password).save!

  And %{I go to login}
  And %{I fill in "admin_email" with "#{email}"}
  And %{I fill in "admin_password" with "#{password}"}
  And %{I press "Sign in"}
end

Given /^I am not authenticated$/ do
  visit('/admins/sign_out')
end

#When /^I try to delete the article with the title "([^"]*)"$/ do |arg1|
#  @article = Article.find_by_title(arg1)
#  delete article_path(@article)
#end

#Then /^I should be redirected to login page$/ do
#  page.status.should == 301
#end

