function [summa, ind] = max_sum(v,n)
    
    if n > length(v)
        summa = 0;
        ind = -1;
        return;
    end
   
    summa = -inf;
    ind = -1;

    for ii = 1:length(v)-n+1
        currentV = v(ii:(ii+n-1));
        currentSumma = sum(currentV);

        if currentSumma > summa
            summa = currentSumma;
            ind = ii;
        end
    end
end