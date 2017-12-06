Feature: Create a character as a guest
 As a guest you want to be able to design your
  character to your desire


Scenario: As a guest player I want to be a able to make my own Nord character
 Given I'm on the welcome page
 When I click on "Create as Guest" link
 Then I should be on the "New Character" page
 Then I choose(option: 'Nord' )
 Then I click "Create Character"
