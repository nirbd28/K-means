function [Clusters, INDX, Err]=CalcKmeans(DataMATRIX, k, Thrsh, maxITER)
[m,n] = size(DataMATRIX); % n-number of points, m-data dim
flag_one_itr=0;% flag if one iteration has been done

%%% init centers
Clusters=InitCenters(DataMATRIX, k);

for i_iter = 1 : maxITER % run to maximum iterations
    DistanceMat=zeros(n,k);
    
    if flag_one_itr ==1
        if MaxErr<Thrsh % exit loop when MaxErr reaches Thrsh
            break;
        end
    end

%%% calculate the distance matrix
for i=1:k
   for j=1:n
       DistanceMat(j,i)=CalcDistance(Clusters(:,i), DataMATRIX(:,j));
   end   
end

%%% check the min distance from each point towards the centers and define its new cluster 
for j=1:n
    d_min=100000;
   for i=1:k
      d=DistanceMat(j,i);
      if d<d_min
          d_min=d;
          index_min=i;
      end      
   end   
   INDX(1,j)=index_min;     
end

%%% create new center for each cluster
ClustersOld = Clusters;

for i=1:k
    Mat=[];
    index=1;
   for j=1:n   
      if INDX(1,j)==i
         Mat(:,index)= DataMATRIX(:,j);
         index=index+1;
      end         
   end
   Clusters(:,i)=CalcCenter(Mat); % calculate new center for specific cluster k    
end

%%% calculate the Err vector
for i=1:k
       Err(1,i)=CalcDistance(Clusters(:,i), ClustersOld(:,i));     
end

MaxErr=max(Err); % max error of each iteration
flag_one_itr=1;

%%% plot
%Plot_dim2( DataMATRIX , Clusters , INDX , k )
    
end

end