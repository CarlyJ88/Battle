feature 'attack player two' do
  scenario 'player1 attacks player2' do
  sign_in_and_play
  click_link 'Attack'
  expect(page).to have_content 'Carly has been attacked!'
  end
end

feature 'attack player two' do
  scenario 'player2 attacks player1' do
  sign_in_and_play
  click_link 'Attack'
  click_link 'OK'
  click_link 'Attack'
  expect(page).to have_content 'Simon has been attacked!'
  end
end