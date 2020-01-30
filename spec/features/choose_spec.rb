feature 'Choosing a weapon' do
  scenario 'choosing rock' do
    visit('/choose_weapon')
    fill_in 'user_choice', with: 'rock'
    click_button "Submit"
    expect(page).to have_content('You chose rock')
  end
end
