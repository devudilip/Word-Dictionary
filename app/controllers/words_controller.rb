class WordsController < ApplicationController

  before_filter :authenticate_user! , only: [:new, :edit,:create,:update,:destroy]

  def index
   @q = Word.search(params[:q])
   @words = @q.result.page(params[:page])
 end

 def new
  @word = Word.new
  @word.word_translations.new
  @word.notes.new
  @word.wrong_words.new
  @word.correct_usages.new
  @word.wrong_usages.new
  @word_languages = WordLanguage.all
end

def create
  @user = current_user
  @word = @user.words.new(params[:word])
  if @word.save
    redirect_to words_path, notice: "Successfully created word."
  else
    render :new, error: "Word creation failed."
  end
end

def edit
  @word = Word.find params[:id]
  @word_languages = WordLanguage.all
end

def update
 @word = Word.find(params[:id])
 if @word.update_attributes(params[:word])
  redirect_to words_path, notice: "Successfully updated word."
else
  render :edit
end
end

def show
end

def destroy
end

end
