class WordsController < ApplicationController

  def index
    @words = Word.paginate(:page => params[:page])
  end

  def new
    @word = Word.new
    @word.correct_words.new 
    @word.wrong_words.new
    @word.correct_usages.new
    @word.wrong_usages.new
  end

  def create
    @user = User.find 1
    @word = @user.words.new(params[:word])
    if @word.save
      redirect_to new_word_path, notice: "Successfully created word."
    else
      render :new, error: "Word creation failed."
    end
  end

  def edit
    @word = Word.find params[:id]
  end

  def update
   @word = Word.find(params[:id])
   if @word.update_attributes(params[:word])
    redirect_to edit_word_path(@word), notice: "Successfully updated word."
  else
    render :edit
  end
end

def show
end

def destroy
end

end
