class Wizard

	attr_reader :name,
							:bearded,
							#:cast_count #do I need this here? returning nil in pry...

	def initialize(name, bearded: true)
			@name = name
			@bearded = bearded
			@cast_count = 0
	end

	def bearded?
			@bearded
	end 

	def incantation(string)
		"sudo #{string}"
	end

	def rested? 
		if @cast_count < 3 
			true
			else false
		end
	end

	def cast
		@cast_count += 1
		"MAGIC MISSILE!"
	end

end