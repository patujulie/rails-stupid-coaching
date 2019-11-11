# frozen_string_literal: true

class QuestionsController < ApplicationController
  # the controller will reply with the coach

  def ask; end

  def answer
    @question = params[:mytext]
    if @question == 'I am going to work'
      @answer = 'Great'
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!.'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
