# fill_in('Player One', with: 'Rosie')
# fill_in('Player Two', with: 'Alex')

feature 'Enter player names' do
  scenario 'should request names for 2 players and retun them to page' do
    visit('/')
    find_field('playerone').value
    find_field('playertwo').value
    
  end
end

