decl
     integer status;
     integer a;
     string r;
enddecl

integer main()
{	
        print("reading..");
	a = Open("myfile.dat");
        status = Seek(a,10);
        status = Read(a,r);
        print(r);
        print(status);
        print ("readed");
	return 0;
}




