decl
	integer pid;
        integer pid1;
        integer pid2;
enddecl


integer main()
{
	pid = Fork();
        pid = Fork();

   
        pid = Fork();
        pid = Fork();
        
        pid2 = Getppid();
        print(pid2);
        return 0;
}
