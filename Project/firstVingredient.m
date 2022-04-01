%This function asks the user to select the first ingredient required to make 
%the virus. It then calls the function secondVingredient.

function firstVingredient()
global coins;
global virusGrade;
disp("You open the safe in the room and see 3 ingredients inside but you can only take one of them");
disp("There's one ingredient that shines in the dark room but you need to pay for any of the ingredient that you pick");
disp("The three ingredients are: 'Metorananium-30 coins', 'Calorium-20 coins', 'Andormine-10 coins'"); %three virus ingredients with their price
first=input("Would you like to pick 1,2 or 3?\n");
switch first %case switch statements used to display three different outputs
       case 1
           if (coins<30) %if statements imbedded inside case switch statements
               disp("You do not have enough coins. Better luck next time");
               lesscoins();%module responsible for checking if the user had enough coins to buy ingredients.//
               secondVingredient()%calls module responsible for second virus ingredient//
           elseif (coins>=30)
               disp("You bought the best ingredient there was, your virus looks very promising");
               disp("Yay! You are one step ahead");
               virusGrade=virusGrade+15; %15 is numerical form of B+ showing average quality of virus//
               coins=coins-30;%coins deducted after purchase//
               secondVingredient();%calls module responsible for second virus ingredient//
           end
       case 2
           if (coins<20)
              disp("You do not have enough coins. Better luck next time");
              lesscoins();%module responsible for checking if the user had enough coins to buy ingredients.//
              secondVingredient()%calls module responsible for second virus ingredient// 
           elseif (coins>=20)
              disp("You bought an average ingredient. I hope you do better next time");
              disp("Yay! You are one step ahead");
              virusGrade=virusGrade+12; %12 is numerical form of B+ showing average quality of virus//
              coins=coins-20;%coins deducted after purchase//
              secondVingredient();%calls module responsible for second virus ingredient//
           end
       case 3
           if (coins<10)
             disp("You do not have enough coins. Better luck next time");
             lesscoins();%module responsible for checking if the user had enough coins to buy ingredients.//
             secondVingredient()%calls module responsible for second virus ingredient//
           elseif (coins>=10)
             disp("You bought a low quality ingredient. I hope you do better next time");
             disp("You are one step ahead");
             virusGrade=virusGrade+9; %9 is the numberical form for C+. This is used since this is the worst quality of ingredient//
             coins=coins-10;%coins deducted after purchase
             secondVingredient();%calls module responsible for second virus ingredient//
           end
        otherwise
           disp("Please choose between 1-3");
           firstVingredient();
           
end
end
           
           
         
       
     