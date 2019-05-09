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
for i in 1..5
  DatabaseAssociations::HasMany::Foo.create(bar_id: bar.id)
end

#example of has_many through many-to-many association
foos = 
for i in 1..5
   DatabaseAssociations::HasManyThrough::Foo.create(id: i)
end

bars = 
for i in 1..5
   DatabaseAssociations::HasManyThrough::Bar.create(id: i)
end

for i in 1..5
   DatabaseAssociations::HasManyThrough::FooBar.create(foo_id: i, bar_id: i)
end