require 'piggy_bank'

describe PiggyBank do
  # let(:piggy_bank) { PiggyBank.new }

  describe 'add coins' do
    it 'add coins into the piggy bank' do
      piggy_bank = PiggyBank.new
      piggy_bank.add_coins(5)
      expect(piggy_bank.coins).to eq (5)
    end
  end

  describe 'clinging' do
    it 'there is money so it clings' do
      piggy_bank = PiggyBank.new
      piggy_bank.add_coins(5)
      piggy_bank.cling?
      expect(piggy_bank.cling?).to eq (true)
    end
  end

  describe 'break the piggy' do
    it 'break the piggy bank and reset to 0' do
      piggy_bank = PiggyBank.new
      piggy_bank.break_piggy
      expect(piggy_bank.coins).to eq (0)
    end
  end

  describe 'get coins' do
    it 'break the piggy bank and get all coins' do
      piggy_bank = PiggyBank.new
      piggy_bank.add_coins(5)
      stored_coins = piggy_bank.break_piggy
      expect(stored_coins).to eq (5)
    end
  end
end