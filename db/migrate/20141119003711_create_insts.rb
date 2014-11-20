class CreateInsts < ActiveRecord::Migration
  def change
    create_table :insts do |t|
      t.string :name
      t.string :contact
      t.string :location
      t.string :url
      t.text :summary

      t.timestamps
    end
  end
end
