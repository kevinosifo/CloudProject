class CreateBlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.text :summary
      t.integer :state, default: 0

      t.timestamps
    end
  end
end
