# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#example of has_one association
bar = DatabaseAssociations::HasOne::Bar.create
DatabaseAssociations::HasOne::Foo.create(bar_id: bar.id)

#example of has_one through association
foo = DatabaseAssociations::HasOneThrough::Foo.create
foobar = DatabaseAssociations::HasOneThrough::FooBar.create(foo_id: foo.id)
DatabaseAssociations::HasOneThrough::Bar.create(foobar_id: foobar.id)

#example of has_many association
bar = DatabaseAssociations::HasMany::Bar.create
(1..5).each do
  DatabaseAssociations::HasMany::Foo.create(bar_id: bar.id)
end

#example of has_many through many-to-many association
(1..5).each do
  #create bar with 5 foos
  foos = []
  (1..5).each do
    foos << DatabaseAssociations::HasManyThrough::Foo.create
  end
  DatabaseAssociations::HasManyThrough::Bar.create(foos: foos)

  #create foo with 5 bars
  bars = []
  (1..5).each do
    bars << DatabaseAssociations::HasManyThrough::Bar.create
  end
  DatabaseAssociations::HasManyThrough::Foo.create(bars: bars)
end

#example of has_and_belongs_to_many association
(1..5).each do
  #create bar with 5 foos
  foos = []
  (1..5).each do
    foos << DatabaseAssociations::HasAndBelongsToMany::Foo.create
  end
  DatabaseAssociations::HasAndBelongsToMany::Bar.create(foos: foos)

  #create foo with 5 bars
  bars = []
  (1..5).each do
    bars << DatabaseAssociations::HasAndBelongsToMany::Bar.create
  end
  DatabaseAssociations::HasAndBelongsToMany::Foo.create(bars: bars)
end