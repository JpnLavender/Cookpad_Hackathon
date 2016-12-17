class CreateMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :materials do |t|
      t.string :material
      t.string :quantity

      t.timestamps
    end
  end
end
