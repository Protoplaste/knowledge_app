class CreateDatabaseAssociationsHasManyThroughFooBars < ActiveRecord::Migration[5.2]
  def change
    create_table :database_associations_has_many_through_foo_bars do |t|
      t.integer :foo_id, index: true
      t.integer :bar_id, index: true

      t.timestamps
    end
  end
end
