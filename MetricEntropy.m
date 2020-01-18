function M = MetricEntropy(w, alphabetSize) 
%note that w must be a character array
    
    letterList = {}; 
    %blank character array; will hold all values of w with no repeats
    counter = 1; %itterates through letterList
    for i = 1:alphabetSize
        letter = extractBetween(w,i,i); %i'th value of w
        prevLetters = extractBefore(w, i); 
        %creates a character array of all values of w before i
        if contains(prevLetters,letter) == 0 
            %checks if prevLetters contains letter
            letterList{counter} = letter; 
            %if not, input that character into letterList
            counter = counter + 1; %increase counter
        end
    end

    letterTotal = []; 
    %blank vector; holds number of occurances of each letter in letterList
    for i = 1:(counter - 1) 
        %counter holds one more value than length of letterLis; subtract 1
        letterTotal(i) = count(w, letterList{i}); 
        %counts how many times each letter in letterList occurs in w
    end 
    
    H = 0; %set entropy to zero
    for i = 1:(counter - 1) %same as previous for loop
        P_i = letterTotal(i)/alphabetSize; 
        %calculate the probability of occurance of each letter
        H = P_i*log(P_i) + H; 
        %sum of the probabilities and logarithms for each letter
    end
    
    M = -H; %make the values positive
end