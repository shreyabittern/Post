class CreateNewS < ActiveRecord::Migration[6.0]
  def change
    create_table :new_s do |t|
      t.string :Post
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
