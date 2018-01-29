class AdminController < ApplicationController
  def list
    @id=session[:user_id]
    if @id!=NIL
      @user=User.find(@id);
      if @user.user_type=='admin'
        @questions1=Question.where(subgenre_name: "Cricket")
        @questions2=Question.where(subgenre_name: "Football")
        @questions3=Question.where(subgenre_name: "Bollywood")
        @questions4=Question.where(subgenre_name: "Hollywood")

      else
        redirect_to "/login/admin"
      end
    else
      redirect_to "/login/admin"
    end
  end

  def new
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="admin"
        @question=Question.new
      else
        redirect_to "/login/admin"
      end
    else
      redirect_to "/login/admin"
    end
  end

  def create
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="admin"
        @flag1=0
        @flag2=0
        @flag3=0
        @flag4=0
        if(params[:answer1]=="Yes")
          @flag1=1
        end
        if(params[:answer2]=="Yes")
          @flag2=1
        end
        if(params[:answer3]=="Yes")
          @flag3=1
        end
        if(params[:answer4]=="Yes")
          @flag4=1
        end

        @question=Question.new(subgenre_name: params[:subgenre_name], question1: params[:question1], option1: params[:option1], option2: params[:option2], option3: params[:option3], option4:params[:option4], answer1: @flag1,answer2: @flag2, answer3: @flag3, answer4: @flag4, question_type: params[:question_type] )
        if @question.save
          @users=User.where(user_type: "user")
          @users.each do |u|
            @q=Quiz.new(user_id: u.id,quiz_number: @question.subgenre_name,attempted_question: @question.question1,option1: @question.option1, option2: @question.option2, option3: @question.option3, option4: @question.option4, answer1:0 , answer2: 0, answer3: 0, answer4:0)
            @q.save
          end
          redirect_to questions_url
        else
          redirect_to "/questions/create"
        end
      else
        redirect_to "/login/admin"
      end
    else
      redirect_to "/login/admin"
    end
  end

  def edit
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="admin"
        @question=Question.find(params[:id])
      else
        redirect_to "/login/admin"
      end
    else
      redirect_to "/login/admin"
    end
  end

  def update
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="admin"
        @question=Question.find(params[:id])
        @id=@question.id
        @q2=@question.question1
        if @question.update_attributes(question_params)
          @question2=Question.find(@id)
          @users=User.where(user_type: "user")
          @questions=Quiz.where(attempted_question: @q2)
          #puts(@questions)
          @questions.each do |q|
            q.attempted_question=@question2.question1
            q.option1=@question2.option1
            q.option2=@question2.option2
            q.option3=@question2.option3
            q.option4=@question2.option4
            q.quiz_number=@question2.subgenre_name
            q.save
          end
          redirect_to questions_url
        else
          redirect_to "/questions/edit"
        end
      else
        redirect_to "/login/admin"
      end
    else
      redirect_to "/login/admin"
    end
  end

  def question_params
    params.require(:question).permit(:subgenre_name,:question_type,:question1,:option1,:option2,:option3,:option4,:answer1,:answer2,:answer3,:answer4)
  end

  def delete
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="admin"
        @question=Question.find(params[:id])
        @users=User.where(user_type: "user")
        @users.each do |u|
          @q=Quiz.where(user_id: u.id,attempted_question: @question.question1).first
          if @q.answer1==@question.answer1 && @q.answer2==@question.answer2 && @q.answer3==@question.answer3 && @q.answer4==@question.answer4
            @sco=Score.where(user_id:u.id).first
            if @question.subgenre_name=="Cricket"
              if @question.question_type=="single"
                @sco.score1-=5
              else
                @sco.score1-=10
              end
              @sco.save
            elsif @question.subgenre_name=="Football"
              if @question.question_type=="single"
                @sco.score2-=5
              else
                @sco.score2-=10
              end
              @sco.save
            elsif @question.subgenre_name=="Bollywood"
              if @question.question_type=="single"
                @sco.score3-=5
              else
                @sco.score3-=10
              end
              @sco.save
            elsif @question.subgenre_name=="Hollywood"
              if @question.question_type=="single"
                @sco.score4-=5
              else
                @sco.score4-=10
              end
              @sco.save
            end
          end
          @q.destroy
        end
        Question.find(params[:id]).destroy
        redirect_to "/questions"
      else
        redirect_to "/login/admin"
      end
    else
      redirect_to "/login/admin"
    end
  end

  def listusers
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="admin"
        @users = User.where(:user_type => "user")
      else
        redirect_to "/login/admin"
      end
    else
      redirect_to "/login/admin"
    end
  end

  def deleteusers
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="admin"
        @id=User.find(params[:id])
        @questions=Question.all
        @questions.each do |q|
          @q=Quiz.where(user_id: @id,attempted_question: q.question1).first
          @q.destroy
        end
        @s=Score.where(user_id: @id).first
        @s.destroy
        User.find(params[:id]).destroy
        redirect_to "/users/list"
      else
        redirect_to "/login/admin"
      end
    else
      redirect_to "/login/admin"
    end
  end

  def index

  end
end
