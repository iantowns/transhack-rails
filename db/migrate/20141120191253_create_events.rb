class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.references :users, index: true
      t.string :summary

      t.timestamps
    end
  end
end
