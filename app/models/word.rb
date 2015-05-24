class Word < ActiveRecord::Base
  attr_accessible :name, :word_language_id,  :wrong_words_attributes,:correct_usages_attributes, :wrong_usages_attributes, :word_translations_attributes
  belongs_to :user
  belongs_to :word_language
  has_many :wrong_words, dependent: :destroy
  has_many :correct_usages, dependent: :destroy
  has_many :wrong_usages, dependent: :destroy
  has_many :word_translations, dependent: :destroy
  accepts_nested_attributes_for :word_translations, :reject_if => lambda { |a| a[:name].blank? }
  accepts_nested_attributes_for :wrong_words, :reject_if => lambda { |a| a[:name].blank? }
  accepts_nested_attributes_for :correct_usages, :reject_if => lambda { |a| a[:usage].blank? }
  accepts_nested_attributes_for :wrong_usages, :reject_if => lambda { |a| a[:usage].blank? }

  validates :name, presence: true
  self.per_page = 15
end
