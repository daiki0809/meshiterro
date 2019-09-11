class RenamePostimagesToPostImages < ActiveRecord::Migration[5.2]
  def change
  	rename_table :postimages, :post_images
  end
end
