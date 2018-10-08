
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
echo "To create job for import Press 1"
echo "To create job for import with condition Press 2"
echo "To create job for export Press 3"
echo "To create job for select query Press 4"

read var

case $var in
	1) echo "Please enter job name"
	   read name
	   echo "Please enter database name"
	   read DB
	   echo "Pleade enter table name"
	   read TB
           sqoop job --create $name -- import --connect jdbc:mysql://localhost/$DB --table $TB -username root -P -m 1 
         
          ;;

	2) echo "Please enter job name"
	   read name
	   echo "Please enter database name"
	   read DB
	   echo "Pleade enter table name"
	   read TB
	   echo "Please enter the condition"
           read con
	   sqoop job --create $name -- import --connect jdbc:mysql://localhost/$DB --table $TB -username root -P -m 1 --where "$con"
	;;
 
	3) echo "Please enter job name"
	   read name
	   echo "Please enter database name"
	   read DB
	   echo "Pleade enter table name"
	   read TB
	   
esac

echo "Job Created"
echo "Press 1 To Create Another Job"
echo "Press 2 For Main Menu"
read opt

case $opt in
	1) createJobSqoop.sh
;;
	2) SqoopTools.sh
;;
esac
