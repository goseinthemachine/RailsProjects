class CreateAssetTypeOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :asset_type_options do |t|
      t.string :field_name
      t.string :field_type
      t.references :asset_type, foreign_key: true      

      t.timestamps
    end
  end
end
