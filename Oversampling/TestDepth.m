function[LM, PD1, PD2]=TestDepth(data1,data2)

[f1,~]=size(data1);

[f2,~]=size(data2);

data = [data1

    data2];

for j=1:f1+f2

    for i=1:f1

    I1(i)=norm(data(j,:)-data1(i,:),1);

    end

    D1(j)=sum(I1);

    for k=1:f2

    I2(k)=norm(data(j,:)-data2(k,:),1);

    end

    D2(j)=sum(I2);

end

PD1=1-D1/sum(D1);%medida de profundidad de los datos en data1

PD2=1-D2/sum(D2);%medida d eprofundidad de losdatos en data2

plot(PD1,PD2,'o')

LM=fitlm(PD1,PD2);
