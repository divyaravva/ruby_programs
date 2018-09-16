class A

	def public_method
		puts "it's public method."
	end

	protected

	def protected_method
		puts "it's protected method."
	end

	private

	def private_method
		puts "it's private method."
	end

end


class B < A

	def public_method_in_b
		b = B.new
		b.public_method
		b.protected_method
		b.private_method
	end
end

res = B.new
res.public_method_in_b