class AddMissingToPodcast < ActiveRecord::Migration
  def change
    remove_column :podcasts, :name
    remove_column :podcasts, :pubdate
    
    add_column :podcasts, :title, :string
    add_column :podcasts, :subtitle, :string
    add_column :podcasts, :pubdate, :datetime
    add_column :podcasts, :summary, :text
    add_column :podcasts, :keywords, :string
    add_column :podcasts, :explicit, :bool
    
  end
end
