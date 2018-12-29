function [mat3]=AppendMatrixes(mat1 , mat2 ) % append mat2 to mat1
[m1,n1] = size(mat1);
[m2,n2] = size(mat2);

mat3=zeros(m1,n1+n2);
for i=1:n1
   mat3(:,i)=mat1(:,i);   
end

j=1;
n=n1+n2;
for i=n1+1:n   
    mat3(:,i)=mat2(:,j);  
    j=j+1;
end
end