class CreatePostsTable < ActiveRecord::Migration[5.1]
  def change

  	create_table :posts do |t|
  		t.string :title
  		t.string :category
  		t.text :content
  		t.search :search
  	end

  	
  end
end
