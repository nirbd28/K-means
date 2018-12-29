function Plot_dim2( DataMATRIX, Clusters, INDX, k )

[m,n] = size(DataMATRIX);
figure();
for i=1:n
   hold on
   if INDX(i)==1
       scatter(DataMATRIX(1,i),DataMATRIX(2,i),'r') 
   elseif INDX(i)==2
       scatter(DataMATRIX(1,i),DataMATRIX(2,i),'b') 
   elseif INDX(i)==3
       scatter(DataMATRIX(1,i),DataMATRIX(2,i),'g')
   end
end

for i=1:k
    hold on
    scatter(Clusters(1,i),Clusters(2,i),'*','k') 
end

legend('cluster1','cluster2','cluster3');
legend('off');

end