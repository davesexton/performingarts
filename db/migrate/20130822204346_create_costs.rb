class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.string :description
      t.integer :half_term_price
      t.integer :full_term_price

      t.timestamps
    end
  end
end
