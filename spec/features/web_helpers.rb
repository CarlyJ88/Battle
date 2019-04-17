def sign_in_and_play
  visit('/')
  fill_in "player1", :with => "Simon"
  fill_in "player2", :with => "Carly"
  click_button "Let's play!"
end
