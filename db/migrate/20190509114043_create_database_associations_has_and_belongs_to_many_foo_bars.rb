class CreateDatabaseAssociationsHasAndBelongsToManyFooBars < ActiveRecord::Migration[5.2]
  def change
    create_table :database_associations_has_and_belongs_to_many_foo_bars, id: false do |t|
      t.integer :foo_id, index: true
      t.integer :bar_id, index: true
      t.timestamps
    end
  end
end
