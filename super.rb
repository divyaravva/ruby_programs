class Parent

	def try_this()
		puts "parent"
	end
end


class Child < Parent

	def try_this()
		super()
		puts "child"
	end
end

ch = Child.new
ch.try_this()


class Parent

	def knox
		puts "parent"
	end
end

class Child < Parent

	alias_method :parent_knox, :knox

	def knox
		puts "child"
	end
end

ch = Child.new
ch.parent_knox
ch.knox