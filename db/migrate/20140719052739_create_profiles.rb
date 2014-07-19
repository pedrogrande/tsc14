class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true
      t.string :tagline
      t.text :about
      t.string :email
      t.string :phone
      t.string :url
      t.string :twitter
      t.string :facebook
      t.string :linkedin
      t.string :google
      t.string :image
      t.string :slug
      t.string :name
      t.boolean :mentor
      t.string :github

      t.timestamps
    end
  end
end
