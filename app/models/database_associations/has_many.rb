module DatabaseAssociations::HasMany
  def self.table_name_prefix
    'database_associations_has_many_'
  end

  class DatabaseAssociations::HasMany::Foo < ApplicationRecord
    belongs_to :bar # foreign_key: :bar_id
  end

  class DatabaseAssociations::HasMany::Bar < ApplicationRecord
    has_many :foos #pluralised
  end
end
