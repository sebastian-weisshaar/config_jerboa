echo starting
python $1
echo done

# Stop runpod
runpodctl stop pod $RUNPOD_POD_ID


