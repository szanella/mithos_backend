class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :description
      t.float :price

      t.timestamps null: false
    end
  end
end
