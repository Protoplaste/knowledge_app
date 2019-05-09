module DatabaseAssociations::HasOneThrough
  def self.table_name_prefix
    'database_associations_has_one_through_'
  end

  class Foo < ApplicationRecord
    has_one :foobar
    has_one :bar, through: :foobar
  end

  class FooBar < ApplicationRecord
    belongs_to :foo #foreign_key: :foo_id
    has_one :bar
  end

  class Bar < ApplicationRecord
    belongs_to :foobar, class_name: 'FooBar' #foreign_key: :foobar_id
  end
end
