class CreateConflicts < ActiveRecord::Migration[5.0]
  def change
    create_table :conflicts do |t|
      t.text :reason
      t.boolean :strict

      t.timestamps
    end
  end
end
