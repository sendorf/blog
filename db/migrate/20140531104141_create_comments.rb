class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user
      t.text :body
      t.integer :post_id

      t.timestamps
    end
  end
end
