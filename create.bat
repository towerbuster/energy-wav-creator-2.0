@echo off
title Create Silent Energy WAV
set /p intent="What is your intention? "
echo %intent% > INTENTIONS.TXT
set /p id="Enter output file name (.wav): "
intrpt-wav -d 00:01:00 -v 0 -n NEST-100.TXT -o %id%
cls
intrpt --imem 5 -i "%id% is charged with NEST-100.TXT" -c white -d 00:10:00
cls
echo Energy WAV successfully created.
pause
