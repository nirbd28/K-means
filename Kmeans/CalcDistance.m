function Distance=CalcDistance( pointA, pointB) %calculate distance between 2 points

[m,n] = size(pointA);
sum=0;
for i=1:m
    
    d=pointA(i,1)-pointB(i,1);
    d=d*d;
    sum=sum+d;
end
Distance = sqrt(sum);
end