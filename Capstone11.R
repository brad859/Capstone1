Thetank <- Shark_Tank_US_dataset
Thetank
# My hypothesis is you are more likely to get a deal if you are a male and you have a food or beverage company
# and accept a deal from Mark Cuban
#1
group_by(count(Thetank, Industry))
# top 5 industries represented
# 1 Food and Beverage(295) 2 Liefstyle/Home(246) 3 Fashion Beauty(225) 4 Fitness/Sports/Outdoors(125) 5 Children/Education(123)
#2
group_by(count(Thetank, `Pitchers Gender`))
# 1 Male(739) 2 Female(358) 3 Mixed team(257) 
#3
group_by(count(Thetank, `Multiple Entrepreneurs`))
# 1 single presenters 507 2 group presenting 427 3 427 unaccounted for 
#4
group_by(count(Thetank, `Pitchers Average Age`))
# 1 NA (936) 2 Middle(386) 3 Young (31) 4 Old(8)
#5
group_by(count(Thetank, `Got Deal`))
# 1 824 got a deal 2 537 did not get a deal
#6
group_by(count(Thetank, `Number of Sharks in Deal`))
# 1- 606 pitches had one shark 2- 188 had two sharks in deal 3- 21 had three sharks 4- 3 had four sharks 5- 6 had five sharks in deal
#7 
group_by(count(Thetank, `Mark Cuban Present`))
# Mark was present 900 times absent 88 times and NA 373
#8
group_by(count(Thetank, `Robert Herjavec Present`))
# Robert was present 824 times absent 112 times and NA 425
#9
group_by(count(Thetank, `Lori Greiner Present`))
# Lori was present for 764 times absent 224 times and NA 373
#10
group_by(count(Thetank, `Barbara Corcoran Present`))
# Barbara was present 551 times absent 391 times and NA 419
#11
group_by(count(Thetank, `Daymond John Present`))
# Daymond was present 634 times abset 304 times and NA 423
#12
group_by(count(Thetank, `Kevin O Leary Present`))
# Kevin was present 945 times absent 40 times and NA 376
#13
group_by(count(Thetank, `Guest Present`))
# 51 episodes had guest sharks and 1310 did not 
#14
group_by(count(Thetank, `Mark Cuban Investment Amount` > 0, `Number of Sharks in Deal`))
# Mark Cuban has made 249 deals, 128 of them he made by himself and the rest had at least one other shark invested
#15
group_by(count(Thetank, `Robert Herjavec Investment Amount` > 0, `Number of Sharks in Deal`))
# Robert has made 127 deals, 76 of them he made by himself and the rest had at least one other shark invested
#16
group_by(count(Thetank, `Lori Greiner Investment Amount` > 0))
# Lori has made 217 deals
group_by(count(Thetank, `Lori Greiner Investment Amount` > 0, `Number of Sharks in Deal`))
# 109 made herself and the rest with other sharks
#17
group_by(count(Thetank, `Barbara Corcoran Investment Amount` > 0))
# Barbara has made 130 deals
group_by(count(Thetank, `Barbara Corcoran Investment Amount` > 0, `Number of Sharks in Deal`))
# 88 deals made with other sharks
#18
group_by(count(Thetank, `Daymond John Investment Amount` > 0))
# Daymond has made 117 deals
group_by(count(Thetank, `Daymond John Investment Amount` > 0, `Number of Sharks in Deal`))
# Daymond has made 80 deals himself and the rest with other sharks
#19 
group_by(count(Thetank, `Kevin O Leary Investment Amount` > 0))
# Kevin has made 127 deals 
group_by(count(Thetank, `Kevin O Leary Investment Amount` > 0, `Number of Sharks in Deal`))
# kevin has done 70 deals by himself
#20
group_by(count(Thetank,`Season Number`,`Got Deal`))
#returns the amount of pitches that do and do not get a deal each season
#21
group_by(count(Thetank, `Total Deal Equity` <= 10 ))
# only 168 deals were made on owning less or equal to 10 percent
#22
group_by(count(Thetank, 20 >= `Total Deal Equity`))
# 434 made deals under 20 percent
434-168
# 266 deals made between 11 and 20 percent
#23
group_by(count(Thetank, 30 >= `Total Deal Equity`))
643 -434
#209 deals made between 21 and 30 percent 
#24
group_by(count(Thetank, 30 < `Total Deal Equity`))
# 181 deals over 30 percent
#25
group_by(count(Thetank, 100000 >= `Total Deal Amount`))
# 239 asked for less or equal to 100k
#26
group_by(count(Thetank, 200000 >= `Total Deal Amount`))
450-239
# 211 asked and got aboe 100k and less than or equal to 200k
#27
group_by(count(Thetank, 300000 >= `Total Deal Amount`))
614-450
#164 got over 200k and less than or equal to 30k
#28
group_by(count(Thetank, 300000 < `Total Deal Amount`))
#210 got a deal over $300 K 
options(dplyr.print_max = 1e9)
options(dplyr.print_max=NULL)
group_by(count(Thetank, Industry,`Pitchers Gender`,`Mark Cuban Investment Amount` > 0))
# 
#34/144 male 14/85 female 12/64 mix team
group_by(count(Thetank,`Pitchers Gender`,`Mark Cuban Investment Amount` > 0))
#female 63/358 male 139/739 17 18
ggplot2::aes(x = `Pitchers Gender`, y = `Mark Cuban Investment Amount`)
ggplot2(data = Thetank) + geom
install.packages('ggplot2')
library('ggplot2')
ggplot(data = Thetank) + geom_bar(mapping = aes(x= `Pitchers Gender`))
ggplot(data = Thetank) + geom_bar(mapping = aes(x = `Got Deal`))

