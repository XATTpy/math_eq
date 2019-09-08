class Quadratic < Equation
    before_create do
        self.form = 'ax^2 + b = 0'
    end

    after_update do
        self.result = get_result(self.a, self.b)
    end

    def get_result(a, b)
        result = Math.sqrt(-b/a)
    end
end
