class CreateBusinessProfileCategories < ActiveRecord::Migration
  def change
    create_table :business_profile_categories do |t|
      t.references :category, index: true
      t.references :business_profile, index: true

      t.timestamps
    end
  end
end
