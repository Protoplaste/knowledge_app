module DatabaseAssociations::PolymorphicAssociation
  def self.table_name_prefix
    'database_associations_polymorphic_association_'
  end

  class DatabaseAssociations::PolymorphicAssociation::Foo < ApplicationRecord
    #uses bar_type and bar_id fields
    belongs_to :bar, polymorphic: true
  end
  
  class DatabaseAssociations::PolymorphicAssociation::Bar1 < ApplicationRecord
    has_many :foos, as: :bar_type
  end

  class DatabaseAssociations::PolymorphicAssociation::Bar2 < ApplicationRecord
    has_many :foos, as: :bar_type
  end


end
