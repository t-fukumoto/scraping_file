class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.binary :image
      t.text :text
    end
  end
end
