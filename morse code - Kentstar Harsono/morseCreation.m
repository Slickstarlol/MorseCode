function finalWord = morseCreation(text,encrypt)
    code =[".----";"..---";"...--";"....-";".....";"-....";"--...";"---..";"----.";...
        "-----";".-";"-...";"-.-.";"-..";".";"..-.";"--.";"....";"..";".---";"-.-";...
        ".-..";"--";"-.";"---";".--.";"--.-";".-.";"...";"-";"..-";"...-";".--";...
        "-..-";"-.--";"--.."; "..--.-"]; % Initializing morse code
    
    letter=["1";"2";"3";"4";"5";"6";"7";"8";"9";"0";"A";"B";"C";"D";"E";"F";"G";"H";
    "I";"J";"K";"L";"M";"N";"O";"P";"Q";"R";"S";"T";"U";"V";"W";"X";"Y";"Z";"-"]; % Initializing letter code
    if encrypt % Condition to encrypt morse
        text = upper(char(text)); % Converts str to upper(char)
        text(text == ' ') = '-'; % Replaces spaces for '-' (hyphen)
        finalWord = replace(text,letter,code+"/"); % Converts letter to code + "/". Finalizes as str
    else
        text = char(text); % Converts str to char
        finalWord = replace(text,code+"/",letter); % Converts code + "/" to letter. Finalizes as str
    end

        
end