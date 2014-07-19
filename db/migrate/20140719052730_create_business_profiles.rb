class CreateBusinessProfiles < ActiveRecord::Migration
  def change
    create_table :business_profiles do |t|
      t.integer :owner
      t.string :name
      t.text :description
      t.string :twitter
      t.string :facebook
      t.string :linkedin
      t.string :url
      t.string :google
      t.string :address
      t.string :building
      t.string :city
      t.string :state
      t.string :postcode
      t.string :country
      t.string :logo
      t.string :image
      t.string :email
      t.string :phone
      t.float :latitude
      t.float :longitude
      t.string :slug
      t.references :category, index: true

      t.timestamps
    end
  end
end
