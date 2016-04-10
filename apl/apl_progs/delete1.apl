decl
     integer status;
enddecl

integer main()
{
     print("opening..");
     status= Open("myfile.dat");
     print(status);
     print ("opened");

     print("deleting ..");
     status=Delete("myfile.dat");
     print(status);
     print("deleted");
     return 0;
}     
