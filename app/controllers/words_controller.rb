class WordsController < ApplicationController
  def index
    @words = Word.all
  end
  def new
    @word = Word.new
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
