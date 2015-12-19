class AddUserToComment < ActiveRecord::Migration
  def change
    remove_column :comments, :username
    add_reference :comments, :user, index: true
    # use fk when you switch to a better db
    # sqlite doesn't work with fk
  end
end
