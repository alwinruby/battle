require 'player'

describe Player do
  subject(:john) { Player.new('John') }
  subject(:pete) { Player.new('Pete') }

  describe '#name' do
    it 'returns the name' do
      expect(john.name).to eq 'John'
    end
  end

  describe "#hit_points" do
    it 'returns the player default HP' do
     expect(pete.hit_points).to eq Player::DEFAULT_HITPOINTS
    end
  end

  describe "#damage received" do
    it "reduces the attacked player's hit points" do
      expect { john.damage_received }.to change { john.hit_points }.by(-described_class::HIT)
    end
  end

end
