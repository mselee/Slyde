class AddCommentableRefToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :commentable, index: true, polymorhic: true
  end
end
