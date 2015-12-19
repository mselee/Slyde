class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :file_path
      t.references :document, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
