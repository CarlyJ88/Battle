feature 'attack player two' do
  scenario 'player1 attacks player 2' do
  sign_in_and_play
  click_link 'Attack'
  expect(page).to have_content 'Carly has been attacked!'
  end
end
