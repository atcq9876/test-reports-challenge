string of comma separated values from test results
build simple report based on these results


Examples: 

Input: ""
Output: "No results given"

Input: "Green"
Output: "Green: 1"

Input: "Green, Green, Amber, Red, Green"
Output: "Green: 3\nAmber: 1\nRed: 1"

Input: "green, green, amber, red, Green"
Output: "Green: 3\nAmber: 1\nRed: 1"

Input: "Green,Dave,Whimsy,Red"
Output: "Green: 1\nRed: 1\nUncounted: 2"


Edge cases:
- empty string (DONE)
- non-string values (DONE)
- no spaces after commas (DONE)
- unhelpful characters e.g., punctuation other than commas (DONE)


public methods
- create_report (DONE)

private methods
- count_grades (DONE)
- format_string (DONE)