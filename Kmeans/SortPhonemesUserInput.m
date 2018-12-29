function PhonemMat = SortPhonemesUserInput(numOfP, INDX) %read phonemes end from user input 
[m,n] = size(INDX);

p_mat=[];
b=1; 
for i=1:(numOfP-1)
   prompt=sprintf(' Enter the End of the %d Phonem: ',i);
   e = input(prompt);
   p_mat(i,1)=b;
   p_mat(i,2)=e;
   b=e+1;   
end
i=i+1;
p_mat(i,1)=(e+1);
p_mat(i,2)=n;

for i=1:numOfP
   arr_tmp=[]; 
   b=p_mat(i,1);
   e=p_mat(i,2);
   index=1;
   for j=b:e     
      arr_tmp(index)=INDX(j);
      index=index+1;     
   end
   PhonemMat(i) = mode(arr_tmp);
end

end