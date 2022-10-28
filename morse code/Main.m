clear all; close all; 

%stuff = morseCreation("...././.-../.-../---/",false)
%pie(categorical(num2cell(stuff)))

%charCell = unique(stuff)
%n = histcounts(stuff,charCell)

stuff = morseCreation("-.-./---/...-/../-../.----/----./..--.-/.--./.-/-./-.././--/../-.-./..--.-/...-/.-/-.-./-.-./../-././",false)
B = char(num2cell(stuff));
[A,C] = groupcounts(B);

%pie(categorical(num2cell(stuff)))
pie3(A, C +": "+A+" times")