class CreateAssetTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :asset_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
