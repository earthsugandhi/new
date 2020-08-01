a = 0;
book = table2array(Book_17_20);
c = size(book);
c = c(1,1);
N = 0;
b = 0;
while(1)
   a = a+1;
   b = b+1;
   N(b,:) = book(a,1);
   b = b+1;
   N(b,:) = book(a,2);
   b = b+1;
   N(b,:) = book(a,4);
   if(a>=c)
      break 
   end
end