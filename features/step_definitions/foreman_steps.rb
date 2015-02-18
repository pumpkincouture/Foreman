require 'apprentice'

Given(/^that I dont have any apprentices$/) do
  @apprentices = []
end

When(/^I add an apprentice with name: "(.*?)" and last name: "(.*?)"$/) do |name, last_name|
  args = {
    name: name,
    last_name: last_name
  }
  @apprentices << Apprentice.new(args)
end

Then(/^I should have (\d+) apprentice$/) do |amount|
  @apprentices.size == amount
end

Then(/^its name should be "(.*?)" and last name: "(.*?)"$/) do |name, last_name|
  apprentice = @apprentices.first
  apprentice.name == name
  apprentice.last_name == last_name
end
