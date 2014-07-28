module WordsHelper

  def get_checked lang
    if @word.persisted? and @word.word_language
      @word.word_language.language_code == lang.language_code ? true : false
    else
      lang.language_code == 'kn' ? true : false
    end
  end
end
