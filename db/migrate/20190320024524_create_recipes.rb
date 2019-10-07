class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title, index: true
      t.integer :prep_time
      t.integer :cook_time
      t.integer :classification, index: true
      t.integer :protein_type, index: true
      t.integer :cooking_method, index: true

      t.timestamps
    end
  end
end
