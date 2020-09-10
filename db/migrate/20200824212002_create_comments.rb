class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :article, null: false, polymorphic: true, foreign_key: true
      t.references :photo, null: false, polymorphic: true, foreign_key: true
      t.timestamps
    end
  end
end
