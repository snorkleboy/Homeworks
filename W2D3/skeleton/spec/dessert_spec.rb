require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:dessert) {Dessert.new("type",1,chef)}
  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("type")
    end
    it "sets a quantity" do
    expect(dessert.quantity).to eq(1)
    end

    it "starts ingredients as an empty array" do
    expect(dessert.ingredients).to eq([])
    end
    it "raises an argument error when given a non-integer  quantity" do
       expect{Dessert.new("test","Invalid",chef)}.to raise_error(ArgumentError)

    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("ingredient")
      expect(dessert.ingredients).to include("ingredient")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      dessert.add_ingredient("4")
      dessert.add_ingredient("3")
      dessert.add_ingredient("1")
      dessert.add_ingredient("2")
      temp=dessert.ingredients.dup
      dessert.mix!
      expect(dessert.ingredients).to_not eq(temp)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      temp=dessert.quantity
      dessert.eat(1)
      expect(dessert.quantity).to eq(temp-1)
    end

    it "raises an error if the amount is greater than the quantity" do
      temp=dessert.quantity+1
      expect{dessert.eat(temp)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("name 2name")
      expect(dessert.serve).to include ("name 2name")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more

    end

  end
end
