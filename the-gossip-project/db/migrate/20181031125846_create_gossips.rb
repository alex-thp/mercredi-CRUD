class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.belongs_to :user, optional: true
      t.string :anonymous
      t.string :title
      t.text :content
      t.timestamps
    end
  end
end
