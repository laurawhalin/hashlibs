class WordSetController < ApplicationController
  def show
  end

  def update
    word_set = WordSet.find(params[:id])
    word_set.update(word_params)
    redirect_to pirate_path
  end

  private

  def word_params
    params.require(:word_set).permit(:noun1, :adjective1, :verb1)
  end
end
