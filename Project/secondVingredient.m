%This function is responsbile for asking the user to select the second ingredient 
%required for making the virus. It then calls the function luckyroll1.

function secondVingredient()
global coins;
global virusGrade;
disp("You carefully peek outside the door to check if the guards are gone and thankfully they have.");
disp("The are only 2 buildings that stand between you and the laboratory.");
disp("You approach the first building and see a witch concocting a potion.");
disp("In this world that you live in, it is pretty normal for magical creatures to show themselves when they don't feel threatened");
disp("You approach the witch, keeping in mind to hide yourself from her so you don't appear threatening or suspicious");
disp("You gasp when you see a very beautiful but very rare unicorn horn on the ground near the witch");
disp("At that very moment, the witch goes inside the building to fetch more ingredients");
disp("You approach the place where she was working");
disp("You decide to take another ingredient but also feeling a little guilty for stealing, you decide to leave some money on the ground and take the ingredient");
disp("The three ingredients are: 'Unicorn horn-30 coins', 'The witch's potion-20 coins' and a supposedly magical 'golden-red leaf-10 coins'");
secondV=input("Would you pick 1, 2 or 3?\n");%user input//
   switch secondV %case switch statements used to display three different outputs
       case 1
           if (coins<30) %if statements imbedded inside case switch statements
               disp("You do not have enough coins. Better luck next time");
               lesscoins();%module responsible for checking if the user had enough coins to buy ingredients.//
               luckyroll1()%module responsible for generating random number between 1-10 and comparing the random number with the user input//
           elseif (coins>=30)
               disp("You bought the best ingredient there was, your virus looks very promising");
               disp("Yay! You are one step ahead");
               virusGrade=virusGrade+15; %15 is numerical form of B+ showing average quality of virus//
               coins=coins-30;%coins deducted after purchase//
               luckyroll1();%module responsible for generating random number between 1-10 and comparing the random number with the user input//
           end
       case 2
           if (coins<20)
              disp("You do not have enough coins. Better luck next time");
              lesscoins();%module responsible for checking if the user had enough coins to buy ingredients.//
              luckyroll1()%module responsible for generating random number between 1-10 and comparing the random number with the user input// 
           elseif (coins>=20)
              disp("You bought an average ingredient. I hope you do better next time");
              disp("Yay! You are one step ahead");
              virusGrade=virusGrade+12; %12 is numerical form of B+ showing average quality of virus//
              coins=coins-20;%coins deducted after purchase//
              luckyroll1();%module responsible for generating random number between 1-10 and comparing the random number with the user input//
           end
       case 3
           if (coins<10)
             disp("You do not have enough coins. Better luck next time");
             lesscoins();%module responsible for checking if the user had enough coins to buy ingredients.//
             luckyroll1()%module responsible for generating random number between 1-10 and comparing the random number with the user input//
           elseif (coins>=10)
             disp("You bought a low quality ingredient. I hope you do better next time");
             disp("You are one step ahead");
             virusGrade=virusGrade+9; %9 is the numberical form for C+. This is used since this is the worst quality of ingredient//
             coins=coins-10;%coins deducted after purchase
             luckyroll1();%module responsible for generating random number between 1-10 and comparing the random number with the user input//
           end
   end
end