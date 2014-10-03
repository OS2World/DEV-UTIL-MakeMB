(This documentation is substantially the same as that in the source file.)


	MakeMB is a utility to ameliorate the problems in maintaining message
	files when you intend to bind messages to an executable file.

	If you plan on using the msgbind utility to bind a set of messages to
	an executable file then you have to supply a message bind directive
	file.  This program helps you by automating the construction of the
	directive file.

	Two parameters are required.  The first is the name of the executable
	file to which the message segment will be bound.  The second is the
	name of the message file which was constructed by the mkmsgf utility.
	Standard input should come from the message source file, i.e. the
	one used as input to mkmsgf, and standard output should be sent to
	the bind directive file.

	Example:

	You have a brilliant program, brill.exe to which you want to bind
	a message segment.  The source for the messages is in message.src
	and you used that as input to mkmsgf to build a binary message file
	message.bin.

		makemb brill.exe message.bin <message.src >message.mb

	takes as input the same message source used by mkmsgf and generates
	message.mb for input to msgbind.

	This makes the maintenance of message files a whole lot easier: you
	can change the message source file and construct the bind directive
	file automagically; otherwise every message numbering change would
	have to be manually duplicated in the bind directive file.


Jon Saxton
February 1990
