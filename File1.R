?Date
?Dates
?DateTimeClasses

Sys.time()
Sys.Date()
Sys.timezone()
Sys.getlocale()

#####################################
# measuring time
#####################################
start = as.POSIXct(Sys.time())
timeDate::Nairobi()
for (i in 1:1000) {
  print(i)
}
stop = as.POSIXct(Sys.time())
timetaken = stop - start
timetaken

# sleeping of time
Sys.time()
Sys.sleep(10)
Sys.time()

# converting time to numeric
# calculating time taken in seconds
start_num = Sys.time()
Sys.sleep(10)
stop_num = Sys.time()

timetaken_num = as.numeric(stop_num) - as.numeric(start_num)
timetaken_num
# obbtaining time zones and locations
OlsonNames()
Sys.timezone()
as.POSIXct(Sys.time(), tz='Africa/Nairobi')

# FORMATTING DATES
# weekday abbreviation
format.Date(Sys.Date(), '%a')
# weekday full
format.Date(Sys.Date(), '%A')
# month abbreviation
format.Date(Sys.Date(), '%b')
# month full
format.Date(Sys.Date(), '%B')
# month
format.Date(Sys.Date(), '%m')
# day
format.Date(Sys.Date(), '%d')
# year with century
format.Date(Sys.Date(), '%Y')
# full date formating and abbreviation
format(Sys.Date(),'%a %b %Y %m')
format(Sys.Date(),'%A %B %Y')

# Parsing strings into Date objects
as.Date('09/30/2019', format = '%m/%d/%Y')
as.Date('09-30-2019', format = '%m-%d-%Y')
#as.Date('March 23rd, 2016', '%B %drd, %Y')
as.Date('September 30th, 2019', '%B %dth, %Y')

# coercing into a date
d = as.Date('2019-09-30')
d
class(d)

as.Date('09-30-2019', format = '%m-%d-%Y')

# Date and time arithmetic
# POSIXct and Sys.time assumes time in seconds
as.POSIXct(Sys.Date()) + 120
Sys.time() 
Sys.time() + 60
Sys.time()

# using diff
# system time + 2hrs 30min 10secs
Sys.time() + as.difftime(2, units = 'hours') +
  as.difftime(30, units = 'mins') + 
  as.difftime(10, units = 'secs')

# calculating time differences using difftime
# diff = time1 - time2
#a simple function to calculate time difference
time_dif = function(time1, time2){
  return(difftime(time1,time2))
}
time_dif(Sys.time() + 5, Sys.time())

# using POSIXct
time_dif = function(time1, time2){
  time1 = as.POSIXct(time1)
  time2 = as.POSIXct(time2)
  return(difftime(time1,time2))
}
time_dif(Sys.time() + 5, Sys.time())
