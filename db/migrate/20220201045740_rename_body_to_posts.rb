class RenameBodyToPosts < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :body, :description
  end
end
