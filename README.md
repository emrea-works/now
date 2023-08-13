# Give me date and time rn!

#openToContribute

`now` is a basic script that gets the date of 'now' in several formats instantly that follows GNU manual format. 

*Usage:*

Get the time as like year-month-day-hour-minute: 2023-12-31-23-59

Just `now` ⎆

Get the date and time with seconds in full format, without seperators

`now -f` or in a script e.g.: `now --full` generates like: 202312312359 

Get the unix timestamp of now

`now -u`

Get with miliseconds seperated by underscores

`now --detailed` or simply `now -D` 

etc... You can see the other options by `now --help`

Happy getting of now in a format you wish instantly!

---

*A quick tip:* if you have `xclip` installed in your OS then you can get the date directly to clipboard by

`now | xclip -sel clip`

Or simply

`now -c`


