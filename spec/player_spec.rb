require 'player'
describe Player do
  subject(:player1) { Player.new('Carly') }
  describe '#name' do
    it 'should return a name' do
      expect(subject.name).to eq 'Carly'
    end
  end
end