module CommonCode

	def self.included(base)
		base.extend ClassMethods
		base.send :include, InstanceMethods
	end

	module ClassMethods

		def get_class
			puts self
		end

	end


	module InstanceMethods

		def get_instance
			puts self
		end
	end
end


module ToolBox

	class Ruler
		include CommonCode
		attr_accessor :length
	end
end

	module Country
		class Ruler
		include CommonCode
		attr_accessor :name
	end
end

ToolBox::Ruler.get_class
ToolBox::Ruler.new.get_instance
Country::Ruler.get_class
Country::Ruler.new.get_instance