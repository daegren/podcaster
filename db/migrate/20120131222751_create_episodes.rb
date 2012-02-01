class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
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
    add_index :episodes, :keyword_id
    add_index :episodes, :file_id
  end
end
