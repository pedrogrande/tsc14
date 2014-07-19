class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.string :icon
      t.references :business_profile, index: true

      t.timestamps
    end
  end
end
