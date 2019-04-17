feature 'see player two hit points' do
  scenario 'has 60 HP' do
  sign_in_and_play
  expect(page).to have_content 'Carly: 60 HP'
  end
end
