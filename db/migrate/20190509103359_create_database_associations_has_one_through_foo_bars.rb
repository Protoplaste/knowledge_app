class CreateDatabaseAssociationsHasOneThroughFooBars < ActiveRecord::Migration[5.2]
  def change
    create_table :database_associations_has_one_through_foo_bars do |t|
      t.integer :foo_id, index: true

      t.timestamps
    end
  end
end
