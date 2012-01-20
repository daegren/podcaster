class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.string :name
      t.date :pubdate
      t.text :description

      t.timestamps
    end
  end
end
