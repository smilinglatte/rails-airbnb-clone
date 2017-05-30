# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# #
#   studios = Studio.create([{ Title: 'Woodwork Studio' }, { adress: 'Brussels' }])
#   Character.create(name: 'Luke', movie: movies.first)

studios = %w(Woodwork Silkscreen Painter)
studios.each do |studio|
  Studio.create(title: studio.to_s)
end
