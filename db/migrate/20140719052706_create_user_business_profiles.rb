class CreateUserBusinessProfiles < ActiveRecord::Migration
  def change
    create_table :user_business_profiles do |t|
      t.references :business_profile, index: true
      t.references :user, index: true
      t.boolean :is_owner
      t.string :position

      t.timestamps
    end
  end
end
