class CreateOrgs < ActiveRecord::Migration
  def change
    create_table :orgs do |t|
      t.string :name
      t.references :owner, index: true
      t.string :contact
      t.string :summary
      t.references :inst, index: true
      t.references :events, index: true

      t.timestamps
    end
  end
end
