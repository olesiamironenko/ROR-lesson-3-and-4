class Sum1
    attr_accessor :total

    def initialize(n1, n2)
        @total = n1 + n2
    end
end

class Sum2
    def initialize(a, b)
        @a = a
        @b = b
    end

    def new_total
        @a + @b
    end
end

sum_1 = Sum1.new(5, 6)
sum_2 = Sum2.new(5, 6)
puts sum_1.total
puts sum_2.new_total