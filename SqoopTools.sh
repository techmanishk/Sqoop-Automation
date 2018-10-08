							                                                                              
clear                                                                              
echo "                                                                            psqoopsqo      psqoopsqo                    " 
echo "                                             qoopsqoopsqo  sqoopsqoopsqo   qoopsqoopsq    qoopsqoopsq   sqoopsqoopsq    "
echo "                                             ps           oops       ops  ops       ops  ops       ops  ops       ops   " 
echo "                                             oopsqoopsq   sq          oo  qo        qoo  qo        qoo  qo         oo   " 
echo "                                              qoopsqoopsq op          sq  ps        psq  ps        psq  ps         sq   " 
echo "                                                       op qoo         op  oop       oop  oop       oop  oo        oop   " 
echo "                                             qoopsqoopsqo  sqoopsqoopsqo  sqoopsqoopsq   sqoopsqoopsq   sqoopsqoopsqo   " 
echo "                                             psqoopsqoop    psqoopsqoops   psqoopsqoop    psqoopsqoop   opsqoopsqoop    " 
echo "                                                                      oo                                qo              " 
echo "                                                                      sq                                ps              " 
echo "                                                                      op                                oo              " 
echo ""
echo "Hey..."
echo "What's your name?"
read n
echo "Hello "$n" How are you? Let's do sqoop query"
echo "press 1 for Import"
echo "press 2 for Export"
echo "press 3 for Sqoop Result"
echo "press 4 for Create a Job"
echo "press 5 for Excute a Job"
echo "press 6 for List of Database of MySQL"
echo "press 7 for List of all Table of your Database"
echo "press 8 for Execute a Query from MySql"
echo "press 9 for Import all Tables in HDFS"
echo "press 10 for Generate a Java Code"
echo "press 11 for List of all Job in Sqoop"
read var
case $var in
	1) 
		Import.sh
		;;
	2) 
		Export.sh
		;;
	3) 	
		Resultsqoop.sh
		;;
	4) 
		createJobSqoop.sh
		;;
	5)
		ExcuteJob.sh
		;;
	
	6)
		ListDatabase.sh
		;;

	7) 
		ListTable.sh
		;;

	8) 	
		ExcuteSQLQuery.sh
		;;

	9) 
		ImportAllTable.sh
		;;
	
	10) 
		CodeGen.sh
		;;

	11) 
		sqoop job -list
	;;
esac
