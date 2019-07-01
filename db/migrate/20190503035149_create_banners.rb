class CreateBanners < ActiveRecord::Migration[5.1]
  def change
    create_table :banners do |t|
      t.string    :banner_filename
      t.string    :url
      t.timestamps
    end
  end
end
