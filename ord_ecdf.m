function emp = ord_ecdf(datos) 
  l = length(datos)
  emp = zeros(l,1)
  for j=1:l
      emp(j)=length(find(datos<=datos(j)))/l;
  end
end