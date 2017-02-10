class CreateProductConflicts < ActiveRecord::Migration[5.0]
  def change
    create_table :product_conflicts do |t|
      t.references :product, polymorphic: true, index: true
      t.references :conflict, foreign_key: true, index: true
    end
  end
end
