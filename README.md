[![Build Status](https://travis-ci.org/GBouffard/rps-challenge.svg)](https://travis-ci.org/GBouffard/rps-challenge) [![Coverage Status](https://coveralls.io/repos/GBouffard/rps-challenge/badge.svg?branch=master)](https://coveralls.io/r/GBouffard/rps-challenge?branch=master)

:fist: Rock, Paper, Scissors :v:
===
This is a week end challenge from Makers Academy. The goal was to re-create the Rock, Paper, Scissors game, and also create a web interface to play the game. A bonus to the game was to make it a Rock, Paper, Scissors, Lizard, Spock game.

These were the requested functionalities:
- the player should be able to enter their name before the game
- the player will be presented the choices (rock, paper and scissors)
- the player can choose one option
- the game will choose a random option
- a winner will be declared

Heroku
----
[Guillaume's Rock Paper Scissors](https://guillaume-rps.herokuapp.com/game_play)

![](public/rps_game1)

![](public/rps_game2)

Objectives of exercise
----
To learn ruby, rspec, capybara, cucumber, sinatra, erb and and deploying an app online using Heroku.

Technologies used
----
- ruby
- rspec, capybara and cucumber
- Sinatra
- erb files
- Git
- Heroku
- StackOverflow for questions

How to run it
----
```
git clone git@github.com:GBouffard/rps-challenge.git
cd rps-challenge
bundle install
rackup
```
If you go on http://localhost:9292/, you can know play with classes; create players and play Rock-Paper-Scissors and Rock-Paper-Scissors-Spock-Lizard games

How to run tests
----
```
cd rps-challenge
rspec
cucumber
```
and this is what you should see with rspec:

![](public/rps_screenshot.png)

All the cukes are also green.
The trace is too long to do a print screen in one go :)