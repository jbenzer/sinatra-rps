require 'sinatra'
require 'sinatra/reloader'
require 'better_errors'
require 'binding_of_caller'

use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get('/') do
  "
  <p>
    <a href=\"Play_Rock\">Play Rock</a><br>
    <a href=\"Play_Paper\">Play Paper</a><br>
    <a href=\"Play_Scissors\">Play Scissors</a><br>
  </p>
  <h1>Welcome to Rock-Paper-Scissors!</h1>
  <p>From <a href=\"Wiki_link\">Wikipedia</a>:</p>
  <p>Rock-paper-scissors (also known as paper, scissors, stone or other variants) is a hand game usually played between two people, in which each player simultaneously forms one of three shapes with an outstretched hand.</p>
  <p>These shapes are:</p>
  <ul>
    <li><a><q>rock</q> (a closed fist)</a></li>
    <li><a><q>paper</q> (a flat hand)</a></li>
    <li><a><q>scissors</q> (a fist with the index fingers extended, forming a V)</a></li>
  </ul>
  <p>A player who decides to play rock will beat another player who has chosen scissors (<q>rock crushes scissors</q> or sometimes <q>blunt scissors</q>), but will lose to one who has played paper (<q>paper covers rock</q>); a play of paper will lose to a play of scissors (<q>scissors cut[s] paper</q>). If both players choose the same shape, the game is tied and is usually immediately replayed to break the tie.</p>
  "
end
