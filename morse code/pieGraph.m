function pieGraph(text)
    B = char(num2cell(text)); % Converts str to cell array
    [totalEachNumber,Characters] = groupcounts(B); % Checks [totalEachNumber] in each letter [Characters] in B
    pie3(totalEachNumber, Characters +": "+totalEachNumber+" times") % Creates 3D pie graph
end

