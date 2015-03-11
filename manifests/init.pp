# Class: server_backup 
#
# This module manages the setup of server backups 
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class server_backup (
  $backupdest    =  hiera('server_backup::backupdest'),
  $backupsrc     =  hiera('server_backup::backupsrc'),
  $backupscript  =  hiera('server_backup::backupscript'),
  $backuphour    =  hiera('server_backup::backuphour'),
  $backupmin     =  hiera('server_backup::backupmin'),
  $backup_log    =  hiera('server_backup::backup_log'),
  $mountpoint    =  hiera('server_backup::mountpoint'),
){
  include backup_mount 
  class { 'server_backup::config':
    backupdest    =>  $backupdest,
    backupsrc     =>  $backupsrc,
    backupscript  =>  $backupscript,
    backuphour    =>  $backuphour,
    backupmin     =>  $backupmin,
    backup_log    =>  $backup_log,
    mountpoint    =>  $mountpoint,
  }

}
