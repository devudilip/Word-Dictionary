class WordLanguage < ActiveRecord::Base
  attr_accessible :name, :language_code
  has_many :words
  has_many :correct_words
  has_many :wrong_words
end
