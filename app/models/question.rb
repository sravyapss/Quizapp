class Question < ApplicationRecord
  validates_presence_of :subgenre_name
  validates_presence_of :question1
  validates_uniqueness_of :question1
  validates_presence_of :option1
  validates_presence_of :option2
  validates_presence_of :option3
  validates_presence_of :option4
  validates_presence_of :question_type
end

ques=Question.new(subgenre_name: "Cricket",question_type: "single",question1: "The world’s top cricketers were auctioned off for the DLF Indian Premier League in Mumbai on February 20, 2008. Which cricketer attracted the highest price ? ",option1: "Sachin Tendulkar (India) ",option2: "Mahendra Singh Dhoni (India) ",option3: "Andrew Symonds (Australia) ",option4: "Sanath Jayasuriya (Sri Lanka) ",answer1: 0,answer2: 1,answer3: 0,answer4: 0)
ques.save
ques=Question.new(subgenre_name: "Cricket",question_type: "single",question1: "Who won the Deodhar Trophy Cricket played in Mumbai on March 9, 2010 ? ",option1: "North Zone",option2: "West Zone",option3: "South Zone",option4: "East Zone",answer1: 1,answer2: 0,answer3: 0,answer4:0)
ques.save
ques=Question.new(subgenre_name: "Cricket",question_type: "single",question1: "Who holds the record for the highest number of runs in Test Cricket ?",option1: "Sunil Gavaskar ",option2: "Geoffrey Boycott ",option3: "Sachin Tendulkar ",option4: "Gary Sobers ",answer1: 0,answer2: 0,answer3: 1,answer4:0 )
ques.save
ques=Question.new(subgenre_name: "Cricket",question_type: "single",question1: " The cricketer who became the brand Ambassador of ‘Indigo Nation’ is— ",option1: "Sachin Tendulkar ",option2: "Sourav Ganguly ",option3: "Anil Kumble ",option4: "Ajay Ratra ",answer1: 0,answer2: 0,answer3: 1,answer4: 0)
ques.save
ques=Question.new(subgenre_name: "Cricket",question_type: "single",question1: "The highest wicket taker in test matches is now",option1: "Shane Warne ",option2: "Muthia Murlitharan ",option3: "Kapil Dev ",option4: "Dennis Lillee ",answer1: 0,answer2: 1,answer3: 0,answer4: 0)
ques.save
ques=Question.new(subgenre_name: "Cricket",question_type: "multiple",question1: "Who among the following are Indian Cricketers?",option1: "MS Dhoni",option2: "Shane Warne",option3: "Sachin Tendulkar",option4: "Gautam Gambhir",answer1: 1,answer2: 0,answer3: 1,answer4: 1)
ques.save
ques=Question.new(subgenre_name: "Cricket",question_type: "multiple",question1: "In which years did India win the world cup?",option1: "1983",option2: "1987",option3: "2011",option4: "2015",answer1: 1,answer2: 0,answer3: 1,answer4:0)
ques.save
ques=Question.new(subgenre_name: "Cricket",question_type: "multiple",question1: "Which country will host 2015–Cricket World Cup",option1: "India",option2: "Pakistan",option3: "Australia",option4: "New Zealand",answer1: 0,answer2: 0,answer3: 1,answer4:1)
ques.save
ques=Question.new(subgenre_name: "Football",question_type: "single",question1: "What kind of animal is Fuleco, the mascot for FIFA World Cup 2014?",option1: "Giant Anteater",option2: "Alpaca",option3: "Armadillo",option4: "Otter",answer1: 0,answer2: 0,answer3: 1,answer4: 0)
ques.save
ques=Question.new(subgenre_name: "Football",question_type: "single",question1: "Brazil has the most number of World Cup titles to its credit. How many times has it won the World Cup so far?",option1:"4",option2: "5",option3: "6",option4: "7",answer1: 0,answer2: 1,answer3: 0,answer4: 0)
ques.save
ques=Question.new(subgenre_name: "Football",question_type: "single",question1: "In which year was the football World Cup held for the first time?",option1: "1930",option2: "1928",option3: "1924",option4: "1934",answer1: 1,answer2: 0,answer3: 0,answer4: 0)
ques.save
ques=Question.new(subgenre_name:"Football",question_type: "single",question1:"Which country won the first football World Cup?",option1: "Brazil",option2: "Germany",option3: "Argentina",option4: "Uruguay",answer1: 0,answer2: 0,answer3: 0,answer4: 1)
ques.save
ques=Question.new(subgenre_name:"Football",question_type: "multiple",question1:"When did Uruguay win FIFA?",option1: "1930",option2: "1934",option3: "1938",option4: "1950",answer1: 1,answer2: 0,answer3: 0,answer4: 1)
ques.save
ques=Question.new(subgenre_name:"Football",question_type: "multiple",question1:"When did Italy win FIFA?",option1: "1930",option2: "1934",option3: "1938",option4: "1954",answer1: 0,answer2:1,answer3: 1,answer4: 0)
ques.save
ques=Question.new(subgenre_name:"Football",question_type: "single",question1: "In which country is FIFA World Cup 2018 scheduled to be played?",option1:"Qatar",option2: "Russia",option3: "France",option4: "South Korea",answer1: 0,answer2: 1,answer3: 0,answer4: 0)
ques.save
ques=Question.new(subgenre_name:"Football",question_type: "multiple",question1: "Which teams won FIFA 4 times?",option1: "Germany",option2: "Italy",option3: "India",option4: "France",answer1: 1,answer2: 1,answer3: 0,answer4: 0)
ques.save
ques=Question.new(subgenre_name:"Bollywood",question_type: "single",question1: "Which film is similar to A Kiss Before Dying?",option1: "Border",option2: "koharram",option3: "Dil",option4: "Baazigar",answer1:0 ,answer2:0 ,answer3:0 ,answer4:1 )
ques.save
ques=Question.new(subgenre_name:"Bollywood",question_type: "single",question1: "Which of the following actresses was born on the Ides of March?",option1: "Anushka Sharma",option2: "Alia Bhatt",option3: "Katrina Kaif",option4: "Kareena Kapoor",answer1:0 ,answer2:1 ,answer3:0 ,answer4:0 )
ques.save
ques=Question.new(subgenre_name:"Bollywood",question_type: "single",question1: "Which is the first Indian movie submitted for Oscar",option1: "The Guide",option2: "Mother India",option3: "Madhumati",option4: "Amrapali",answer1:0 ,answer2:1 ,answer3:0 ,answer4:1 )
ques.save
ques=Question.new(subgenre_name:"Bollywood",question_type: "single",question1: "Satyajit roy won Oscar in the year",option1: "1992",option2: "1994",option3: "1986",option4: "1990",answer1: 1,answer2: 0,answer3: 0,answer4: 0)
ques.save
ques=Question.new(subgenre_name:"Bollywood",question_type: "single",question1: "First Indian sound film was",option1: "Alam Ara",option2: "raja Harishchandra",option3: "Kishan Kanya",option4: "None of the above",answer1:1 ,answer2:0 ,answer3:0 ,answer4:0 )
ques.save
ques=Question.new(subgenre_name:"Bollywood",question_type: "multiple",question1: "Which of the following are films of Shah Rukh Khan",option1: "PK",option2: "Dilwale Dulhania Le Jayenge",option3: "Kuch Kuch Hota Hai",option4: "BaadShah",answer1:0 ,answer2:1 ,answer3: 1,answer4: 1)
ques.save
ques=Question.new(subgenre_name:"Bollywood",question_type: "multiple",question1: "Which of the following are Aamir Khan movies?",option1: "Dangal",option2: "PK",option3: "Dhoom3",option4: "3 idiots",answer1: 1,answer2: 1,answer3: 1,answer4: 1)
ques.save
ques=Question.new(subgenre_name:"Bollywood",question_type: "multiple",question1: "Which of the following are Salman Khan movies?",option1: "Sultan",option2: "Tubelight",option3: "Kick",option4: "BodyGaurd",answer1:1 ,answer2:1 ,answer3: 1,answer4: 1)
ques.save
ques=Question.new(subgenre_name:"Hollywood",question_type: "single",question1: "For which movie did Kathryn Bigelow get the Academy Award, thus becoming the first woman to get the Oscar for Best Director?",option1: "The Artist ",option2: "The Hurt Locker",option3: "The King's Speech",option4: "Gravity",answer1:0 ,answer2:1 ,answer3:0 ,answer4: 0)
ques.save
ques=Question.new(subgenre_name:"Hollywood",question_type: "single",question1: "Name the 1959 historical drama set in ancient Rome that won 11 Oscars.",option1: "Spartacus",option2: "Ben-Hur",option3: "The Centurion",option4: "The Fall of the Roman Empire ",answer1:0 ,answer2:1 ,answer3:0 ,answer4:0 )
ques.save
ques=Question.new(subgenre_name:"Hollywood",question_type: "single",question1: "Who directed 'The Dark Knight'(2008)?",option1: "Christopher Nolan",option2: "Zack Snyder ",option3: "Richard Donner",option4: "None of the Above",answer1:1 ,answer2:0 ,answer3:0 ,answer4:0 )
ques.save
ques=Question.new(subgenre_name:"Hollywood",question_type: "single",question1: "Which Roland Emmerich movie portrays fictional cataclysmic events that were to take place in the early 21st century?",option1: "The Noah's Ark Principle",option2: "10,000 BC",option3: "2012",option4: "Moon 44",answer1:0 ,answer2:0 ,answer3:1 ,answer4:0 )
ques.save
ques=Question.new(subgenre_name:"Hollywood",question_type: "single",question1: "What is the name of the young lion whose story is told in the musical 'The Lion King'?",option1: "Simba",option2: "Leo",option3: "Sheru",option4: "Tangent",answer1:1 ,answer2:0 ,answer3:0 ,answer4:0 )
ques.save
ques=Question.new(subgenre_name:"Hollywood",question_type: "multiple",question1: "In which of the following films did Emma Watson act?",option1: "Harry Potter and The Sorcerer stone",option2: "My Week with Marilyn",option3: "The Bling Ring",option4: "This is the End",answer1:1 ,answer2: 1,answer3: 1,answer4: 1)
ques.save
ques=Question.new(subgenre_name:"Hollywood",question_type: "multiple",question1: "Which of the following are Oscar award winning films?",option1: "Titanic",option2: "The Bling Ring",option3: "Ben-Hur",option4: "Gigi",answer1:1 ,answer2:0 ,answer3:1 ,answer4:1 )
ques.save
ques=Question.new(subgenre_name:"Hollywood",question_type: "multiple",question1: "Which of the following are Brad Pitt movies?",option1: "Hunk",option2: "No Way Out",option3: "Less Than Zero",option4: "Cutting Class",answer1:1 ,answer2:1 ,answer3:1 ,answer4:1 )
ques.save
