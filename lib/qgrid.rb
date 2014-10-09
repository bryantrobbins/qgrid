class QGrid
	def self.hi
		puts "Hello world!"
	end
	def self.setup
		puts "Creating setup VM"
		`vagrant up`
	end
end
