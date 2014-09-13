# When(/^I click "(.*?)"$/) do |arg1|
#   click_link arg1
# end

Given(/^I enter my name as "Kevin"$/) do
   fill_in "name", with: "Kevin"
end

Then(/^I should be ready to play$/) do
  expect(page).to have_content("welcome Kevin")
end

Given(/^I've registered to play$/) do
  visit '/new-game'
  click_button "play!"
end

When(/^I choose paper$/) do
  click_button('paper')
end

Then(/^I should get to the outcome page$/) do
	expect(page).to have_content("results")
end

And(/^see a button that says "new game"$/) do
	expect(page).to have_button("new game")
end

Given(/^I've registered to play as "Kevin"$/) do
	visit '/new-game'
	fill_in "name", with: "Kevin"
end

And(/^get to the outcome page$/) do
	expect(page).to have_content("results")
end

And(/^click the "new game" button$/) do 
	click_button('new game')
end

Then(/^get to the register page$/) do
	visit '/register'
end

Then(/^I should return to the register page$/) do
	visit '/register'
end

Then(/^I should get to the register page$/) do
	expect(page).to have_content("welcome Kevin!")
end
