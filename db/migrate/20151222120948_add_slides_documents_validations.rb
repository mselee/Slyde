class AddSlidesDocumentsValidations < ActiveRecord::Migration
  def change
    change_column :documents, :name, :string, :null => false
    change_column :documents, :file_path, :string, :null => false
    change_column :documents, :user_id, :integer, :null => false
    change_column :slides, :file_path, :string, :null => false
    change_column :slides, :document_id, :integer, :null => false
  end
end
