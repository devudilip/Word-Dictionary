class Word < ActiveRecord::Base
  attr_accessible :name, :word_language_id, :correct_words_attributes, :wrong_words_attributes
  belongs_to :user
  has_many :correct_words, dependent: :destroy
  has_many :wrong_words, dependent: :destroy
  accepts_nested_attributes_for :correct_words
  accepts_nested_attributes_for :wrong_words, :reject_if => lambda { |a| a[:name].blank? }

  validates :name, presence: true
end
