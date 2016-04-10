decl
     integer status;
enddecl

integer main()
{
     print("opening..");
     status= Open("myfile.dat");
     print(status);
     print ("opened");
     
     print("closing..");
     status=Close(status);
     print(status);
     print("closed");
     return 0;
} 
    
