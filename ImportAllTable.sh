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
echo "IMPORT ALL TABLES FROM MYSQL TO HDFS"
	echo "PLEASE ENTER THE DATABASE NAME:"
		read A

	sqoop import-all-tables --connect jdbc:mysql://localhost/$A --username root -P -m 1