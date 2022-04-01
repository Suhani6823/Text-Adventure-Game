%This function establishes the background story and interacts with the user
%by asking for their name. It then calls the function defeatAntidote

function evilintro()
disp("You have been in prison for 5 years");
disp("You were brought here when you tried to reveal the truth about a new virus");
disp("Nobody listened to you and because of that your entire family died in a virs outbreak");
disp("Having stayed in prison for so long, you found out a secret laboratory in the very depths of the prison");
disp("with an evil giggle, you head over to the laboratory discreetly to make a new virus and take revenge. BWAHAHAHAHA");
global name;
name=input("Hello stranger, what's your name?\n",'s');
disp("Nice to meet you, "+name);
disp("since you have now chosen the evil path, you have to make the most powerful virus and infect the whole world BWAHAHAH");
start= input("so let's start shall we? (Answer yes to start)\n",'s');
if(start=="yes")
    defeatAntidote()%module responsible for evil path (creating virus)//
else
    disp("You have no other choice BWAHAHAHA");
    defeatAntidote()%module responsible for evil path (creating virus)//

end
end

   