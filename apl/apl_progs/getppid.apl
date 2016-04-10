decl
  integer pid;
enddecl

integer main()
{	
	pid=Fork();
        pid=Getppid();
	print(pid);
	return 0;
}
