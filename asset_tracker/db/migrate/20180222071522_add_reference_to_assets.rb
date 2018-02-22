class AddReferenceToAssets < ActiveRecord::Migration[5.1]
  def change
    add_reference :assets, :asset_type, foreign_key: true
  end
end
