class CreateDatabaseAssociationsHasOneBars < ActiveRecord::Migration[5.2]
  def change
    create_table :database_associations_has_one_bars do |t|

      t.timestamps
    end
  end
end