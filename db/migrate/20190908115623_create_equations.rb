class CreateEquations < ActiveRecord::Migration[5.2]
  def change
    create_table :equations do |t|
      t.string :type
      t.string :form
      t.float :a
      t.float :b

      t.timestamps
    end
  end
end


class CreateLinearEquations < CreateEquations
  def change
    change_column :equations, :form, :default => "ax + b = 0"
  end
end


class CreateLinearEquations < CreateEquations
  def change
    change_column :equations, :form, :default => "ax^2 + b = 0"
  end
end
