feature 'see player two hit points' do
  scenario 'has 60 HP' do
    visit ('/')
    fill_in :player1, with: 'simon'
    fill_in :player2, with: 'carly'
    click_button "Let's play!"
  expect(page).to have_content 'carly: 60 HP'
end
end