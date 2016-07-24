User.create(email: 'bobbysags@gmail.com', first_name: 'Bob', last_name: 'Saget', password: '123', bio: "Hey, I'm Bob", fav_artist: "Third Eye Blind")
User.create(email: 'sobbybags1@gmail.com', first_name: 'Sob', last_name: 'Baget', password: '123', bio: "Hey, I'm Sob", fav_artist: "The Knocks")
Drive.create(user_id: 2,
             start_lat: 37.638855,
             start_long: -122.493948,
             end_lat: 37.767154,
             end_long: -122.493052,
             departure_min: 2016-08-06 10:00:00 -0000,
             departure_max: 2016-08-06 12:00:00 -0000,
             seats_available: 2
             )
Ride.create(user_id: 2,
            start_lat: 37.692515,
            start_long: -122.493448,
            end_lat: 37.767154,
            end_long: -122.493052,
            departure_min: 2016-08-06 10:00:00 -0000,
            departure_max: 2016-08-06 12:00:00 -0000,
            passengers: 2
            )
Request.create(ride_id: 1, drive_id: 1, confirmed: false)