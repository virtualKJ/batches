::System Varriables
:
::Primary is Team Drives is just T - It must be enclosed while calling it though but it's right next to 5 which is % ...
:
::Google Team Drives ----   
::Usually it would be "G:\Team Drives" or G:\"Team Drives" which both fail
::Below is only way to get it to work in a variable while being a spaced word
::
::T = G:"Team Drives" 
:::{%T% when called}
:
::
::When double quoting the Team part with no slash prior both seem to work great
::Both rclone and windows will follow that while rclone converts it just to G:\Team (See Appendex)
::Biggest gotcha was Windows will understand G:\... when called while rclone wouldn't
:
:
:
::Pointing to Team Specific Drives
:
:
::rclone conf
::@ = --config G:"Team Drives"/Configs/rclone/
:
:: ie rclone $1 %@%
:
::batches team
::bat = %T%/Batches
:
:Configs
::cfg = %T%/Configs/rclone
:
:conf = -L -P --config %CFG%
:
:config = config --config %CFG%
:
:((just testing as %HOMEPATH% equals a path with no drive letter))
:
:i = \Installs\
:
:log = G:\"Team Drives"/Logs
:
:new = %@%new.conf
:
:ref = %T%/Calls
:
:run = %T%/Installs
:
:sa = %T%/Accounts/sa
:
::::T = G:"Team Drives"
:
:work
:
:G:"Team Drives"/Workspaces
::
:
:include
:
::--include-from %REF%/rclone/lists/include-from.txt










::Appendex


C:\Users\Administrator>dir \
 Volume in drive C has no label.
 Volume Serial Number is 1288-BE1B

 Directory of C:\

05/13/2019  02:24 PM    <JUNCTION>     .a [G:\Team Drives\Alphas]
05/13/2019  02:24 PM    <JUNCTION>     .b [G:\Team Drives\Betas]
05/13/2019  02:23 PM    <JUNCTION>     .bat [G:\Team Drives\Batches]
05/13/2019  02:56 PM    <DIR>          .cloud
05/13/2019  04:58 PM    <SYMLINKD>     .home [C:\Users\Administrator]
05/13/2019  05:34 PM    <JUNCTION>     .link [A:\]
05/13/2019  02:56 PM    <DIR>          .local
05/13/2019  02:59 PM    <DIR>          .mount
05/13/2019  12:34 PM    <SYMLINKD>     .sa [\\172.16.15.13\sa]
05/13/2019  02:25 PM    <JUNCTION>     .w [G:\Team Drives\Workspaces]
05/13/2019  02:27 PM    <JUNCTION>     .w1 [G:\Team Drives\Workspaces\Batch Inverse Cloud - while trying to avoid loops]
05/13/2019  02:47 PM    <DIR>          boot
05/13/2019  07:05 PM    <DIR>          dump
05/13/2019  03:30 PM    <DIR>          fuck
09/15/2018  03:19 AM    <DIR>          PerfLogs
05/13/2019  11:15 AM    <DIR>          Program Files
05/13/2019  02:14 PM    <DIR>          Program Files (x86)
05/13/2019  01:05 PM             1,849 Team Drive List Before Removing A Lot.txt
05/13/2019  04:51 AM    <DIR>          Users
05/13/2019  10:17 PM    <DIR>          Windows
               1 File(s)          1,849 bytes
              19 Dir(s)  235,823,521,792 bytes free
