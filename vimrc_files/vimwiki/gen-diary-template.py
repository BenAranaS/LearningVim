#!/usr/bin/python3
import sys
import datetime
import os

something = ""
today = datetime.date.today().strftime('%Y-%m-%d')
template = """# {date}

## Daily checklist | project:Daily  and (due:today or +PENDING) | project:Daily due:today


---
## TODO Today! | +PENDING and (due:today or +OVERDUE) and project.not:Daily | due:today project:Default

## This Week! | +WEEK -DUETODAY -OVERDUE | due:tomorrow project:Default

---
## Done Today | end:{today}

___
{something}

## Notes
- [UNADM](../UnADM/UnADM.md)
- [Thoughts](../Thoughts)

- [PhD Tips](../PhD Tips)
- [Productivity](../Productivity)
- [Machine Learning](../Machine Learning)
"""

date = (datetime.date.today() if len(sys.argv) < 2
        # Expecting filename in YYYY-MM-DD.foo format
        else " ".join(sys.argv[1:-1])) #.rsplit(".", 1)[0])
if len(sys.argv) > 2:
    # try:
        with open(os.path.expanduser(sys.argv[-1])+'/priorities_plan.md', 'r') as f:
            something = f.read()
    # except:
        # something = "- Nothing"
print(template.format(date=date, something=something, today=today))

