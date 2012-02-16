Given /^I browse to the biography guess page for "([^"]*)"$/ do |name|
  @biography = Biography.find_by_name(name)
  visit biography_path(@biography.id)
end


Then /^I should see his redacted biography$/ do
  redacted_biography = @biography.redacted_bio.slice(0,99) # TODO: find out why a string with /n's in it makes cucumber think there is a new step
  step %Q{I should see "#{redacted_biography}" within "p"}
end