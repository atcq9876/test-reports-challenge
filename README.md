# test-reports-challenge

This challenge was undertaken as part of a coding review exercise, for which I shared my screen and my approach to the challenge was assessed live.
For this reason, I didn't create a Git or GitHub repository for this piece of work until I had completed the task.

This program takes comma-separated strings of test results, and transforms them into a tidy format, for example:

- Input 1: "Green"
- Output 1: "Green: 1"

- Input 2: "Green, Green, Amber, Red, Green"
- Output 2: "Green: 3\nAmber: 1\nRed: 1"

- Input 3: "green, green, amber, red, Green"
- Output 3: "Green: 3\nAmber: 1\nRed: 1"

- Input 4: ""
- Output 4: "No results given"

- Input 5: "Green,Dave,Whimsy,Red"
- Output 5: "Green: 1\nRed: 1\nUncounted: 2"

- Input 6: "Green$% , red***,asdef"
- Output 6: "Green: 1\nAmber: 0\nRed: 1\nUncounted: 0"
