class CreateDatabaseAssociationsHasOneThroughBars < ActiveRecord::Migration[5.2]
  def change
    create_table :database_associations_has_one_through_bars do |t|
      t.integer :foobar_id, index: true
      t.timestamps
    end
  end
end
