class CreateRequests < ActiveRecord::Migration
  def change
      create_table :requests do |t|
      t.integer :song_id, null: false
      t.integer :artist_id, null: false
      t.integer :genre_id, null: false
      t.integer :source_id, null: false
      t.boolean :in_system?

      t.timestamps null: false
    end
  end
end
