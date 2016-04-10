decl
	integer pid;
         integer i;
         integer count;
         integer dummy1;
         integer dummy2;
enddecl

integer main()
{       
        
	pid = Fork();
        if(pid==-2) then
            count=1;
            i=2;
            while(i<=50 && dummy2==0 ) do
                print(i);
                i=i+2;
                count=count+1;
                if(count%5==0) then
                   dummy1=Wait(pid);
                endif;
            endwhile;
        endif;
 
        if(pid!=-2) then
            i=1;
            while(i<=50 &&dummy1==0) do
                print(i);
                i=i+2;
                count=count+1;
                if(count%5==0) then
                    dummy2=Signal();
                endif;
             endwhile;
        endif;
	return 0;
}
