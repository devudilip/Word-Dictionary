class WordsController < ApplicationController
  def index
    @words = Word.all
  end
  def new
    @word = Word.new
    @word.correct_words.new 
    @word.wrong_words.new
  end
  def create
    
    redirect_to new_word_path
  end
  def edit
  end
  def update
  end
  def show
  end
  def destroy
  end 
end
