%This is the function responsible for calculating virus grades. Virus grades are
%based on the quality of the ingredients that the user selected to make the virus.

function VirusNewGrade()
global virusGrade;
global name;
global counter;
global VVgrade
disp("Now that you have collected all the three ingredients for the virus. It's time to create the virus");
disp("Based on the ingredients you have selected, you will receive a virus grade.");
disp("This grade will tell you how toxic your virus is. The higher the grade the better your virus.");
Vgrade=(virusGrade/45)*15;%Virus grade is divided by 45 as 45 is the highest number possible for variable virusGrade. This statement takes the marks out of 45 the user obtained and divides it by the total number (45). The answer is then multiplied by 15 (15 is considered A+) to calculate the Virus grade// 
if (Vgrade==9)
 
 Vname="Rolasia";%virus name//
 VVgrade="C+";%grade of the virus//
 disp("The virus you have created will now be known as 'Rolasia' and it's grade is C+");
 disp("This virus is as harmful as a common cold. Epic failure.")
 
 
elseif (Vgrade>9 && Vgrade<=10)%if Vgrade is between 9 and 10, also including the number 10//
 
 Vname="Anonimanious";
 VVgrade="B-";
 disp("The virus you have created will now be known as 'Anonimanious' and it's grade is B-");
 disp("This virus is barely even harmful. What a failure.");

 
 elseif (Vgrade>10 && Vgrade<=11)%if Vgrade is between 10 and 11, also including the number 11//
 
 Vname="Metocrinin";
 VVgrade="B";
 disp("The virus you have created will now be known as 'Metocrinin' and it's grade is B");
  
 elseif (Vgrade>11 && Vgrade<=12)%if Vgrade is between 11 and 12, also including the number 12//
 
 Vname="Movid-20";
 VVgrade="B+";
 disp("The virus you have created will now be known as 'Movid-20' and it's grade is B+");
 
 
 elseif (Vgrade>12 && Vgrade<=13)%if Vgrade is between 12 and 13, also including the number 13//
 
 Vname="Lorasia";
 VVgrade="A-";
 disp("The virus you have created will now be known as 'Lorasia' and it's grade is A-");
 disp("This virus lasted for only a month before the antidote was found"); 
 
 
elseif (Vgrade>13 && Vgrade<=14)%if Vgrade is between 13 and 14, also including the number 14//
 
 Vname="Solarias";
 VVgrade="A";
 disp("The virus you have created will now be known as 'Solarius' and it's grade is A");
 disp("This virus was very effective but the antidote was found easily");
 
 
 elseif (Vgrade>14 && Vgrade<=15)%if Vgrade is between 14 and 15, also including the number 15//
 
 Vname="Tesavirus";
 VVgrade="A+";
 disp("The virus you have created will now be known as 'Tesavirus' and it's grade is A+");
 disp("This is the most powerful virus in the history of humanity. The cure is still unknown");
 disp("Congratulations! You have created the most powerful virus in the game");
  
end
disp("Player name: "+name);
disp("times played: "+counter);
disp("Grade achieved: "+VVgrade);
end