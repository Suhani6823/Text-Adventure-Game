%This function is asks the user to select a number from 1-10 and then 
%compared the selected number to a random number. If the numbers match, the 
%user gets bonus coins

function luckyroll1()
global coins;
global randomnumber;
disp("Lucky bonus time!!");
disp("This time, you will guess a random number from 1-10 and if you guess the right number, you get 30 coins!!");
disp("Lucky for you, you don't lose any coins if you give a wrong answer either");
luckyanswer=input("So what will your number be?");
if (luckyanswer==randomnumber)%comparing user input with random number
 
 alert("Congratualtions! You win 50 coins!");
 coins=coins+50;
 thirdVingredient()%calls the module resposnsible for the third virus ingredient//
 
else
 
 disp("Better luck next time"); 
 thirdVingredient();
end
end