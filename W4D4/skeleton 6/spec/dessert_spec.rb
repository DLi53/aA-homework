require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef",name: 'Dan') }
  let(:p) { Dessert.new('pudding',5,chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(p.type).to eq('pudding') 
    end

    it "sets a quantity" do
      expect(p.quantity).to eq(5)
    end

    it "starts ingredients as an empty array" do
      expect(p.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new('waffle','ten',chef)}.to raise_error
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      p.add_ingredient('mango')
      expect(p.ingredients).to include('mango')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      p.add_ingredient('mango1')
      p.add_ingredient('mango2')
      p.add_ingredient('mango3')
      pud = p.ingredients.dup
      p.mix!
      expect(p.ingredients).not_to eq(pud)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      p.eat(1)
      expect(p.quantity).to eq(4)
    end

    it "raises an error if the amount is greater than the quantity" do
    expect{p.eat(50)}.to raise_error
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return ("Chef Dan the Great Baker")
      expect(p.serve). to eq("Chef Dan the Great Baker has made 5 puddings!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
        expect(chef).to receive(:bake).with(p)
        p.make_more
    end
  end
end
