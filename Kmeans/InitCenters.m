function Clusters = InitCenters(DataMATRIX, k)
[m,n] = size(DataMATRIX);% m=dim

size1=n/k;
index2=1;
    for j=1:k
        index1=1;
        Mat=[];
        while index1<size1
            Mat(:,index1) = DataMATRIX(:,index2);
            index2=index2+1;
            index1=index1+1;
        end   
        
        Clusters(:,j)= CalcCenter(Mat);   
    end 
end