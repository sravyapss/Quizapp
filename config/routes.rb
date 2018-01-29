Rails.application.routes.draw do
 # get 'admin/index'

 # get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

 # resources :users

  post 'users' => 'users#create'
  controller :users do
    get 'signup' => :new
    delete 'signout' => :destroy
  end

  get 'admin' => 'admin#index'
  controller :sessions do
  	get 'login/user' => :new
    get 'login/admin' => :new2
  	post 'login/user' => :create1
    post 'login/admin' => :create2
  	get 'logout' => :destroy
  end

  controller :question do
    get 'question' => :list
  end

  controller :admin do
    get 'questions' => :list
    get 'questions/create' => :new
    post 'questions/create' => :create
    get 'questions/delete' => :delete
    get 'questions/edit/:id' => :edit
    patch 'questions/update/:id' => :update
    get 'users/list' => :listusers
    get 'users/delete' => :deleteusers
  end
  controller :quiz do
    get 'quizzes' => :list
    get 'quizzes/quiz1/start' => :list1
    get 'quizzes/quiz1/continue' => :list12
    get 'cdata' => :cdata
    get 'quizzes/quiz1/:id' => :edit1
    patch 'quizzes/quiz1/:id' => :submit1
    get 'quizzes/score1' => :tell_score1
    get 'quizzes/quiz2/start' => :list2
    get 'quizzes/quiz2/continue' => :list22
    get 'quizzes/quiz2/:id' => :edit2
    patch 'quizzes/quiz2/:id' => :submit2
    get 'quizzes/score2' => :tell_score2
    get 'quizzes/quiz3/start' => :list3
    get 'quizzes/quiz3/continue' => :list32
    get 'quizzes/quiz3/:id' => :edit3
    patch 'quizzes/quiz3/:id' => :submit3
    get 'quizzes/score3' => :tell_score3
    get 'quizzes/quiz4/start' => :list4
    get 'quizzes/quiz4/continue' => :list42
    get 'quizzes/quiz4/:id' => :edit4
    patch 'quizzes/quiz4/:id' => :submit4
    get 'quizzes/score4' => :tell_score4
    get 'quizzes/analysis' => :analysis
  end
  controller :score do
    get '/quizzes/leaderboard' => :leaderboard
  end
  root 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
