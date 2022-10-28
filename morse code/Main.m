clear all; close all; 
clc; clear;
%stuff = morseCreation("...././.-../.-../---/",false)
%pie(categorical(num2cell(stuff)))
while true
    keyWord = input("Type a word or a code.\n","s");
    if (all(isstrprop(keyWord, 'punct')==1))
        stuff = morseCreation(keyWord,false)
        pieGraph(stuff);
    else
        stuff = morseCreation(keyWord,true)
    end
end
