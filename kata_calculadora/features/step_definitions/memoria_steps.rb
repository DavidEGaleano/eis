Given(/^no hice operaciones$/) do
  visit 'calculadora'
end

Then(/^la cantidad de operaciones es (\d+)$/) do |arg1|
  expect(page).to have_content('Cantidad de operaciones: 0')
end

Given(/^hago una suma$/) do
  visit 'calculadora'
  fill_in 'operando_1', with: 1
  fill_in 'operando_2', with: 2
  click_button('sumar')
end

Given(/^hago una resta$/) do
    visit 'calculadora'
  fill_in 'operando_1', with: 1
  fill_in 'operando_2', with: 2
  click_button('restar')
end

