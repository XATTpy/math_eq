class CreateEquations < ActiveRecord::Migration[5.2]
  def change
    create_table :equations do |t|
      t.string :type
      t.string :form
      t.float :a
      t.float :b
      t.float :result

      t.timestamps
    end
  end
end
