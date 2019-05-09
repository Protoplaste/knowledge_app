module DatabaseAssociations::HasAndBelongsToMany
  def self.table_name_prefix
    'database_associations_has_and_belongs_to_many_'
  end

  class Foo < ApplicationRecord
    #join_table specifies what table should be used as the connector
    has_and_belongs_to_many :bars, join_table: "database_associations_has_and_belongs_to_many_foo_bars"
  end

  #unlike in has_many through, this association does not need a third model to work
  #the table foobars still exists in the database

  class Bar < ApplicationRecord
    has_and_belongs_to_many :foos, join_table: "database_associations_has_and_belongs_to_many_foo_bars"
  end
end
