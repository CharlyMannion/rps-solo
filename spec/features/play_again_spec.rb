feature 'Play again' do
  scenario 'choosing rock' do
    visit('/choose_weapon')
    fill_in 'user_choice', with: 'rock'
    click_button "Submit"
    click_button "Play Again"
    expect(page).to have_content("Choose your weapon!")
  end
end
