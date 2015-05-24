class WordTranslation < ActiveRecord::Base
  attr_accessible  :name, :word_language_id
  belongs_to :word
end
