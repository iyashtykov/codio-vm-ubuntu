remote_filename="/home/ubuntu/remote_file.sh"
remote_foldername="/home/ubuntu/remote_folder"
local_filename="/home/codio/workspace/local_file.sh"
local_foldername="/home/codio/workspace/local_folder"
temp_local_filename="/home/codio/workspace/remote_copy.sh"
temp_local_foldername="/home/codio/workspace/remote_copy"
subfolder="subfolder"
subfile="subfile.sh"
remote_subfile="$remote_foldername"/"$subfolder"/"$subfile"
sleep_seconds=2
codio-tools ping
codio-tools help
codio-tools get-ip
codio-tools get-host-name
codio-tools status
echo "ls -al" > "$local_filename"
mkdir -p "$local_foldername"
mkdir -p "$local_foldername"/"$subfolder"
echo "ls" > "$local_foldername"/"$subfolder"/"$subfile"
sleep $sleep_seconds
codio-tools upload $local_filename $remote_filename
codio-tools upload $local_foldername $remote_foldername
codio-tools download $remote_filename $temp_local_filename
sleep $sleep_seconds
rm -r $temp_local_filename
rm -r $local_filename
codio-tools download $remote_foldername $temp_local_foldername
sleep $sleep_seconds
rm -rf $temp_local_foldername
rm -rf $local_foldername
codio-tools exec bash $remote_filename
sleep $sleep_seconds
codio-tools exec bash $remote_subfile
sleep $sleep_seconds
codio-tools exec-async bash $remote_filename
sleep $sleep_seconds
codio-tools exec rm -r $remote_filename
sleep $sleep_seconds
codio-tools exec-async rm -rf $remote_foldername
codio-tools exec-async /usr/bin/google-chrome-stable https://codio.com