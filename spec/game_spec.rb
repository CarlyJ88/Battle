require 'game'
describe Game do

  describe '#attack' do

    it 'damages the player' do

      player = double :player
      expect(player).to receive(:receive_damage)
      subject.attack(player)
    end
  end
end