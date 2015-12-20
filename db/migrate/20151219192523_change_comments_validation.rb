class ChangeCommentsValidation < ActiveRecord::Migration
  def change
    change_column :comments, :user_id, :integer, :null => false
    change_column :comments, :text, :text, :null => false
    change_column :comments, :commentable_id, :integer, :null => false
    change_column :comments, :commentable_type, :string, :null => false
  end
end
