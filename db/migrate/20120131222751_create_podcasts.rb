class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.references :keyword
      t.references :file
      
      t.string :title
      t.string :subtitle
      t.string :author
      t.text :summary
      t.datetime :pubDate
      t.string :explicit
      t.string :image

      t.timestamps
    end
    add_index :podcasts, :keyword_id
    add_index :podcasts, :file_id
  end
end
