class Word < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :correct_words
  has_many :wrong_words
end
