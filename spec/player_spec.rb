require 'player'

describe Player do 
	let(:player) {Player.new("Kevin")}
	it "has a name" do
		expect(player.name).to eq"Kevin"
	end

	it "can make a pick" do 
		player.picks = "rock"
		expect(player.pick).to eq("rock")
	end




end
