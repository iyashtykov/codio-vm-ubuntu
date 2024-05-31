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
codio-vm ping
codio-vm help
codio-vm get-ip
codio-vm get-host-name
codio-vm status
echo "ls -al" > "$local_filename"
mkdir -p "$local_foldername"
mkdir -p "$local_foldername"/"$subfolder"
echo "ls" > "$local_foldername"/"$subfolder"/"$subfile"
sleep $sleep_seconds
codio-vm upload $local_filename $remote_filename
codio-vm upload $local_foldername $remote_foldername
codio-vm download $remote_filename $temp_local_filename
sleep $sleep_seconds
rm -r $temp_local_filename
rm -r $local_filename
codio-vm download $remote_foldername $temp_local_foldername
sleep $sleep_seconds
rm -rf $temp_local_foldername
rm -rf $local_foldername
codio-vm exec bash $remote_filename
sleep $sleep_seconds
codio-vm exec bash $remote_subfile
sleep $sleep_seconds
codio-vm exec-async bash $remote_filename
sleep $sleep_seconds
codio-vm exec rm -r $remote_filename
sleep $sleep_seconds
codio-vm exec-async rm -rf $remote_foldername
codio-vm exec-async /usr/bin/google-chrome-stable https://codio.com