%This function is used to check if the user has sufficient coins to be able to
%purchase an ingredient

function lesscoins()
global coins;
if (coins<10)
  disp("Sorry you dont have enough coins");
  disp("You have to restart");
  project();
end
end