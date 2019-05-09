module DatabaseAssociations::HasManyThrough
  def self.table_name_prefix
    'database_associations_has_many_through_'
  end

  class Foo < ApplicationRecord
    has_many :foobars, class_name: 'FooBar'
    has_many :bars, through: :foobars
  end

  class FooBar < ApplicationRecord
    #each foobar is representing one connection between foo and bar
    belongs_to :foo # foreign_key: :foo_id
    belongs_to :bar # foreign_key: :bar_id
  end

  class Bar < ApplicationRecord
    has_many :foobars, class_name: 'FooBar'
    has_many :foos, through: :foobars
  end
end
