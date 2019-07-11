class MakeRegistrationsAJoinTable < ActiveRecord::Migration[6.0]

  def up
    Registration.delete_all
    remove_column :registrations, :name
    remove_column :registrations, :email
    add_column :registrations, :user_id, :integer
  end

  def down
    Registration.delete_all
    remove_column :registrations, :user_id
    add_column :registrations, :name, :string
    add_column :registrations, :email, :string
  end

end
