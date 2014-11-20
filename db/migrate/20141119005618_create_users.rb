class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :pemail
      t.references :insts, index: true
      t.references :orgs, index: true
      t.text :bio

      t.timestamps
    end
  end
end
