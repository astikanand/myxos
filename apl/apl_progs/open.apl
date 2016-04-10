decl
     integer status;
enddecl

integer main()
{
     print("opening..");
     status= Open("myfile.dat");
     print(status);
     print ("opened");
     
     return 0;
} 
    
