class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.references :customer, index: true
      t.references :service, index: true
      t.date :date
      t.string :notes

      t.timestamps null: false
    end
    add_foreign_key :performances, :customers
    add_foreign_key :performances, :services
  end
end
