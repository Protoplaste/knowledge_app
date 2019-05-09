module DatabaseAssociations::HasOne
  def self.table_name_prefix
    'database_associations_has_one_'
  end

  class Foo < ApplicationRecord
    belongs_to :bar #foreign_key: :bar_id
  end

  class Bar < ApplicationRecord
    has_one :foo
  end
end
