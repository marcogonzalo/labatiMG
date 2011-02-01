Feature: User authentication
  So that I am registered like user
  As an admin
  I want to sign in and sign out

  Scenario: Viewing list of articles (no authenticated)
    Given an article with the title "La respuesta a todas las preguntas"
    And I am not authenticated
    When I am on the articles page
    Then I should see "Ingresar"
    And I should not see "Editar"
    And I should not see "Eliminar"
    And I should not see "Agregar articulo"
   
  Scenario: Reading an article (no authenticated)
    Given an article with the title "Hello world!"
    And I am not authenticated
    And I am on the articles page
    When I follow "Hello world!"
    Then I should see "Hello world!"
    But I should not see "Editar"
    And I should not see "Eliminar"
  
  Scenario: Visiting edit article path (no authenticated)
    Given an article with the title "Hello world!"
    And I am not authenticated
    When I go to "Hello world!" edit page 
    Then I should be on login page
    And I should see "You need to sign in or sign up before continuing."
    
#  @wip  
#  Scenario: Visiting delete article path (no authenticated)
#    Given an article with the title "Hello world!"
#    And I am not authenticated
#    When I try to delete the article with the title "Hello world!"
#    Then I should be redirected to login page
    
  Scenario: Visiting new article path (no authenticated)
    Given I am not authenticated
    When I go to new article page
    Then I should be on login page
    And I should see "You need to sign in or sign up before continuing."
    
  Scenario: Signing in unsuccesfully
    Given I am not authenticated 
    When I follow "Ingresar"
    And I press "Sign in"
    Then I should see "Invalid email or password."
    
  Scenario: Signing out
    Given I am an authenticated user
    And I am on the articles page
    When I follow "Salir"
    Then I should see "Signed out successfully."
