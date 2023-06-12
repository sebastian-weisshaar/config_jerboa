echo starting
python $1
echo done
runpodctl stop pod $RUNPOD_POD_ID


