class Asset < ApplicationRecord
    has_and_belongs_to_many(:assets,
        :join_table => "asset_assets",
        :foreign_key => "asset_a_id",
        :association_foreign_key => "asset_b_id")
    belongs_to :asset_type, foreign_key: 'asset_type_id'
end