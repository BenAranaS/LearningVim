#!/usr/bin/python3
import sys
import datetime

template = """# {date}

## Daily checklist | project:Daily +PENDING

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
    * [ ] Study German -- due:today
    * [ ] Study ML/Maths -- due:today
* [ ] Work -- due:today
    * [ ] Review day -- due:today
    * [ ] Read -- due:today
    * [ ] Write -- due:today
    * [ ] Plan next -- due:today

## TODO | +TODAY

## Notes
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
