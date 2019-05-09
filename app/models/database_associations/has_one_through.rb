module DatabaseAssociations::HasOneThrough
  def self.table_name_prefix
    'database_associations_has_one_through_'
  end

  class Foo < ApplicationRecord
    has_one :foobar
    has_one :bar, through: :foobar
  end

  class FooBar < ApplicationRecord
    belongs_to :foo
    has_one :bar
  end

  class Bar < ApplicationRecord
    belongs_to :foobar
  end
end
