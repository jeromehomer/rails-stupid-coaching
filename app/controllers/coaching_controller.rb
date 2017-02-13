class CoachingController < ApplicationController


  def answer
    @coach_answer = coach_answer
  end


  def ask
  end


    def coach_answer
      if params[:question_type].downcase == "I am going to work right now!"
        return ''
      else
        if params[:question_type].downcase.end_with?("?")
          return "Silly question, get dressed and go to work!"
        else
          return "I don\'t care, get dressed and go to work!"
        end
      end
    end

end
