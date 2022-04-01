%This function asks the user to select the third ingredient required to 
%make the virus. It then calls the function virusNewGrade 

function thirdVingredient()
global coins;
global virusGrade 
disp("After taking the ingredient, you head over to the next building");
disp("Luckily, you face no trouble there and are able to head straight to the laboratory");
disp("As soon as you reach the laboratory, you see a lot of complex equipments");
disp("Because you have no experience with the equipments, you decide to mak the virus without them");
disp("You head over to read the 'virus and poisons' book and you realize that you need one more ingredient to complete the virus");
disp("There are three possible ingredients you can add but you can only pick one of them");
disp("The three ingredients are: 'Ronaling-30 coins', 'Amberst-20 coins' and 'Learist-10 coins'");
thirdV=input("Would you pick 1, 2 or 3?");
   switch thirdV %case switch statements used to display three different outputs
       case 1
           if (coins<30) %if statements imbedded inside case switch statements
               disp("You do not have enough coins. Better luck next time");
               lesscoins();%module responsible for checking if the user had enough coins to buy ingredients.//
               VirusNewGrade()%module responsible for creating a grade for the virus
           elseif (coins>=30)
               disp("You bought the best ingredient there was, your virus looks very promising");
               disp("Yay! You are one step ahead");
               virusGrade=virusGrade+15; %15 is numerical form of B+ showing average quality of virus//
               coins=coins-30;%coins deducted after purchase//
               VirusNewGrade()%module responsible for creating a grade for the virus
           end
       case 2
           if (coins<20)
              disp("You do not have enough coins. Better luck next time");
              lesscoins();%module responsible for checking if the user had enough coins to buy ingredients.//
              VirusNewGrade()%module responsible for creating a grade for the virus 
           elseif (coins>=20)
              disp("You bought an average ingredient. I hope you do better next time");
              disp("Yay! You are one step ahead");
              virusGrade=virusGrade+12; %12 is numerical form of B+ showing average quality of virus//
              coins=coins-20;%coins deducted after purchase//
              VirusNewGrade()%module responsible for creating a grade for the virus
           end
       case 3
           if (coins<10)
             disp("You do not have enough coins. Better luck next time");
             lesscoins();%module responsible for checking if the user had enough coins to buy ingredients.//
             VirusNewGrade()%module responsible for creating a grade for the virus
           elseif (coins>=10)
             disp("You bought a low quality ingredient. I hope you do better next time");
             disp("You are one step ahead");
             virusGrade=virusGrade+9; %9 is the numberical form for C+. This is used since this is the worst quality of ingredient//
             coins=coins-10;%coins deducted after purchase
             VirusNewGrade()%module responsible for creating a grade for the virus
           end
   end
end