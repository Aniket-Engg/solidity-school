# Time
## Problem Statement

Write a contract 'Time' which implements a function named getTime.

`getTime()` accepts a Unix timestamp (number of seconds since 1970-01-01 00:00:00 GMT). Method will check if this timestamp exists after the current time. If yes, it will return a timestamp after 1 hour, 20 minutes and 30 seconds from passed time else return 0.

## Informational Hint

### Time Units
Suffixes like seconds, minutes, hours, days and weeks after literal numbers can be used to specify units of time where seconds are the base unit and units are considered naively in the following way:

```
1 == 1 seconds
1 minutes == 60 seconds
1 hours == 60 minutes
1 days == 24 hours
1 weeks == 7 days
```

To get current time, `now` can be used being aware about the fact that it can be influenced by miners to some degree. It retuns `uint`.