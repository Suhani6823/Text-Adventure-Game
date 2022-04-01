%This function establishes the background story and asks the user to answer
%2 riddles. It then calls the firstVingredient function.

function defeatAntidote()
disp("At our lab here, we have quite a lot of ingredients and potions that can make a powerful virus");
disp("But ofcourse, nothing in the world is free");
disp("I will, so very generously, give you 70 coins but remember..");
disp("The most powerful virus has the most expensive and best quality ingredients so spend you money carefully");
disp("oh and along the way, you will either make or lose money based on your choices");
disp("choose wisely and dont get infected by your own virus :)");
global coins;
coins=coins+70; %adding 70 coins for user to play
disp("on your way to the lab, you hear some prison-guards coming your way");
disp("You see a door to your right and try to open the door but it's locked");
disp("To get in, you need to solve the riddle and guess the password");
answer=input("What has hands but cannot clap? Option 1:a dead person, Option 2: a clock, Option 3: your pet dog\n"); %first riddle, riddles allow the user to earn coins to purchase ingredients
if (answer==2)
    disp("Good job!. Looking around the room you see a clock. Peering in closely you a very thing while envelope very carefully hidden under the clock");
    disp("You reach out, take the envelope and open it to find the key to the door!");
    disp("+key, no lives lost");
    disp("Time for bonus round!(bonus rounds will pop up once in a while and you get a chance to earn some extra money if you get the right answer)");
    disp("Here are the rules:");
    disp("1: You get 20 coins if you get a correct answer");
    disp("2: You lose 20 coins if you answer incorrectly");
    disp("3: If you don't know the answer just type 'idk' and you neither lose coins or gain coins");
    disp("I hope you are ready coz here we go!!");
    riddle=input("If the letter 'I = 11'; then what are the letters, 'A, D, F, B'\n"); %second riddle
    if (riddle==3684)
        disp("You manage to get the right number which also happens to be the correct password for the safe that you saw in the room\n");
        coins=coins+20; %coins added for correct answer
        disp("You have a total of "+coins+" coins.");
        firstVingredient()%calls the module responsible for selecting the first virus ingredient//
    else
        disp("You got the wrong answer");
        coins=coins-20;
        disp("You have a total of "+coins+" coins.");
        disp("20 coins deducted but regardless, let's move on.");
        firstVingredient() %calls the module responsible for selecting the first virus ingredient//
    end
else
disp("You didn't get the answer right in time and the guards see you");
coins=coins-30;%coins deducted because of wrong answer//
disp("The guards think you were trying to escape and shoot you, they also take away some of your coins, -30 coins");
fprintf(2, 'You will have to restart\n');
Final_Project();    
end
end