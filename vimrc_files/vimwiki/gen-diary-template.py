#!/usr/bin/python3
import sys
import datetime

template = """# {date}

## Daily checklist | project:Daily  and (due:today or +PENDING) | project:Daily


---
## TODO Today! | (+TODAY or +OVERDUE) and project.not:Daily | due:today


## This Week! | +WEEK -DUETODAY -OVERDUE | due:tomorrow


## Notes
- [Diffuse Mode Visualisation](../DiffuseModeVisualisation)
- [Thoughts](../Thoughts)
- [The Way In](../TheWayIn)

- [PhD Tips](../PhD Tips)
- [Productivity](../Productivity)
- [Machine Learning](../Machine Learning)


"""

date = (datetime.date.today() if len(sys.argv) < 2
        # Expecting filename in YYYY-MM-DD.foo format
        else " ".join(sys.argv[1:])) #.rsplit(".", 1)[0])
print(template.format(date=date))

