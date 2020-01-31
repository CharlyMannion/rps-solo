feature 'User chooses rock as a weapon' do
  before do
    sign_in_choose_rock
  end
  scenario 'choosing rock' do
    expect(page).to have_content('You chose rock')
  end
  scenario 'seeing the computer choice' do
    expect(page).to have_content('The computer chose')
  end
  scenario 'seeing the result' do
    expect(page).to have_content('You')
  end
end
