class Initial < ActiveRecord::Migration[5.1]
  def change
    create_table :asset_types do |t|
      t.string :type_name
    end

    create_table :assets do |t|
      t.string :name
      t.references :asset_type
    end
    
    create_table "asset_assets", :force => true, :id => false do |t|
      t.integer "asset_a_id", :null => false
      t.integer "asset_b_id", :null => false
    end
  end
end
