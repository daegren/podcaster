class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.references :categories
      t.references :podcast
      
      t.string :title
      t.string :subtitle
      t.text :summary
      t.text :description
      t.string :owner_name
      t.string :owner_email
      t.string :language
      t.string :copyright
      t.string :explicit
      t.string :author
      t.string :image

      t.timestamps
    end
    
    add_index :podcasts, :categories_id
    add_index :podcasts, :podcast_id
  end
end
