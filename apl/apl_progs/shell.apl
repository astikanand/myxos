decl
    integer pid;
    string command;
enddecl

integer main(){
    while(1==1) do
	print ("astikSHELL:~$");
	read (command);
	if(command=="exit") then
             break;
	endif;

	pid = Fork();
	if(pid!=-2) then 
	    pid = Wait(pid);
        endif;

	if(pid==-2) then
            pid = Exec(command);
	    if(pid==-1) then
		 print("command not");
                 print("found");
		 Exit();
	    endif;
            break;
	endif;	
     endwhile;
	
    return 0;
}
