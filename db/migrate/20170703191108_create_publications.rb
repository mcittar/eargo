class CreatePublications < ActiveRecord::Migration[5.0]
  def change
    create_table :publications do |t|
      t.string :logo, null: false
      t.string :name, null: false
      t.string :site_type
      t.string :editor, null: false
      t.string :owner, null: false
      t.string :url, null: false
      t.date :year, null: false
      t.string :creator
      t.timestamps
    end
  end
end
