class CreateDyes < ActiveRecord::Migration
  def change
    create_table :dyes do |t|
    	t.text :content
    	t.text :color

     end
  end
end
