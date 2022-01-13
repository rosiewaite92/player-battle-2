# fill_in('Player One', with: 'Rosie')
# fill_in('Player Two', with: 'Alex')

feature 'Enter player names' do
  scenario 'should request names for 2 players and retun them to page' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Johnny and Rosie to battleships!' 
  end
end

feature 'hit points'do 
scenario 'should be able to view players twos hit points' do 
  sign_in_and_play
  expect(page).to have_content 'Rosie points = 100'
  end  
end 

feature 'attack 'do 
scenario 'Player 1 attack player 2' do 
  sign_in_and_play
  click_button('attack')
  expect(page).to have_content 'Johnny has attacked Rosie!'
  end  
end 