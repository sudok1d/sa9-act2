require 'problem4.rb'

RSpec.describe BankAccount do
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      account = BankAccount.new
      expect(account.deposit(300)).to eq(300)
    end
  end
  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are
  available" do
      account = BankAccount.new
      account.deposit(300)
      expect(account.withdraw(300)).to eq(0)
    end
    it "does not change the balance if insufficient funds" do
      account = BankAccount.new
      account.withdraw(300)
      expect(account.balance).to eq(0)
    end
  end
  describe "#balance" do
    it "returns the current balance" do
      account = BankAccount.new(300)
      expect(account.balance).to eq(300)
    end
  end
end
