class WelcomeController < ApplicationController
  def index
    @word_sets = WordSet.all
  end
end
