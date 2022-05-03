import shutil
import os
 
# path to source directory
src_dir = '/Users/pomodorozhong/Desktop/icon-for-inbox/'
 
# path to destination directory
dest_dir = '/Users/pomodorozhong/repos/inbox-mvp/inbox-mvp/Assets.xcassets/AppIcon.appiconset/'
 
# getting all the files in the source directory
files = os.listdir(src_dir)

for file in files:
    shutil.copy(src_dir + file, dest_dir + file)