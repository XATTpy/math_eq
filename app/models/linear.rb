class Linear < Equation
    before_create do
        self.form = 'ax + b = 0'
    end
end
