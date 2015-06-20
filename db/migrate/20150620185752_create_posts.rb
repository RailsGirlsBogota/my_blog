class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false#, uniqueness: true
      t.text :body, null: false
      t.string :author, default: "Sebas"

      t.timestamps null: false
    end
    
    add_index :posts, :title, unique: true
  end
end
