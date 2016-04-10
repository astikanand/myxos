decl
     integer status;
enddecl

integer main()
{
     print ("creating ..");
     status= Create("myfile.dat");
     print (status);
     print ("created");
     return 0;
}     
