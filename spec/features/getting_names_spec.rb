feature 'Input user name' do
  scenario 'can add names' do
    sign_in_and_play
  # expect(page).to have_text("Simon")
  # expect(page).to have_text("Carly")
  expect(page).to have_content 'Player one: Simon Vs. Player two: Carly'
  end
end
