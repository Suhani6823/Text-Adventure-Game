%This project is a text-based game where the user is required to make a
%vivirus. The user has to make different choices and solve riddles in order
%to make the best virus possible.

%This is the main function that is responsible for running the entire program 
%by calling all of the other required functions

function project()
global name; %global variables
global coins;
global randomnumber;
global virusGrade;
global Vname;
global VVgrade;
global counter;
global summary1;

counter=0;

begin=input("Are you ready to play? (Enter 1 to begin)\n");
while (begin==1)
        %initializing
        coins=0;
        virusGrade=0;
        antidoteGrade=0;
        counter=counter+1;
        evilintro();%calls all the modules required for the good path

begin=input("Would you like to play again or view your summary? (Enter 1 to play again)");
   
end
end
 
 
 