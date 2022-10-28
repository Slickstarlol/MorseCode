function finalWord = morseCreation(text,encrypt)
    code =[".----";"..---";"...--";"....-";".....";"-....";"--...";"---..";"----.";...
        "-----";".-";"-...";"-.-.";"-..";".";"..-.";"--.";"....";"..";".---";"-.-";...
        ".-..";"--";"-.";"---";".--.";"--.-";".-.";"...";"-";"..-";"...-";".--";...
        "-..-";"-.--";"--.."; "..--.-"];
    
    letter=["1";"2";"3";"4";"5";"6";"7";"8";"9";"0";"A";"B";"C";"D";"E";"F";"G";"H";
    "I";"J";"K";"L";"M";"N";"O";"P";"Q";"R";"S";"T";"U";"V";"W";"X";"Y";"Z";"-"];
    if encrypt
        text = upper(char(text));
        finalWord = replace(text,letter,code+"/");
    else
        text = char(text);
        finalWord = replace(text,code+"/",letter);
    end

        
end