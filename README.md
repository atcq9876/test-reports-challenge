# test-reports-challenge

This challenge was undertaken as part of a coding review exercise, for which I shared my screen and my approach to the challenge was assessed live.
For this reason, I didn't create a Git or GitHub repository for this piece of work until I had completed the task.

This program takes comma-separated strings of test results, and transforms them into a tidy format, for example:

Input: "Green"
Output: "Green: 1"

Input: "Green, Green, Amber, Red, Green"
Output: "Green: 3\nAmber: 1\nRed: 1"

Input: "green, green, amber, red, Green"
Output: "Green: 3\nAmber: 1\nRed: 1"

Input: ""
Output: "No results given"

Input: "Green,Dave,Whimsy,Red"
Output: "Green: 1\nRed: 1\nUncounted: 2"

Input: "Green$% , red***,asdef"
Output: "Green: 1\nAmber: 0\nRed: 1\nUncounted: 0"
