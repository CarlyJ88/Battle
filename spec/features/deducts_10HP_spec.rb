feature 'deducts 10 HP from player two' do
  scenario 'player1 attacks player2' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Carly: 60 HP'
    expect(page).to have_content 'Carly: 50 HP'
  end
end