class AddFileLocationToPodcasts < ActiveRecord::Migration
  def change
    add_column :podcasts, :fileLoc, :string
    add_column :podcasts, :fileSize, :int64
    add_column :podcasts, :fileLength, :time
  end
end
