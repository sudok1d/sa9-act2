require 'problem3.rb'

RSpec.describe StringWrapper do
  describe "#reverse" do
    it "reverses the string" do
      string = StringWrapper.new('Hello')
      expect(string.reverse).to eq('olleH')
    end
  end
  describe "#upcase" do
    it "converts the string to uppercase" do
      string = StringWrapper.new('hello')
      expect(string.upcase).to eq('HELLO')
    end
  end
  describe "#downcase" do
    it "converts the string to lowercase" do
      string = StringWrapper.new('HELLO')
      expect(string.downcase).to eq('hello')
    end
  end
end
