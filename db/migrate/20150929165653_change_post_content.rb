class ChangePostContent < ActiveRecord::Migration
  def change
  	change_table :posts do |t|
      t.change :content, :text
    end
  end
end
