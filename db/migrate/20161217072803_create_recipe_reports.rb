class CreateRecipeReports < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_reports do |t|
      t.integer :recipe_id
      t.integer :report_id

      t.timestamps
    end
  end
end
