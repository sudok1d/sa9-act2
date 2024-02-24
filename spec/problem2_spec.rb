require 'problem2.rb'

RSpec.describe TodoList do
  describe "#add" do
    it "adds a todo to the list" do
      list = TodoList.new
      expect(list.add('wash dishes')).to eq(['wash dishes'])
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      list = TodoList.new
      chore = 'wash dishes'
      list.add(chore)
      list.remove(chore)
      expect(list.todos).not_to include(chore)
    end
  end

  describe "#todos" do
    it "returns all todos" do
      list = TodoList.new
      chores = ['wash dishes', 'buy groceries', 'clean bathroom']
      chores.each {|chore| list.add(chore)}
      expect(list.todos).to eq(chores.each {|chore| chore})
    end
  end
end
