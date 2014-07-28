module WordsHelper

  def get_checked lang
    lang.language_code == 'kn' ? true : false
  end
end
