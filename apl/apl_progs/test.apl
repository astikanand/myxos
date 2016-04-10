decl
   integer pid;
   integer pid1;
enddecl

integer main()
{
    pid=Fork();
    pid=Fork();
    pid=Fork();

    pid1=Getpid();
   
    print(pid1);

    return 0;
}

    
