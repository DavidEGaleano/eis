Given(/^un operando es (\d+)$/) do |arg1|
  visit 'calculadora'
  fill_in 'operando_1', with: arg1.to_i
end

Given(/^otro operando es (\d+)$/) do |arg1|
  fill_in 'operando_2', with: arg1.to_i
end

When(/^los sumo$/) do
  click_button('Sumar')
end

Then(/^el resultado es (\d+)$/) do |arg1|
  expect(page).to have_content('Resultado: ' + arg1)
end

When(/^los resto$/) do
  click_button('Restar')
end

When(/^los promedio$/) do
  click_button('Promediar')
end


