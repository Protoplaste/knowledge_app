class CreateDatabaseAssociationsPolymorphicAssociationFoos < ActiveRecord::Migration[5.2]
  def change
    create_table :database_associations_polymorphic_association_foos do |t|
      t.integer :bar_id
      t.string :bar_type
      
      t.timestamps
    end
  end
end
