# test-reports-challenge

This challenge was undertaken as part of a coding review exercise, for which I shared my screen and my approach to the challenge was assessed live.
For this reason, I didn't create a Git repository for this piece of work until I had completed the task.

This program takes comma-separated strings of test results, and transforms them into a tidy format, for example:

__Input__                           |   __Output__
------------------------------------|--------------------------------------------
"Green"                             |   "Green: 1"
"Green, Green, Amber, Red, Green"   |   "Green: 3\nAmber: 1\nRed: 1"
"green, green, amber, red, Green"   |   "Green: 3\nAmber: 1\nRed: 1"
""                                  |   "No results given"
"Green,Dave,Whimsy,Red"             |   "Green: 1\nRed: 1\nUncounted: 2"
"Green$% , red***,asdef"            |   "Green: 1\nAmber: 0\nRed: 1\nUncounted: 1"
