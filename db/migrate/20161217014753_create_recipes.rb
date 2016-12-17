class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :catch_copy
      t.integer :people
      t.text :point
      t.text :rarly_life

      t.timestamps
    end
  end
end
