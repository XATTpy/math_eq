class Equation
    attr_accessor :a, :b

    def initialize(attributes = {})
        @a = attributes[:a]
        @b = attributes[:b]
    end

    def self.equation_types
        [Linear, Quadratic]
    end

    def self.create(type_index)
        return equation_types[type_index].new
    end

    def get_form
    end

    def get_result
    end
end


class Linear < Equation
    def get_form
        'ax + b = 0'
    end

    def get_result
        -@b/@a
    end
end


class Quadratic < Equation
    def get_form
        'ax^2 + b = 0'
    end

    def get_result
        Math.sqrt(-b/a)
    end
end
