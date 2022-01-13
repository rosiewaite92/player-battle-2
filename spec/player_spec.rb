require 'player'

describe Player do 

  it 'returns its name' do 
    player = Player.new('rosie')
    expect(player.name).to eq 'rosie'
  end 

end 