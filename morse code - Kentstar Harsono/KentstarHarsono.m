clear all; close all; % Clearing all processes
clc; clear; % Clear workspace and window

wordsInputed = []; %Storing inputed words (Doesn't check for Duplicates)
while true
    keyWord = input("Type a word or a code.\n","s"); % Input feature
    if (all(isstrprop(keyWord, 'punct')==1)) % If punctuations included in input (morse or random symbol)
        try % If morse code
            stuff = morseCreation(keyWord,false) % Decyphers code
            wordsInputed = [cell(wordsInputed),stuff]; % Allocates stuff into wordsInputed
            for i=1:length(wordsInputed)
                subplot(1,length(wordsInputed),i) %Allocates wordsInputed into subplots
                pieGraph(wordsInputed{i}); % Creates pie graph
            end
        catch % If symbols don't match morse code
            disp("Sorry. Those symbols aren't included in the morse code.")
        end
    else
            stuff = morseCreation(keyWord,true)  % Word → Morse Code
    end
end
