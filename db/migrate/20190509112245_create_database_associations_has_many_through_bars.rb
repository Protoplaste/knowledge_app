class CreateDatabaseAssociationsHasManyThroughBars < ActiveRecord::Migration[5.2]
  def change
    create_table :database_associations_has_many_through_bars do |t|

      t.timestamps
    end
  end
end
