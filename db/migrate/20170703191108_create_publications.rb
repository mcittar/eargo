class CreatePublications < ActiveRecord::Migration[5.0]
  def change
    create_table :publications do |t|
      t.string :logo, null: false
      t.string :name, null: false
      t.string :site_type
      t.string :editor
      t.string :owner
      t.string :url, null: false
      t.date :year, null: false
      t.string :creator
      t.timestamps
    end
  end
end
