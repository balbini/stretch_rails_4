class AddToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :article, :string
    add_column :blogs, :content, :string
  end
end
