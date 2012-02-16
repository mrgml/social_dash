Then /^I should be prompted to supply a username$/ do
  step %Q{I should see "Please enter a username (so we can keep score):" within "label[for=username]"}
end

Then /^there should be a text field$/ do
  step %Q{I should see "" within "input[id=username]"}
end



