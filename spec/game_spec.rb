require 'game' 

describe Game do 
	let(:player1) {double :player1, name: "Kevin"}
	let(:player2) {double :player1, name: "Steve"}
	let(:game){Game.new(player1, player2)}

	it "has two players" do
		expect(game.players).to eq [player1, player2]
	end

	context 'when playing' do

		it 'player one picks rock, player two picks scissors' do
			allow(player1).to receive(:pick).and_return("rock")
			allow(player2).to receive(:pick).and_return("scissors")
			expect(game.winner).to eq player1
		end

		it 'player one picks paper, player two picks scissors' do
			allow(player1).to receive(:pick).and_return("paper")
			allow(player2).to receive(:pick).and_return("scissors")
			expect(game.winner).to eq player2
		end

		it "player one picks paper, player two picks rock" do
			allow(player1).to receive(:pick).and_return("paper")
			allow(player2).to receive(:pick).and_return("rock")
			expect(game.winner).to eq player1
		end

		it "can be a draw" do
			allow(player1).to receive(:pick).and_return("paper")
			allow(player2).to receive(:pick).and_return("paper")
			expect(game.winner).to eq "draw"
		end

	end

end