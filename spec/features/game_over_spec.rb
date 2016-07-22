feature 'Game Over' do

  context 'Player loses when reaches 0 HP' do
    before do
      sign_in_and_play
      click_button 'Attack'
      click_link 'OK'
      allow(Kernel).to receive(:rand).and_return(60)
    end

    scenario 'Player loses' do
      click_button 'Attack'
      # click_link 'OK'
      expect(page).to have_content 'Pete lost!'
    end
  end

end
