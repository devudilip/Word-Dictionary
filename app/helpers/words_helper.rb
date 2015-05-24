module WordsHelper

  def get_checked(lang, selected=nil)
    lan_selected = selected.nil? ? 'kn' : selected
    lang.language_code == lan_selected ? true : false
  end
end
