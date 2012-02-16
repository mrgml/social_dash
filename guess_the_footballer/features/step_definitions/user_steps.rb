Then /^I should be prompted to supply a username$/ do
  step %Q{I should see "Please enter a username (so we can keep score):" within "label[for=user_user]"}
end

Then /^there should be a text field$/ do
  step %Q{I should see "" within "input[id=user_username]"}
end

When /^I submit the username "([^"]*)"$/ do |arg1|
  @username = arg1
  fill_in "user_username", :with => @username
  click_button "Play!"
end

Then /^a new user should be created with that username$/ do
  created_user = User.find_by_username(@username)
  created_user.should_not be_nil
end

Then /^I should be forwarded to the biographies page$/ do
  current_path = URI.parse(current_url).path
  current_path.match("biographies").should_not be_nil
end

