class AddNumberToSlides < ActiveRecord::Migration
  def change
    add_column :slides, :number, :integer
    change_column :slides, :number, :integer, :null => false
  end
end
