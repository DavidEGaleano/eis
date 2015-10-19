Given(/^un operando es (\d+)$/) do |arg1|
  visit 'calculadora'
  fill_in 'operando_1', with: arg1.to_i
end

Given(/^otro operando es (\d+)$/) do |arg1|
  fill_in 'operando_2', with: arg1.to_i
end

When(/^los sumo$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^el resultado es (\d+)$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
