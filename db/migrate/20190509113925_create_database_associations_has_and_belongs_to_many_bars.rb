class CreateDatabaseAssociationsHasAndBelongsToManyBars < ActiveRecord::Migration[5.2]
  def change
    create_table :database_associations_has_and_belongs_to_many_bars do |t|

      t.timestamps
    end
  end
end
