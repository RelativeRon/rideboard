class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.integer :poster_id, :null => false
      t.string :title, :limit => 256
      t.string :origin
      t.text :message

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
