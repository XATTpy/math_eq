class ValueValidator < ActiveModel::Validator
    def validate(record)
        if (record.a > 0 and record.b > 0) or (record.a < 0 and record.b < 0)
            record.errors[:name] << 'One of the arguments must be negative'
        end
    end
end


class Quadratic < Equation
    include ActiveModel::Validations
    validates_with ValueValidator, on: :update

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
