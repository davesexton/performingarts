#-------------------------
user = User.new(
  name: 'DaveSexton',
  password_digest: '$2a$10$Fa7ufCoE1gSBCzLA5sUiMufPhX5EOPnMQGZQ6u9xSZSgnM4YZjaYO')
user.id = 1
user.save(validate: false)
puts 'User records created'
#-------------------------
agegroup = AgeGroup.new(
  name: 'PRE PRIMARY',
  from_age: 3,
  to_age: 5)
agegroup.id = 1
agegroup.save(validate: false)
#-------------------------
agegroup = AgeGroup.new(
  name: 'PRIMARY',
  from_age: 5,
  to_age: 7)
agegroup.id = 2
agegroup.save(validate: false)
#-------------------------
agegroup = AgeGroup.new(
  name: 'JUNIOR',
  from_age: 7,
  to_age: 9)
agegroup.id = 3
agegroup.save(validate: false)
#-------------------------
agegroup = AgeGroup.new(
  name: 'INTERMEDIATE',
  from_age: 9,
  to_age: 11)
agegroup.id = 4
agegroup.save(validate: false)
#-------------------------
agegroup = AgeGroup.new(
  name: 'SENIOR LOWER',
  from_age: 11,
  to_age: 13)
agegroup.id = 5
agegroup.save(validate: false)
#-------------------------
agegroup = AgeGroup.new(
  name: 'SENIOR UPPER',
  from_age: 13,
  to_age: 18)
agegroup.id = 6
agegroup.save(validate: false)
puts 'AgeGroup records created'
#-------------------------
course = Course.new(
  name: 'Singing/Drama')
course.id = 1
course.save(validate: false)
#-------------------------
course = Course.new(
  name: 'Ballet/Tap')
course.id = 2
course.save(validate: false)
#-------------------------
course = Course.new(
  name: 'Dance For Children')
course.id = 3
course.save(validate: false)
#-------------------------
course = Course.new(
  name: 'Drama')
course.id = 4
course.save(validate: false)
#-------------------------
course = Course.new(
  name: 'Singing')
course.id = 5
course.save(validate: false)
#-------------------------
course = Course.new(
  name: 'Lamda')
course.id = 6
course.save(validate: false)
#-------------------------
course = Course.new(
  name: 'Dance')
course.id = 7
course.save(validate: false)
#-------------------------
course = Course.new(
  name: 'Tap')
course.id = 8
course.save(validate: false)
#-------------------------
course = Course.new(
  name: 'Ballet')
course.id = 9
course.save(validate: false)
#-------------------------
course = Course.new(
  name: 'Music Theatre')
course.id = 10
course.save(validate: false)
#-------------------------
course = Course.new(
  name: 'Year 7 Drama')
course.id = 11
course.save(validate: false)
#-------------------------
course = Course.new(
  name: 'Year 8 Lamda')
course.id = 12
course.save(validate: false)
#-------------------------
course = Course.new(
  name: 'Year 7 Lamda')
course.id = 13
course.save(validate: false)
#-------------------------
course = Course.new(
  name: 'Year 8 Drama')
course.id = 14
course.save(validate: false)
#-------------------------
course = Course.new(
  name: 'Grade 3 Tap')
course.id = 16
course.save(validate: false)
puts 'Course records created'

puts 'NewsItem records created'
#-------------------------
schedule = Schedule.new(
  course_id: 1,
  venue_id: nil,
  age_group_id: 1,
  time_start: '2000-01-01 09:00:00 UTC',
  time_end: '2000-01-01 09:45:00 UTC')
schedule.id = 1
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 2,
  venue_id: nil,
  age_group_id: 1,
  time_start: '2000-01-01 09:45:00 UTC',
  time_end: '2000-01-01 10:30:00 UTC')
schedule.id = 2
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 3,
  venue_id: nil,
  age_group_id: 1,
  time_start: '2000-01-01 10:30:00 UTC',
  time_end: '2000-01-01 11:15:00 UTC')
schedule.id = 3
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 6,
  venue_id: nil,
  age_group_id: 2,
  time_start: '2000-01-01 09:00:00 UTC',
  time_end: '2000-01-01 09:45:00 UTC')
schedule.id = 4
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 4,
  venue_id: nil,
  age_group_id: 2,
  time_start: '2000-01-01 09:45:00 UTC',
  time_end: '2000-01-01 10:30:00 UTC')
schedule.id = 5
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 7,
  venue_id: nil,
  age_group_id: 2,
  time_start: '2000-01-01 10:30:00 UTC',
  time_end: '2000-01-01 11:15:00 UTC')
schedule.id = 6
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 2,
  venue_id: nil,
  age_group_id: 2,
  time_start: '2000-01-01 12:00:00 UTC',
  time_end: '2000-01-01 12:45:00 UTC')
schedule.id = 7
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 1,
  venue_id: nil,
  age_group_id: 2,
  time_start: '2000-01-01 13:00:00 UTC',
  time_end: '2000-01-01 13:45:00 UTC')
schedule.id = 8
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 10,
  venue_id: nil,
  age_group_id: 2,
  time_start: '2000-01-01 13:45:00 UTC',
  time_end: '2000-01-01 14:30:00 UTC')
schedule.id = 9
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 7,
  venue_id: nil,
  age_group_id: 3,
  time_start: '2000-01-01 09:00:00 UTC',
  time_end: '2000-01-01 09:45:00 UTC')
schedule.id = 10
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 6,
  venue_id: nil,
  age_group_id: 3,
  time_start: '2000-01-01 09:45:00 UTC',
  time_end: '2000-01-01 10:30:00 UTC')
schedule.id = 11
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 4,
  venue_id: nil,
  age_group_id: 3,
  time_start: '2000-01-01 10:30:00 UTC',
  time_end: '2000-01-01 11:15:00 UTC')
schedule.id = 12
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 5,
  venue_id: nil,
  age_group_id: 3,
  time_start: '2000-01-01 11:15:00 UTC',
  time_end: '2000-01-01 12:00:00 UTC')
schedule.id = 13
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 9,
  venue_id: nil,
  age_group_id: 3,
  time_start: '2000-01-01 12:45:00 UTC',
  time_end: '2000-01-01 13:30:00 UTC')
schedule.id = 14
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 10,
  venue_id: nil,
  age_group_id: 3,
  time_start: '2000-01-01 13:45:00 UTC',
  time_end: '2000-01-01 14:30:00 UTC')
schedule.id = 15
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 4,
  venue_id: nil,
  age_group_id: 4,
  time_start: '2000-01-01 09:00:00 UTC',
  time_end: '2000-01-01 09:45:00 UTC')
schedule.id = 16
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 5,
  venue_id: nil,
  age_group_id: 5,
  time_start: '2000-01-01 10:30:00 UTC',
  time_end: '2000-01-01 11:15:00 UTC')
schedule.id = 17
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 16,
  venue_id: nil,
  age_group_id: 6,
  time_start: '2000-01-01 11:15:00 UTC',
  time_end: '2000-01-01 12:00:00 UTC')
schedule.id = 18
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 5,
  venue_id: nil,
  age_group_id: 4,
  time_start: '2000-01-01 09:45:00 UTC',
  time_end: '2000-01-01 10:30:00 UTC')
schedule.id = 19
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 6,
  venue_id: nil,
  age_group_id: 4,
  time_start: '2000-01-01 10:30:00 UTC',
  time_end: '2000-01-01 11:15:00 UTC')
schedule.id = 20
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 7,
  venue_id: nil,
  age_group_id: 4,
  time_start: '2000-01-01 11:15:00 UTC',
  time_end: '2000-01-01 12:00:00 UTC')
schedule.id = 21
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 8,
  venue_id: nil,
  age_group_id: 4,
  time_start: '2000-01-01 12:00:00 UTC',
  time_end: '2000-01-01 12:45:00 UTC')
schedule.id = 22
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 9,
  venue_id: nil,
  age_group_id: 4,
  time_start: '2000-01-01 12:45:00 UTC',
  time_end: '2000-01-01 13:30:00 UTC')
schedule.id = 23
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 10,
  venue_id: nil,
  age_group_id: 4,
  time_start: '2000-01-01 13:45:00 UTC',
  time_end: '2000-01-01 14:30:00 UTC')
schedule.id = 24
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 5,
  venue_id: nil,
  age_group_id: 5,
  time_start: '2000-01-01 10:30:00 UTC',
  time_end: '2000-01-01 11:15:00 UTC')
schedule.id = 25
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 11,
  venue_id: nil,
  age_group_id: 5,
  time_start: '2000-01-01 11:15:00 UTC',
  time_end: '2000-01-01 12:00:00 UTC')
schedule.id = 26
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 12,
  venue_id: nil,
  age_group_id: 5,
  time_start: '2000-01-01 11:15:00 UTC',
  time_end: '2000-01-01 12:00:00 UTC')
schedule.id = 27
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 13,
  venue_id: nil,
  age_group_id: 5,
  time_start: '2000-01-01 12:00:00 UTC',
  time_end: '2000-01-01 12:45:00 UTC')
schedule.id = 28
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 14,
  venue_id: nil,
  age_group_id: 5,
  time_start: '2000-01-01 12:00:00 UTC',
  time_end: '2000-01-01 12:45:00 UTC')
schedule.id = 29
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 7,
  venue_id: nil,
  age_group_id: 5,
  time_start: '2000-01-01 12:45:00 UTC',
  time_end: '2000-01-01 13:30:00 UTC')
schedule.id = 30
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 10,
  venue_id: nil,
  age_group_id: 5,
  time_start: '2000-01-01 14:30:00 UTC',
  time_end: '2000-01-01 15:15:00 UTC')
schedule.id = 31
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 8,
  venue_id: nil,
  age_group_id: 5,
  time_start: '2000-01-01 15:15:00 UTC',
  time_end: '2000-01-01 16:00:00 UTC')
schedule.id = 32
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 16,
  venue_id: nil,
  age_group_id: 6,
  time_start: '2000-01-01 11:15:00 UTC',
  time_end: '2000-01-01 12:00:00 UTC')
schedule.id = 33
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 6,
  venue_id: nil,
  age_group_id: 6,
  time_start: '2000-01-01 12:45:00 UTC',
  time_end: '2000-01-01 13:30:00 UTC')
schedule.id = 34
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 4,
  venue_id: nil,
  age_group_id: 6,
  time_start: '2000-01-01 13:45:00 UTC',
  time_end: '2000-01-01 14:30:00 UTC')
schedule.id = 35
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 5,
  venue_id: nil,
  age_group_id: 6,
  time_start: '2000-01-01 14:30:00 UTC',
  time_end: '2000-01-01 15:15:00 UTC')
schedule.id = 36
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 10,
  venue_id: nil,
  age_group_id: 6,
  time_start: '2000-01-01 16:00:00 UTC',
  time_end: '2000-01-01 16:45:00 UTC')
schedule.id = 37
schedule.save(validate: false)
#-------------------------
schedule = Schedule.new(
  course_id: 7,
  venue_id: nil,
  age_group_id: 6,
  time_start: '2000-01-01 16:45:00 UTC',
  time_end: '2000-01-01 17:30:00 UTC')
schedule.id = 38
schedule.save(validate: false)
puts 'Schedule records created'
#-------------------------
tutor = Tutor.new(
  name: 'Anna Everett',
  profile: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer in
mi a mauris ornare sagittis. Suspendisse potenti. Suspendisse dapibus
dignissim dolor. Nam sapien tellus, tempus et, tempus ac, tincidunt
in, arcu. Duis dictum. Proin magna nulla, pellentesque non, commodo
et, iaculis sit amet, mi. Mauris condimentum massa ut metus. Donec
viverra, sapien mattis rutrum tristique, lacus eros semper tellus, et
molestie nisi sapien eu massa. Vestibulum ante ipsum primis in
faucibus orci luctus et ultrices posuere cubilia Curae; Fusce erat
tortor, mollis ut, accumsan ut, lacinia gravida, libero. Curabitur
massa felis, accumsan feugiat, convallis sit amet, porta vel, neque.
Duis et ligula non elit ultricies rutrum. Suspendisse tempor.
',
  role: 'Drama & LAMDA')
tutor.id = 2
tutor.save(validate: false)
#-------------------------
tutor = Tutor.new(
  name: 'Charlotte Turner Kersley',
  profile: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer in
mi a mauris ornare sagittis. Suspendisse potenti. Suspendisse dapibus
dignissim dolor. Nam sapien tellus, tempus et, tempus ac, tincidunt
in, arcu. Duis dictum. Proin magna nulla, pellentesque non, commodo
et, iaculis sit amet, mi. Mauris condimentum massa ut metus. Donec
viverra, sapien mattis rutrum tristique, lacus eros semper tellus, et
molestie nisi sapien eu massa. Vestibulum ante ipsum primis in
faucibus orci luctus et ultrices posuere cubilia Curae; Fusce erat
tortor, mollis ut, accumsan ut, lacinia gravida, libero. Curabitur
massa felis, accumsan feugiat, convallis sit amet, porta vel, neque.
Duis et ligula non elit ultricies rutrum. Suspendisse tempor.
',
  role: 'Dance & Musical Theatre')
tutor.id = 3
tutor.save(validate: false)
#-------------------------
tutor = Tutor.new(
  name: 'Chrissie Cotterill',
  profile: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer in
mi a mauris ornare sagittis. Suspendisse potenti. Suspendisse dapibus
dignissim dolor. Nam sapien tellus, tempus et, tempus ac, tincidunt
in, arcu. Duis dictum. Proin magna nulla, pellentesque non, commodo
et, iaculis sit amet, mi. Mauris condimentum massa ut metus. Donec
viverra, sapien mattis rutrum tristique, lacus eros semper tellus, et
molestie nisi sapien eu massa. Vestibulum ante ipsum primis in
faucibus orci luctus et ultrices posuere cubilia Curae; Fusce erat
tortor, mollis ut, accumsan ut, lacinia gravida, libero. Curabitur
massa felis, accumsan feugiat, convallis sit amet, porta vel, neque.
Duis et ligula non elit ultricies rutrum. Suspendisse tempor.
',
  role: 'LAMDA')
tutor.id = 4
tutor.save(validate: false)
#-------------------------
tutor = Tutor.new(
  name: 'Laura Thomas',
  profile: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer in
mi a mauris ornare sagittis. Suspendisse potenti. Suspendisse dapibus
dignissim dolor. Nam sapien tellus, tempus et, tempus ac, tincidunt
in, arcu. Duis dictum. Proin magna nulla, pellentesque non, commodo
et, iaculis sit amet, mi. Mauris condimentum massa ut metus. Donec
viverra, sapien mattis rutrum tristique, lacus eros semper tellus, et
molestie nisi sapien eu massa. Vestibulum ante ipsum primis in
faucibus orci luctus et ultrices posuere cubilia Curae; Fusce erat
tortor, mollis ut, accumsan ut, lacinia gravida, libero. Curabitur
massa felis, accumsan feugiat, convallis sit amet, porta vel, neque.
Duis et ligula non elit ultricies rutrum. Suspendisse tempor.
',
  role: 'Musical Theatre')
tutor.id = 5
tutor.save(validate: false)
#-------------------------
tutor = Tutor.new(
  name: 'Luke Shaw',
  profile: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer in
mi a mauris ornare sagittis. Suspendisse potenti. Suspendisse dapibus
dignissim dolor. Nam sapien tellus, tempus et, tempus ac, tincidunt
in, arcu. Duis dictum. Proin magna nulla, pellentesque non, commodo
et, iaculis sit amet, mi. Mauris condimentum massa ut metus. Donec
viverra, sapien mattis rutrum tristique, lacus eros semper tellus, et
molestie nisi sapien eu massa. Vestibulum ante ipsum primis in
faucibus orci luctus et ultrices posuere cubilia Curae; Fusce erat
tortor, mollis ut, accumsan ut, lacinia gravida, libero. Curabitur
massa felis, accumsan feugiat, convallis sit amet, porta vel, neque.
Duis et ligula non elit ultricies rutrum. Suspendisse tempor.
',
  role: 'LAMDA')
tutor.id = 6
tutor.save(validate: false)
#-------------------------
tutor = Tutor.new(
  name: 'Marie Vickers',
  profile: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer in
mi a mauris ornare sagittis. Suspendisse potenti. Suspendisse dapibus
dignissim dolor. Nam sapien tellus, tempus et, tempus ac, tincidunt
in, arcu. Duis dictum. Proin magna nulla, pellentesque non, commodo
et, iaculis sit amet, mi. Mauris condimentum massa ut metus. Donec
viverra, sapien mattis rutrum tristique, lacus eros semper tellus, et
molestie nisi sapien eu massa. Vestibulum ante ipsum primis in
faucibus orci luctus et ultrices posuere cubilia Curae; Fusce erat
tortor, mollis ut, accumsan ut, lacinia gravida, libero. Curabitur
massa felis, accumsan feugiat, convallis sit amet, porta vel, neque.
Duis et ligula non elit ultricies rutrum. Suspendisse tempor.
',
  role: 'Drama, Tap/ Ballet')
tutor.id = 7
tutor.save(validate: false)
#-------------------------
tutor = Tutor.new(
  name: 'Millie Young',
  profile: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer in
mi a mauris ornare sagittis. Suspendisse potenti. Suspendisse dapibus
dignissim dolor. Nam sapien tellus, tempus et, tempus ac, tincidunt
in, arcu. Duis dictum. Proin magna nulla, pellentesque non, commodo
et, iaculis sit amet, mi. Mauris condimentum massa ut metus. Donec
viverra, sapien mattis rutrum tristique, lacus eros semper tellus, et
molestie nisi sapien eu massa. Vestibulum ante ipsum primis in
faucibus orci luctus et ultrices posuere cubilia Curae; Fusce erat
tortor, mollis ut, accumsan ut, lacinia gravida, libero. Curabitur
massa felis, accumsan feugiat, convallis sit amet, porta vel, neque.
Duis et ligula non elit ultricies rutrum. Suspendisse tempor.
',
  role: 'Singing & Musical Theatre')
tutor.id = 8
tutor.save(validate: false)
#-------------------------
tutor = Tutor.new(
  name: 'Sarah De Souza',
  profile: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer in
mi a mauris ornare sagittis. Suspendisse potenti. Suspendisse dapibus
dignissim dolor. Nam sapien tellus, tempus et, tempus ac, tincidunt
in, arcu. Duis dictum. Proin magna nulla, pellentesque non, commodo
et, iaculis sit amet, mi. Mauris condimentum massa ut metus. Donec
viverra, sapien mattis rutrum tristique, lacus eros semper tellus, et
molestie nisi sapien eu massa. Vestibulum ante ipsum primis in
faucibus orci luctus et ultrices posuere cubilia Curae; Fusce erat
tortor, mollis ut, accumsan ut, lacinia gravida, libero. Curabitur
massa felis, accumsan feugiat, convallis sit amet, porta vel, neque.
Duis et ligula non elit ultricies rutrum. Suspendisse tempor.
',
  role: 'Tap/Ballet, General Cover & Admin')
tutor.id = 9
tutor.save(validate: false)
#-------------------------
tutor = Tutor.new(
  name: 'Sue Marison',
  profile: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer in
mi a mauris ornare sagittis. Suspendisse potenti. Suspendisse dapibus
dignissim dolor. Nam sapien tellus, tempus et, tempus ac, tincidunt
in, arcu. Duis dictum. Proin magna nulla, pellentesque non, commodo
et, iaculis sit amet, mi. Mauris condimentum massa ut metus. Donec
viverra, sapien mattis rutrum tristique, lacus eros semper tellus, et
molestie nisi sapien eu massa. Vestibulum ante ipsum primis in
faucibus orci luctus et ultrices posuere cubilia Curae; Fusce erat
tortor, mollis ut, accumsan ut, lacinia gravida, libero. Curabitur
massa felis, accumsan feugiat, convallis sit amet, porta vel, neque.
Duis et ligula non elit ultricies rutrum. Suspendisse tempor.
',
  role: 'Admin')
tutor.id = 10
tutor.save(validate: false)
puts 'Tutor records created'

puts 'Venue records created'
