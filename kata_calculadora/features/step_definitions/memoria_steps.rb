Given(/^no hice operaciones$/) do
  visit 'calculadora'
end

Then(/^la cantidad de operaciones es (\d+)$/) do |arg1|
  expect(page).to have_content('Cantidad de operaciones: ' + arg1)
end

Given(/^hago una suma$/) do
  fill_in 'operando_1', with: 1
  fill_in 'operando_2', with: 2
  click_button('Sumar')
end

Given(/^hago una resta$/) do
  fill_in 'operando_1', with: 1
  fill_in 'operando_2', with: 2
  click_button('Restar')
end

Given(/^reseteo la memoria$/) do
  click_button('Resetear Memoria')
end

Given(/^hago un promedio$/) do
  fill_in 'operando_1', with: 10
  fill_in 'operando_2', with: 2
  click_button('Promediar')
end

Given(/^una pagina de la calculadora$/) do
  visit 'calculadora'
end



