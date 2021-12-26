# extension DateTimeExtension on DateTime

Extension to DateTime

## Summary

Using the following identifiers for parts of Date/Time

```dart
enum DateTimeElement {
  year,
  month,
  day,
  hour,
  minute,
  second,
  millisecond,
  microsecond,
}
```

The following methods and getters are:

```dart
/// get the next minute, seconds, day, year,... of a DateTime
DateTime next(DateTimeElement element, [int delta = 1])

/// get a DateTime rounded to the given DateTimeElement
DateTime round([DateTimeElement element = DateTimeElement.second])

/// set a DateTime element to a value
DateTime update(DateTimeElement element, {required int to})

/// get days in the DateTime
int get daysInTheMonth

/// get the hour portion of DateTime in 12-hour number
int get hour12

/// test if DateTime is a leap year
static bool isLeapYear(int year)

/// get a unique DateTime (internal value means the time is unique but 
/// could get WAY into the future)
static DateTime unique()

/// create a string that is good for storing in SQLite database
/// uses UTC Iso8601 String
static String asSqlite([DateTime? dateTime])

/// get as a timeStamp => DateFormat('HH:mm:ss.SSS')
static String get timeStamp

/// get DateTime as iso8601 String with only digits
String asKey()

/// get DateTime as UTC ISO-8601 string that can be used in, or
/// compared to DateTime ins SQLite database
String get sqlite

/// get DateTime month as String
String monthText([String fmt = 'MMM'])

/// get DateTime as date
String shortDate([String fmt = 'dd-MMM-yyyy'])

/// get DateTime as time
String shortTime([String fmt = 'h:mm a'])
```

## Final note

Be kind to each other
