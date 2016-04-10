decl
     integer status;
enddecl

integer main()
{
     print("deleting ..");
     status=Delete("myfile.dat");
     print(status);
     print("deleted");
     return 0;
}     
