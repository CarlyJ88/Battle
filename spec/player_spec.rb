require 'player'
describe Player do
  subject(:player1) { Player.new('Carly') }
  subject(:player2) { Player.new('Dom') }
  describe '#name' do
    it 'should return a name' do
      expect(player1.name).to eq 'Carly'
    end
  end

    describe '#hit_points' do
      it "reduces player two's HP" do
        expect(player2.hit_points).to eq 33
      end
    end
  end