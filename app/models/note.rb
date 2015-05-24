class Note < ActiveRecord::Base
  attr_accessible  :notes
  belongs_to :word
end
