class CreateDatabaseAssociationsHasManyBars < ActiveRecord::Migration[5.2]
  def change
    create_table :database_associations_has_many_bars do |t|

      t.timestamps
    end
  end
end
