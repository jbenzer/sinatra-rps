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
  <p>From <a href=\"https://en.wikipedia.org/wiki/Rock%E2%80%93paper%E2%80%93scissors\" target=_blank>Wikipedia</a>:</p>
  <p>Rock-paper-scissors (also known as paper, scissors, stone or other variants) is a hand game usually played between two people, in which each player simultaneously forms one of three shapes with an outstretched hand.</p>
  <p>These shapes are:</p>
  <ul>
    <li><a><q>rock</q> (a closed fist)</a></li>
    <li><a><q>paper</q> (a flat hand)</a></li>
    <li><a><q>scissors</q> (a fist with the index fingers extended, forming a V)</a></li>
  </ul>
  <p>A player who decides to play rock will beat another player who has chosen scissors (<q>rock crushes scissors</q> or sometimes <q>blunt scissors</q>), but will lose to one who has played paper (<q>paper covers rock</q>); a play of paper will lose to a play of scissors (<q>scissors cut[s] paper</q>). If both players choose the same shape, the game is tied and is usually immediately replayed to break the tie.</p>
  <table border=1>
    <tbody>
      <tr>
        <td rowspan=2 colspan=2></td>
        <td colspan=3>and they play...</td>
      </tr>
      <tr>
        <td>Rock</td>
        <td>Paper</td>
        <td>Scissors</td>
      </tr>
      <tr>
        <td rowspan=3>If we play...</td>
        <td>Rock</td>
        <td>We tie</td>
        <td>We lose</td>
        <td>We win</td>
      </tr>
      <tr>
        <td>Paper</td>
        <td>We win</td>
        <td>We tie</td>
        <td>We lose</td>
      </tr>
      <tr>
        <td>Scissors</td>
        <td>We lose</td>
        <td>We win</td>
        <td>We tie</td>
      </tr>
    </tbody>
  </table>
  <p>
  Originating from China and Japan, other names for the game in the English-speaking world include roshambo and other orderings of the three items, with <q>rock</q> sometimes being called <q>stone</q>.
  </p>
  <div>
    <img src=https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Rock-paper-scissors.svg/627px-Rock-paper-scissors.svg.png>
  </div>
  <p>
  A chart showing how the three games interact</p>
  <div>
    <img src=https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg/640px-Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg>
  </div>
  <p>
  Kitsune-ken was a popular Japanese rock-paper-scissors variant.</p>
  <div>
    <img src=https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg/640px-Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg>
  </div>
  <p>
  Mushi-ken, the earliest Japanese sansukumi-ken game (1809). From left to right: slug (namekuji), frog (kawazu) and snake (hebi).</p>
  "
end

get("/Play_Rock") do
  
  message0 = "We played rock!"
  options = ["rock", "paper", "scissors"]
  pick = options.sample()
  if pick == "rock"
    message1 = "They played rock!"
    message2 = "We tied!"
  elsif pick == "paper"
    message1 = "They played paper!"
    message2 = "We lost!"
  else
    message1 = "They played scissors!"
    message2 = "We won!"
  end

  "
  <p>
    <a href=\"Play_Rock\">Play Rock</a><br>
    <a href=\"Play_Paper\">Play Paper</a><br>
    <a href=\"Play_Scissors\">Play Scissors</a><br>
  </p>
  <h2>#{message0}</h2>
  <h2>#{message1}</h2>
  <h2>#{message2}</h2>
  <p>
    <a href=\"/\">Rules</a>
  </p>
  "
end

get("/Play_Paper") do
  
  message0 = "We played paper!"
  options = ["rock", "paper", "scissors"]
  pick = options.sample()
  if pick == "rock"
    message1 = "They played rock!"
    message2 = "We won!"
  elsif pick == "paper"
    message1 = "They played paper!"
    message2 = "We tied!"
  else
    message1 = "They played scissors!"
    message2 = "We lost!"
  end

  "
  <p>
    <a href=\"Play_Rock\">Play Rock</a><br>
    <a href=\"Play_Paper\">Play Paper</a><br>
    <a href=\"Play_Scissors\">Play Scissors</a><br>
  </p>
  <h2>#{message0}</h2>
  <h2>#{message1}</h2>
  <h2>#{message2}</h2>
  <p>
    <a href=\"/\">Rules</a>
  </p>
  "
end

get("/Play_Scissors") do
  
  message0 = "We played scissors!"
  options = ["rock", "paper", "scissors"]
  pick = options.sample()
  if pick == "rock"
    message1 = "They played rock!"
    message2 = "We lost!"
  elsif pick == "paper"
    message1 = "They played paper!"
    message2 = "We won!"
  else
    message1 = "They played scissors!"
    message2 = "We tied!"
  end

  "
  <p>
    <a href=\"Play_Rock\">Play Rock</a><br>
    <a href=\"Play_Paper\">Play Paper</a><br>
    <a href=\"Play_Scissors\">Play Scissors</a><br>
  </p>
  <h2>#{message0}</h2>
  <h2>#{message1}</h2>
  <h2>#{message2}</h2>
  <p>
    <a href=\"/\">Rules</a>
  </p>
  "
end
