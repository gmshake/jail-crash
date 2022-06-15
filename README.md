# Reproduce kernel crash when running jails

## Steps

Disable cron, sendmail and syslogd to speed up jails
```console
root@:~ # sysrc cron_enable=NO
cron_enable: NO -> NO

root@:~ # sysrc sendmail_enable=NONE
sendmail_enable: NONE -> NONE

root@:~ # sysrc syslogd_flags="-ss"
syslogd_flags: -ss -> -ss
```

Clone this repository
```console
root@:~ # git clone https://github.com/gmshake/jail-crash.git
Cloning into 'jail-crash'...
...

```

Actually crash the kernel
```console
root@:~ # cd jail-crash
root@:~/jail-crash # ./crash.sh
```
