#!bin/bash
BACKUPFILE=backup-$(date +%m-%d-%Y)
#add time info in backupfiles
archive=${1:-$BACKUPFILE}
#
#
tar cvf -`find -mtime -1 -type f -print` > $archive.tar
gzip $archive.tar
echo "Directory $PWD backed up in archive file \"$archive.tar.gz\"."
exit 0
