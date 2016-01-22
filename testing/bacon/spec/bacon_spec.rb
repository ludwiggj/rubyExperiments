require "bacon"

RSpec.describe Bacon do
	it "is edible" do
		expect(Bacon.edible?).to be(true)
	end
	
	it "is still edible" do
		expect(Bacon).to be_edible
	end
	
	it "is still edible as an object" do
		expect(Bacon.new).to be_edible
	end

	it "can expire" do
		bacon = Bacon.new
		bacon.expired!
		expect(bacon).to_not be_edible
	end
end
