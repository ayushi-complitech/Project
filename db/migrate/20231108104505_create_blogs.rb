class CreateBlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :blogs do |t|
      t.string :blog_name
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
