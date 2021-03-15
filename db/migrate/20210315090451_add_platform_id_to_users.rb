class AddPlatformIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :platform_id, :integer, after: :referral_id

    add_index :users, [:platform_id, :email], unique: true, where: 'platform_id IS NOT NULL'
    remove_index :users, column: :email
    add_index :users, :email, unique: true, where: 'platform_id IS NULL'
  end
end
