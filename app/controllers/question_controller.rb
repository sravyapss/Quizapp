class QuestionController < ApplicationController
  def list
    @id=session[:user_id]
    if @id!=NIL
      @user=User.find(@id);
      if @user.user_type=='admin'
        @questions=Question.all
      end
    end
  end
end
