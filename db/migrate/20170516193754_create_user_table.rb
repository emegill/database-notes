class CreateUserTable < ActiveRecord::Migration[5.1]
  def change

  	create_table :users do |t|
  		t.string :userName
  		t.string :password
  		t.string :comment
  		
  	end

  end
end
