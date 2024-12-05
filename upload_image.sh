curl https://s3.amazonaws.com/codio-desktop-builds/Codio-0.1.35-autoupload-x86_64.AppImage --output Codio.AppImage
codio-tools upload "/home/codio/workspace/Codio.AppImage" "/home/ubuntu/Desktop/Codio.AppImage"
codio-tools upload "/home/codio/workspace/prepare.sh" "/home/ubuntu/Desktop/prepare.sh"
codio-tools exec bash "/home/ubuntu/Desktop/prepare.sh"
rm -r Codio.AppImage