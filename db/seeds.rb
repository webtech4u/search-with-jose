# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artist_list = ['the Doors','the Doors','Pink Floyd','Ozzy Osbourne','Dj Dado','The Killers','The Who']

artist_list.each do |name|
  Artist.find_or_create_by(name: name)
end

label_list =['Universal',
              'Virgin',
              'Atlantic',
              'Gefeen'
            ]

    label_list.each do |name|
      Label.find_or_create_by( name: name )
    end


    album_list = [
                 'The Best of The Doors',
                 'Waiting for the Sun',
                 'Dark Side of the Moon',
                 'Hot Fuss',
                 'Battle Born',
                 'Who Are You',
                 'Live At Leeds',
                 'No More Rain',
                 'The X Files'
                ]

    album_list.each do |name|
      Album.find_or_create_by( name: name )
    end
