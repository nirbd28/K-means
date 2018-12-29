function DisplayPhonemVScluster(numOfP, PhonemMat) %display the phonem and its cluster

for i=1:numOfP
   txt1=sprintf(' The %d Phonem is part of cluster ',i); 
   disp(txt1);
   txt2=sprintf(' -- %d -- ', PhonemMat(i));
   disp(txt2);
end

end