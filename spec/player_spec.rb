require 'player'
describe Player do
  subject(:player1) { Player.new('Simon') }
  subject(:player2) { Player.new('Carly') }
  
  describe '#name' do
    it 'should return a name' do
      expect(player1.name).to eq 'Simon'
    end
  end

    describe '#hit_points' do
      it "returns the HP" do
        expect(player2.hit_points).to eq described_class::DEFAULT_HIT_POINTS
      end
    end

    describe '#receive_damage' do
      it 'reduces the players HP' do
        expect { player2.receive_damage }.to change { player2.hit_points}.by(-10)
      end
    end
  end