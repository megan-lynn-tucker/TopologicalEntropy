function T = TopologicalEntropy(w)
%note that w must be a character array
    
    W = strlength(w);
    
    L = 0; %set logical counter to 0
    n = -1; %set n at -1 so we dont have to subtract 1 later
    while L == 0 %when the inequality is true exit the loop
        n = n + 1; %incrument n each itteration of the while
        
        n1 = 4^n + n - 1; %define the first equation
        n2 = 4^(n + 1) + (n + 1) - 1; %define the second equation
    
        L = n1 <= W & W < n2; %check when this is true
        %L = 1 when this is true, thus exiting the loop
    end
    
    p = ComplexityFunction(w, n); %find the number of n-length subwords
    logP = log(p) / log(4); %calculate log base 4 of p
    %log_4 is calcualted manually as there is no built in function
    T = logP/n; 

end