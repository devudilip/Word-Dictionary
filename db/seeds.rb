# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed for Languages in WordLanguage Model
WordLanguage.create([
  { name: 'Kannada', language_code: 'kn' },
  { name: 'Hindi', language_code: 'hi' },
  { name: 'English', language_code: 'en' }
  ])