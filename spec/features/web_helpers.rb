

def sign_in_and_play
  visit('/')
  fill_in :playerone, with: 'Johnny'
  fill_in :playertwo, with: 'Rosie'
  click_button 'Submit'
end 
