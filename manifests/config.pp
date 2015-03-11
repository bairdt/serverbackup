class server_backup::config (
  $backupdest,
  $backupsrc,
  $backupscript,
  $backuphour,
  $backupmin,
  $backup_log,
  $mountpoint
){
    cron { 'backup_job':
       command => "${mountpoint}/$backupscript dest=$backupdest src=$backupsrc >> $backup_log 2>&1",
       user    => root,
       hour    => $backuphour,
       minute  => $backupmin,
    }      
#  }
}
