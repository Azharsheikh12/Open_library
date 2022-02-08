class AddAttachmentToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :attachment, :string
  end
end
