makemb.exe:	makemb.c makemb.def
	cl /W3 /G2 makemb.c makemb.def
	del makemb.obj

clean:
	del makemb.exe
