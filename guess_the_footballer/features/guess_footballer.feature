Feature: Guessing Biography
  In order to guess the footballer
  Visitors to the guess page
  Should be able to try to guess the footballer

  Scenario: View
    Given I browse to the biography guess page for "John Barnes"
    Then I should see his redacted biography
		And I should see a text field
		When I submit "John Barnes"
		Then I should see his unredacted biography
		And I should see "You got it right, well done!"
		
		
		
		