for x in `ls *.py`

do

       pythonFileName=`echo $x | awk -F. '{ print $1 }'`

       if [ -d $pythonFileName ]

       then

           echo "**************Folder Exist Scenario****************"

           rm -rf $pythonFileName

       fi

       mkdir $pythonFileName

       cp -r $x $pythonFileName
done
