def sign_in_choose_rock
  visit('/choose_weapon')
  fill_in 'user_choice', with: 'rock'
  click_button "Submit"
end
