module DatabaseAssociations::HasManyThrough
  def self.table_name_prefix
    'database_associations_has_many_through_'
  end

  class DatabaseAssociations::HasManyThrough::Foo < ApplicationRecord
    has_many :foobars
    has_many :bars, through: :foobars
  end

  class DatabaseAssociations::HasManyThrough::FooBar < ApplicationRecord
    #each foobar is representing one connection between foo and bar
    belongs_to :foo # foreign_key: :foo_id
    belongs_to :bar # foreign_key: :bar_id
  end


  class DatabaseAssociations::HasManyThrough::Bar < ApplicationRecord
    has_many :foobars
    has_many :foos, through: :foobars
  end



end
