function pieGraph(text)
    B = char(num2cell(text)); % Converts str to cell array
    [totalEachNumber,Characters] = groupcounts(B); % Checks [totalEachNumber] in each letter [Characters] in B
    pie3(totalEachNumber, logical(totalEachNumber == max(totalEachNumber)).'... % Explodes using logic array for max(char) in text
        ,num2cell(Characters +": "+int2str(totalEachNumber)+" times")) % Creates 3D pie graph
    title({"Characters used in the word:",text}) %Initializing pie title
end

%pie(categorical(num2cell(stuff)))  %Additional 2D graph