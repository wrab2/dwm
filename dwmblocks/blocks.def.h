//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/              			/*Update Interval*/	/*Update Signal*/
	{"^c#99e1a8^", "echo $(top -bn 1 | awk '/^%Cpu/ {print  int($2 + $4 + $6)}')%",	1,			0},
	
	{"", "free -h | awk '/^Mem/ { print $3 }' | sed s/i//g",	        3,			0},

	{"", "date +%b-%d' ('%a') '%H:%M"    ,					10,			0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;