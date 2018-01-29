class ScoreController < ApplicationController
  def leaderboard
    @users=User.where(user_type: "user")
    @score=Score.all
    @score1=@score.sort_by{|e| -e[:score1]}
    #@score2=Score.all
    @score2=@score.sort_by{|e| -e[:score2]}
    #@score3=Score.all
    @score3=@score.sort_by{|e| -e[:score3]}
    #@score4=Score.all
    @score4=@score.sort_by{|e| -e[:score4]}
    #@score5=Score.all
    @score5=@score.sort_by{|e| -(e[:score1]+e[:score2])}
    #@score6=Score.all
    @score6=@score.sort_by{|e| -(e[:score3]+e[:score4])}
    @score7=@score.sort_by{|e| -(e[:score1]+e[:score2]+e[:score3]+e[:score4])}
  end
end
