class CreateDatabaseAssociationsHasManyThroughFoos < ActiveRecord::Migration[5.2]
  def change
    create_table :database_associations_has_many_through_foos do |t|

      t.timestamps
    end
  end
end
