class CreateUpcomingBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :upcoming_books do |t|
      t.string :title
      t.string :description
      t.string :author
      t.string :b_subject
      t.string :attachment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
