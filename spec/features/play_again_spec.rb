feature 'Play again' do
  scenario 'choosing rock' do
    sign_in_choose_rock
    click_button "Play Again"
    expect(page).to have_content("Choose your weapon!")
  end
end
