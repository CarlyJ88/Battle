feature 'Input user name' do
  scenario 'can add names' do
    visit ('/')
  fill_in "player1", :with => "Simon"
  fill_in "player2", :with => "Carly"
  click_button "Let's play!"

  # expect(page).to have_text("Simon")
  # expect(page).to have_text("Carly")
  expect(page).to have_content 'Player one: Simon Vs. Player two: Carly'
end
end