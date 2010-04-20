Given /^the english (.*)$/ do |english|
  @result = Morse.translate(english)
end

Then /^I should get the result (.*)$/ do |morse|
  @result.should == morse
end

Given /^the morse (.*)$/ do |morse|
  @result = Morse.translate(morse)
end

Then /^I should get the english result (.*)$/ do |english|
  @result.should == english
end

When /^I translate it into .*/ do
end
