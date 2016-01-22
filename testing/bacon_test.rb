require "minitest/autorun"

class Bacon
	def self.saved?
		nil	
	end
end

class BaconTest < Minitest::Test
	def test_saved
		assert Bacon.saved?, "Bacon not saved..."
	end
end
