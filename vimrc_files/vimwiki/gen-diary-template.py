#!/usr/bin/python3
import sys
import datetime

template = """# {date}

## Daily checklist | project:Daily +PENDING | project:Daily

* [ ] Get up -- due:today
    * [ ] Kept mobile away -- due:today
    * [ ] Short meditation -- due:today
    * [ ] Stretch -- due:today
    * [ ] Exercise -- due:today
    * [ ] Analyse health data -- due:today
* [ ] Easing into focus -- due:today
    * [ ] Long meditation -- due:today
    * [ ] Read training -- due:today
    * [ ] Read fast -- due:today
    * [ ] Remember motivation -- due:today
    * [ ] Study German -- due:today
    * [ ] Study ML/Maths -- due:today
    * [ ] Study UNADM -- due:today
* [ ] Work -- due:today
    * [ ] Review day -- due:today
    * [ ] Read -- due:today
    * [ ] Write -- due:today
    * [ ] Plan next -- due:today

## TODO Today! | +TODAY and project.not:Daily or +OVERDUE and project.not:Daily | due:today


## This Week! | due.after:now-1week and +PENDING and project.not:Daily and -TODAY |


## Notes
- [PhD Tips](../PhD Tips)
- [Productivity](../Productivity)
- [Machine Learning](../Machine Learning)


### Creating a New System
    - Leave excuses
    - Physical/emotional
    - Order
    - Professional
    - Act like I want to be
        - Think of reaching that goal

"""

date = (datetime.date.today() if len(sys.argv) < 2
        # Expecting filename in YYYY-MM-DD.foo format
        else " ".join(sys.argv[1:])) #.rsplit(".", 1)[0])
print(template.format(date=date))
