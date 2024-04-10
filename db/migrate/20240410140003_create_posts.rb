class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :status
      t.string :slug

      t.timestamps
    end
  end
end
