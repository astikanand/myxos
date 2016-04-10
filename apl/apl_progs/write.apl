decl
     integer status;
     integer a;
enddecl

integer main()
{
    print ("writing..");
    a=Open("myfile.dat");
    print(a);
    status = Write(a,"aword");
    print(status);
    print ("written");
    return 0;
}     



