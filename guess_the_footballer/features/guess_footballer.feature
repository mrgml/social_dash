Feature: Guessing Biography
  In order to guess the footballer
  Visitors to the guess page
  Should be able to try to guess the footballer

  Scenario: View
    Given I browse to the biography guess page for "John Barnes"
    Then I should see his redacted biography
		And there should be a text field
		When I input "John Barnes"
		Then I should see the unredacted biography for "John Barnes"
		And I should see "Well Done!  You got it right!"
		
		
		
		