Feature: Playing
	In order to play Rock Paper Scissors
	As a player
	I need to get two players


	Scenario: A player can register
		Given I am on the new-game page
		And I enter my name as "Kevin"
		And I press "play!"
		Then I should be ready to play


	Scenario: A player is playing
		Given I've registered to play
		When I choose paper
		Then I should get to the outcome page
		And see a button that says "new game"


	Scenario: A player restarts the game
		Given I've registered to play as "Kevin"
		And press "play!"
		When I choose paper
		And get to the outcome page
		And see a button that says "new game"
		And click the "new game" button
		Then get to the register page
		And I should see "welcome Kevin!"