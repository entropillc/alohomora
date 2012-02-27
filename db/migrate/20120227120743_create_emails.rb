class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :address
      t.integer :account_id
      t.integer :organization_id

      t.timestamps
    end
  end
end
