class CreatePropagationMethods < ActiveRecord::Migration[7.2]
  def change
    create_table :propagation_methods do |t|
      t.references :plant, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
