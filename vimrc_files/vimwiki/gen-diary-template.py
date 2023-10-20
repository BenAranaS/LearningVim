#!/usr/bin/python3
import sys
import datetime
import os

something = ""
today = datetime.date.today().strftime('%Y-%m-%d')
date = datetime.datetime.now().strftime('%a %d %b %H:%M:%S %Y')
template = """# {date}

## Daily checklist | @daily | project:Daily due:today

___
## Notes
- [Notes](../Notes)

___
- [TODOs](../TODOs)
## TODO Today! | @today | scheduled:today project:Default


## TODO Tomorrow! | @tomorrow | scheduled:tomorrow


## The Week Ahead! | @week | due:tomorrow project:Default

___
## Done Today | end:{today}

___
{something}
___
"""
# Ignoring time argument to always use locale's representation
# date = (datetime.date.today() if len(sys.argv) < 2
# Expecting filename in YYYY-MM-DD.foo format
# else " ".join(sys.argv[1:-1])) #.rsplit(".", 1)[0])
if len(sys.argv) > 2:
    # try:
    with open(os.path.expanduser(sys.argv[-1]) + '/priorities_plan.md',
              'r') as f:
        something = f.read()
    # except:
        # something = "- Nothing"
print(template.format(date=date, something=something, today=today))
