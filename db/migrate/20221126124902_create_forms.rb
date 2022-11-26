class CreateForms < ActiveRecord::Migration[7.0]
  def change
    create_table :forms do |t|
      t.belongs_to :user
      t.string :name
      t.string :description
      t.json :fields

      t.timestamps
    end
  end
end
