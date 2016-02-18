class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.belongs_to :likable, index: true, polymorphic: true
      t.belongs_to :user, index: true 
      t.timestamps null: false
    end
  end
end
