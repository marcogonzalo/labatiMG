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

