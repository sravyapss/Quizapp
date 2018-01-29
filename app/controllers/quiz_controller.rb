class QuizController < ApplicationController
  @@cont1=0
  @@cont2=0
  @@cont3=0
  @@cont4=0
  def list
    @user=User.find(session[:user_id])
    if @user==NIL || @user.user_type=="admin"
      redirect_to "/login/user"
    end
  end
  def list1
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
        @ques=Question.where(subgenre_name: "Cricket")
        @count=0
        @@cont1=0
        @quizzes=Quiz.where(user_id: session[:user_id],quiz_number: "Cricket")
        @quizzes.each do |q|
          q.answer1=0
          q.answer2=0
          q.answer3=0
          q.answer4=0
          q.save
        end
        @sco=Score.where(user_id: session[:user_id]).first
        @sco.score1=0
        @sco.save
      else
        redirect_to "/login/user"
      end
    else
      redirect_to "/login/user"
    end
  end

  def list12
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
        @ques=Question.where(subgenre_name: "Cricket")
        @count=0
        puts(@@cont1)
        if @@cont1==1
          @ques=Question.where(subgenre_name: "Cricket")
          @count=0
          @quizzes=Quiz.where(user_id: session[:user_id],quiz_number: "Cricket")
          @quizzes.each do |q|
            q.answer1=0
            q.answer2=0
            q.answer3=0
            q.answer4=0
            q.save
          end
          @sco=Score.where(user_id: session[:user_id]).first
          @sco.score1=0
          @sco.save
          @@cont1=0
        end

      else
        redirect_to "/login/user"
      end
    else
      redirect_to "/login/user"
    end
  end

  def edit1
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
          @question3=Question.find(params[:id])
          @ques3=Quiz.where(user_id: session[:user_id], attempted_question: @question3.question1).first
          @flag=0
          if @ques3!=NIL
            if @ques3.answer1==1 || @ques3.answer2==1 || @ques3.answer3==1 || @ques3.answer4==1
              @flag=1
            end
          else
            redirect_to "/quizzes/quiz1/continue"
          end
        else
          redirect_to "/login/user"
        end
      else
        redirect_to "/login/user"
      end
  end

  def submit1
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
        @flag1=@flag2=@flag3=@flag4=0
        @quiz=Quiz.find(params[:id])
        @ques=Question.where(question1: @quiz.attempted_question).first
        if params[:commit]=="Submit"
          if @ques.question_type=="multiple"
            puts("sravya")
            if params[:answer1]=="1"
              @flag1=1
            end
            if params[:answer2]=="1"
              @flag2=1
            end
            if params[:answer3]=="1"
              @flag3=1
            end
            if params[:answer4]=="1"
              @flag4=1
            end
          elsif @ques.question_type=="single"
            puts("value":params[:answer])
            if params[:answer]=="1"
              @flag1=1
            elsif params[:answer]=="2"
              @flag2=1
            elsif params[:answer]=="3"
              @flag3=1
            elsif params[:answer]=="4"
              @flag4=1
            end

          end
          @quiz.answer1=@flag1
          @quiz.answer2=@flag2
          @quiz.answer3=@flag3
          @quiz.answer4=@flag4
          if @quiz.save
            if @quiz.answer1==@ques.answer1 && @quiz.answer2==@ques.answer2 && @quiz.answer3==@ques.answer3 && @quiz.answer4==@ques.answer4
              @sco=Score.where(user_id: session[:user_id]).first
              if @ques.question_type=="single"
                @sco.score1+=5
                @sco.save
              else @ques.question_type=="multiple"
                @sco.score1+=10
                @sco.save
              end
            end
            redirect_to "/quizzes/quiz1/continue"
          else
            redirect_to "/quizzes"
          end
        else
          redirect_to "/quizzes/quiz1/continue"
        end
      else
        redirect_to "/login/user"
      end
      else
        redirect_to "/login/user"
      end
  end

  def tell_score1
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
        @sco=Score.where(user_id: session[:user_id]).first
        @score1=@sco.score1
        @@cont1=1
      else
        redirect_to "/login/user"
      end
    else
      redirect_to "/login/user"
    end
  end

  def list2
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
        @ques=Question.where(subgenre_name: "Football")
        @count=0
        @quizzes=Quiz.where(user_id: session[:user_id],quiz_number: "Football")
        @quizzes.each do |q|
          q.answer1=0
          q.answer2=0
          q.answer3=0
          q.answer4=0
          q.save
        end
        @sco=Score.where(user_id: session[:user_id]).first
        @sco.score2=0
        @sco.save
        @@cont2=0
      else
        redirect_to "/login/user"
      end
    else
      redirect_to "/login/user"
    end
  end
  def list22
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
        @ques=Question.where(subgenre_name: "Football")
        @count=0
        if @@cont2==1
          @quizzes=Quiz.where(user_id: session[:user_id],quiz_number: "Football")
          @quizzes.each do |q|
            q.answer1=0
            q.answer2=0
            q.answer3=0
            q.answer4=0
            q.save
          end
          @sco=Score.where(user_id: session[:user_id]).first
          @sco.score2=0
          @sco.save
          @@cont2=0
        end

      else
        redirect_to "/login/user"
      end
    else
      redirect_to "/login/user"
    end
  end
  def edit2
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
        @question3=Question.find(params[:id])
        @ques3=Quiz.where(user_id: session[:user_id], attempted_question: @question3.question1).first
        @flag=0
        if @ques3!=NIL
          if @ques3.answer1==1 || @ques3.answer2==1 || @ques3.answer3==1 || @ques3.answer4==1
            @flag=1
          end
        else
          redirect_to "quizzes/quiz2/continue"
        end
      else
        redirect_to "/login/user"
      end
    else
      redirect_to "/login/user"
    end
  end
  def submit2
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
        @flag1=@flag2=@flag3=@flag4=0
        @quiz=Quiz.find(params[:id])
        @ques=Question.where(question1: @quiz.attempted_question).first
        if params[:commit]=="Submit"
          if @ques.question_type=="multiple"
            if params[:answer1]=="1"
              @flag1=1
            end
            if params[:answer2]=="1"
              @flag2=1
            end
            if params[:answer3]=="1"
              @flag3=1
            end
            if params[:answer4]=="1"
              @flag4=1
            end
          elsif @ques.question_type=="single"
            puts("value":params[:answer])
            if params[:answer]=="1"
              @flag1=1
            elsif params[:answer]=="2"
              @flag2=1
            elsif params[:answer]=="3"
              @flag3=1
            elsif params[:answer]=="4"
              @flag4=1
            end

          end
          @quiz.answer1=@flag1
          @quiz.answer2=@flag2
          @quiz.answer3=@flag3
          @quiz.answer4=@flag4
          if @quiz.save
            if @quiz.answer1==@ques.answer1 && @quiz.answer2==@ques.answer2 && @quiz.answer3==@ques.answer3 && @quiz.answer4==@ques.answer4
              @sco=Score.where(user_id: session[:user_id]).first
              if @ques.question_type=="single"
                @sco.score2+=5
                @sco.save
              else @ques.question_type=="multiple"
                @sco.score2+=10
                @sco.save
              end
            end
            redirect_to "/quizzes/quiz2/continue"
          else
            redirect_to "/quizzes"
          end
        else
          redirect_to "/quizzes/quiz2/continue"
        end
      else
        redirect_to "/login/user"
      end
    else
      redirect_to "/login/user"
    end
  end

  def tell_score2
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
        @sco=Score.where(user_id: session[:user_id]).first
        @score2=@sco.score2
        @@cont2=1
      else
        redirect_to "/login/user"
      end
    else
      redirect_to "/login/user"
    end
  end

  def list3
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
        @ques=Question.where(subgenre_name: "Bollywood")
        @count=0
        @quizzes=Quiz.where(user_id: session[:user_id],quiz_number: "Bollywood")
        @quizzes.each do |q|
          q.answer1=0
          q.answer2=0
          q.answer3=0
          q.answer4=0
          q.save
        end
        @sco=Score.where(user_id: session[:user_id]).first
        @sco.score3=0
        @sco.save
        @@cont=0
      else
        redirect_to "/login/user"
      end
    else
      redirect_to "/login/user"
    end
  end
  def list32
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
        @ques=Question.where(subgenre_name: "Bollywood")
        @count=0
        if @@cont3==1
          @quizzes=Quiz.where(user_id: session[:user_id],quiz_number: "Bollywood")
          @quizzes.each do |q|
            q.answer1=0
            q.answer2=0
            q.answer3=0
            q.answer4=0
            q.save
          end
          @sco=Score.where(user_id: session[:user_id]).first
          @sco.score3=0
          @sco.save
          @@cont3=0
        end
      else
        redirect_to "/login/user"
      end
    else
      redirect_to "/login/user"
    end
  end
  def edit3
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
        @question3=Question.find(params[:id])
        @ques3=Quiz.where(user_id: session[:user_id], attempted_question: @question3.question1).first
        @flag=0
        if @ques3!=NIL
          if @ques3.answer1==1 || @ques3.answer2==1 || @ques3.answer3==1 || @ques3.answer4==1
            @flag=1
          end
        else
          redirect_to "quizzes/quiz3/continue"
        end
      else
        redirect_to "/login/user"
      end
    else
      redirect_to "/login/user"
    end
  end
  def submit3
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
        @flag1=@flag2=@flag3=@flag4=0
        @quiz=Quiz.find(params[:id])
        @ques=Question.where(question1: @quiz.attempted_question).first
        if params[:commit]=="Submit"
          if @ques.question_type=="multiple"
            if params[:answer1]=="1"
              @flag1=1
            end
            if params[:answer2]=="1"
              @flag2=1
            end
            if params[:answer3]=="1"
              @flag3=1
            end
            if params[:answer4]=="1"
              @flag4=1
            end
          elsif @ques.question_type=="single"
            puts("value":params[:answer])
            if params[:answer]=="1"
              @flag1=1
            elsif params[:answer]=="2"
              @flag2=1
            elsif params[:answer]=="3"
              @flag3=1
            elsif params[:answer]=="4"
              @flag4=1
            end

          end
          @quiz.answer1=@flag1
          @quiz.answer2=@flag2
          @quiz.answer3=@flag3
          @quiz.answer4=@flag4
          if @quiz.save
            if @quiz.answer1==@ques.answer1 && @quiz.answer2==@ques.answer2 && @quiz.answer3==@ques.answer3 && @quiz.answer4==@ques.answer4
              @sco=Score.where(user_id: session[:user_id]).first
              if @ques.question_type=="single"
                @sco.score3+=5
                @sco.save
              else @ques.question_type=="multiple"
                @sco.score3+=10
                @sco.save
              end
            end
            redirect_to "/quizzes/quiz3/continue"
          else
            redirect_to "/quizzes"
          end
        else
          redirect_to "/quizzes/quiz3/continue"
        end
      else
        redirect_to "/login/user"
      end
    else
      redirect_to "/login/user"
    end
  end
  def tell_score3
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
        @sco=Score.where(user_id: session[:user_id]).first
        @score3=@sco.score3
        @@cont3=1
      else
        redirect_to "/login/user"
      end
    else
      redirect_to "/login/user"
    end
  end
  def list4
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
        @ques=Question.where(subgenre_name: "Hollywood")
        @count=0
        @quizzes=Quiz.where(user_id: session[:user_id],quiz_number: "Hollywood")
        @quizzes.each do |q|
          q.answer1=0
          q.answer2=0
          q.answer3=0
          q.answer4=0
          q.save
        end
        @sco=Score.where(user_id: session[:user_id]).first
        @sco.score4=0
        @sco.save
        @@cont4=0
      else
        redirect_to "/login/user"
      end
    else
      redirect_to "/login/user"
    end
  end
  def list42
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
        @ques=Question.where(subgenre_name: "Hollywood")
        @count=0
        if @@cont4==1
          @quizzes=Quiz.where(user_id: session[:user_id],quiz_number: "Hollywood")
          @quizzes.each do |q|
            q.answer1=0
            q.answer2=0
            q.answer3=0
            q.answer4=0
            q.save
          end
          @sco=Score.where(user_id: session[:user_id]).first
          @sco.score4=0
          @sco.save
          @@cont4=0
        end

      else
        redirect_to "/login/user"
      end
    else
      redirect_to "/login/user"
    end
  end
  def edit4
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
        @question3=Question.find(params[:id])
        @ques3=Quiz.where(user_id: session[:user_id], attempted_question: @question3.question1).first
        @flag=0
        if @ques3!=NIL
          if @ques3.answer1==1 || @ques3.answer2==1 || @ques3.answer3==1 || @ques3.answer4==1
            @flag=1
          end
        else
          redirect_to "/quizzes/quiz4/continue"
        end
      else
        redirect_to "/login/user"
      end
    else
      redirect_to "/login/user"
    end
  end
  def submit4
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
        @flag1=@flag2=@flag3=@flag4=0
        @quiz=Quiz.find(params[:id])
        @ques=Question.where(question1: @quiz.attempted_question).first
        if params[:commit]=="Submit"
          if @ques.question_type=="multiple"
            if params[:answer1]=="1"
              @flag1=1
            end
            if params[:answer2]=="1"
              @flag2=1
            end
            if params[:answer3]=="1"
              @flag3=1
            end
            if params[:answer4]=="1"
              @flag4=1
            end
          elsif @ques.question_type=="single"
            puts("value":params[:answer])
            if params[:answer]=="1"
              @flag1=1
            elsif params[:answer]=="2"
              @flag2=1
            elsif params[:answer]=="3"
              @flag3=1
            elsif params[:answer]=="4"
              @flag4=1
            end
          end
          @quiz.answer1=@flag1
          @quiz.answer2=@flag2
          @quiz.answer3=@flag3
          @quiz.answer4=@flag4
          if @quiz.save
            if @quiz.answer1==@ques.answer1 && @quiz.answer2==@ques.answer2 && @quiz.answer3==@ques.answer3 && @quiz.answer4==@ques.answer4
              @sco=Score.where(user_id: session[:user_id]).first
              if @ques.question_type=="single"
                @sco.score4+=5
                @sco.save
              else @ques.question_type=="multiple"
                @sco.score4+=10
                @sco.save
              end
            end
            redirect_to "/quizzes/quiz4/continue"
          else
            redirect_to "/quizzes"
          end
        else
          redirect_to "/quizzes/quiz4/continue"
        end
      else
        redirect_to "/login/user"
      end
    else
      redirect_to "/login/user"
    end
  end
  def tell_score4
    @user=User.find(session[:user_id])
    if @user!=NIL
      if @user.user_type=="user"
        @sco=Score.where(user_id: session[:user_id]).first
        @score4=@sco.score4
        @@cont4=1
      else
        redirect_to "/login/user"
      end
    else
      redirect_to "/login/user"
    end
  end
  def quiz_params
    params.require(:quiz).permit(:answer1, :answer2, :answer3 , :answer4)
  end

  def analysis
    @sco=Score.where(user_id: session[:user_id]).first
  end
end
