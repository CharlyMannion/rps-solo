feature 'Choosing a weapon' do
  scenario 'choosing rock' do
    visit('/choose_weapon')
    click_button "Submit"
    expect(page).to have_content('You chose Rock')
  end
end
