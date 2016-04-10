decl
     integer status;
     integer count;
     integer num1,num2;
     integer a1,a2,a3;
     integer lseek1,lseek2;
     integer size1,size2,size3;
enddecl

integer main()
{
    status=Create("Num1.dat");                            //create a new file 
    a1 = Open("Num1.dat");                                 //open it
    
    lseek1=0;
    count=200;
    while(count<=600)do                             //put the numbers into it from 200 to 600
         status= Write(a1,count);
         lseek1=lseek1+1;
          count=count+1;
    endwhile;
    size1=lseek1;
    
    lseek2=0;
    status=Create("Num2.dat");                           //create a new file again
    a2=Open("Num2.dat");                           //open it
    count=400;
    while(count<=1000)do                            //put the numbers into it from 400 to 800
          status=Write(a2,count);
          lseek2=lseek2+1;
          count=count+1;
    endwhile;
    size2=lseek2;
   
   status=Create("Result.dat");                           //create a new file again 
   a3=Open("Result.dat");                             //open it

   size3=size1+size2;

  lseek1=0;
  lseek2=0;
  status=Seek(a1,0);
  status=Seek(a2,0);
   
   
   count=0;
   while(count<size3) do
         while(lseek1<size1&&lseek2<size2) do
              status=Read(a1,num1);
              status=Read(a2,num2);
             if(num1<num2) then
                  lseek1=lseek1+1;
                  status= Write(a3,num1);
                  status=Seek(a2,lseek2);
             else
                 lseek2=lseek2+1;
                 status=Write(a3,num2);
                 status=Seek(a1,lseek1);
             endif;
             count=count+1;
         endwhile;

         while(lseek1<size1) do
              status=Read(a1,num1);
              lseek1=lseek1+1;
              status= Write(a3,num1);
              count=count+1;
         endwhile;

         while(lseek2<size2) do
              status=Read(a2,num2);
              lseek2=lseek2+1;
              status= Write(a3,num2);
              count=count+1;
         endwhile;
              
   endwhile;
 
   status=Close(a1);
   status=Close(a2);
          
     
   status=Seek(a3,0);
   count=0;
   while(count<size3) do
        status=Read(a3,num1);
        print(num1);
        count=count+1;
   endwhile;

   status=Close(a3);

   print("End");
   return 0; 
}   




