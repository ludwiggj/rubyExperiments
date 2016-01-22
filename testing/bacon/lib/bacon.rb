class Bacon

	attr_accessor :expired
	
	def self.edible?
		true
	end
	
	def edible?
		!expired	
	end
	
	def expired!
		# This doesn't work as it defines new variable...
		#
		# expired = true
		
		# I prefer this
		@expired = true
		
		# to this...
		# 
		# self.expired = true
	end

end
