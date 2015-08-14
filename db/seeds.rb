# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Dye.delete_all

GW2::Misc.colors.each do |dyes|
	name = dyes[1]['name']
	color_list = dyes[1]['metal']['rgb']
	color = color_list[0].to_s + ", " + color_list[1].to_s + ", " + color_list[2].to_s

	Dye.create!(:content => name, :color => color)
end