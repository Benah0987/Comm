class AddVideoUrlToVideos < ActiveRecord::Migration[7.0]
  def change
    add_column :videos, :video_url, :string
  end
end
