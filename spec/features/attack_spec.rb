feature 'Attacking' do

 scenario 'reduce Player 2 HP by 10 points' do
   sign_in_and_play
   click_button 'Attack'
   expect(page).to have_content('John attacked Pete')
 end

 scenario 'displays attaked player score' do
   sign_in_and_play
   click_button("Attack")
   click_link("OK")
   expect(page).not_to have_content('Pete: 60HP')
   expect(page).to have_content('Pete: 50HP')
 end

 scenario 'switches players' do
   sign_in_and_play
   click_button("Attack")
   click_link("OK")
   click_link("Switch")
   expect(page).to have_content("Pete attacks")
 end
end
