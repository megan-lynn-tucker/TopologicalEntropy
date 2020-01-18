function C = ComplexityFunction(w, n) 
%note that w must be a character array

    totalSubwords = strlength(w) - (n - 1);
    %length of subwordList
    counter = 0; %count occurances of each subword
    for i = 1:totalSubwords
        subword = extractBetween(w,i,(n + i - 1)); 
        %n length subword betinning at i
        prevWords = extractBefore(w, (n + i - 1));
        %creates character array of all values of w before end of subword
        if contains(prevWords,subword) == 0 
            %checks if prevWords contains subword
            counter = counter + 1; %increase counter
        end
    end
    
    C = counter; %counter holds one more value than number of subwords
end