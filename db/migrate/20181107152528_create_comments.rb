class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.timestamps
      t.text :content      
      t.integer :user_id
      t.text :email
      t.integer :like
      t.integer :dislike
    end
  end
end
