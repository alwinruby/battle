require 'game'

describe Game do

  subject(:game) { described_class.new(john, pete) }
  let(:john) { double 'John' }
  let(:pete) { double 'Pete' }

  describe "#attack" do
    it "player 1 attacks player 2" do
      expect(john).to receive(:damage_received)
      game.attack(john)
    end
  end

  describe "#game_over?" do
    
    expect(subject.game_over?).to eq true
  end

end
