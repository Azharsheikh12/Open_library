class AddBSubjectToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :b_subject, :string
  end
end
