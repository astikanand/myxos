decl
  integer pid;
enddecl

integer main()
{	
	pid=Fork();
        pid=Getpid();
	print(pid);
	return 0;
}
