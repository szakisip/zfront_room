class CreateTalks < ActiveRecord::Migration[6.0]
  def change
    create_table :talks do |t|
      t.references :user,             null: false, foreign_key:true
      t.string :title,                null: false, default: ""
      t.integer :category_id,         null: false
      t.text :talk_text,              null: false

      t.timestamps
    end
  end
end
