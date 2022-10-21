function table = freq_table(datos,nclases)
    table = zeros(nclases,4);
    [n,m] = size(datos);
    min_ = min(datos);
    max_ = max(datos);
    rango = max_-min_;
    band_width = rango/nclases;
    table(1,1) = min_;
    table(1,2) = min_+ band_width;
    table(1,3) = length(find(datos>=table(1,1) & datos<table(1,2)))/n;
    table(1,4) = table(1,3);
    for i=2:nclases
        table(i,1) = table(i-1,1)+band_width;
        table(i,2) = table(i-1,2)+band_width;
        if i<nclases
            table(i,3) = length(find(datos>=table(i,1) & datos<table(i,2)))/n;
        else
            table(i,3) = length(find(datos>=table(i,1) & datos<=table(i,2)))/n;
        end
        table(i,4) = table(i-1,4)+table(i,3);
    end
end
