class DemoClass
	@@my_var = nil

	def initialize
		@@my_var = "hello world"
	end

	def my_var
		puts @@my_var
	end

end

class Demo2Class < DemoClass

	def initialize
		@@my_var = "good bye world"
	end
end

demo1 = DemoClass.new
demo1.my_var

demo2 = Demo2Class.new
demo2.my_var

demo1.my_var