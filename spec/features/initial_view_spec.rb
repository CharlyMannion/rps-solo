feature 'Picking a weapon' do
  scenario 'can run app and check page content' do
    visit('/choose_weapon')
    expect(page).to have_content 'Choose your weapon!'
  end
end
