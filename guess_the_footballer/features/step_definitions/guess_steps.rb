Given /^I browse to the biography guess page for "([^"]*)"$/ do |name|
  @biography = Biography.find_by_name(name)
  visit edit_biography_path(@biography.id)
end

# TODO: find out why a string with /n's in it makes cucumber think there is a new step  
Then /^I should see his redacted biography$/ do
  redacted_biography = @biography.redacted_bio.slice(0,99) 
  step %Q{I should see "#{redacted_biography}" within "div.bio/p"}
end

Then /^I should see a text field$/ do
  step %Q{I should see "" within "input[id=biography_name]"}
end

When /^I submit "([^"]*)"$/ do |arg1|
  @guess = arg1
  fill_in "biography_name", :with => @guess
  click_button "Guess >>"
end

Then /^I should see his unredacted biography$/ do
  bio = @biography.bio.slice(0,99) 
  step %Q{I should see "#{bio}" within "div.bio/p"}
end
