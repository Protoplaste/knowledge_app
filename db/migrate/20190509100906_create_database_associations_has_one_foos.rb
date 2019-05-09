class CreateDatabaseAssociationsHasOneFoos < ActiveRecord::Migration[5.2]
  def change
    create_table :database_associations_has_one_foos do |t|
      t.integer :bar_id, index: true

      t.timestamps
    end
  end
end
