# create a new test user
low_intensity = User.create(email: "test@test.com", password: "password")

# create a trip for now
# low intensity, landmarks, medium cost
low_intensity.trips.create(date: Time.now, category: "landmarks", intensity: "low", cost: "medium")

# add trip events
low_intensity.trips.first.trip_events.create(event_type: "breakfast", place_id: "ChIJKye2O32AhYARG37tXAsOj7Q")
low_intensity.trips.first.trip_events.create(event_type: "landmark", place_id: "ChIJiZyN7IeAhYARfJshHJaQckc")
low_intensity.trips.first.trip_events.create(event_type: "lunch", place_id: "ChIJSToWqn2AhYAR1CuH2iGMvuo")
low_intensity.trips.first.trip_events.create(event_type: "arts", place_id: "ChIJ53I1Yn2AhYAR_Vl1vNygfM")
low_intensity.trips.first.trip_events.create(event_type: "dinner", place_id: "ChIJaZ6Hg4iAhYARrwVEfkv9Zlw")
low_intensity.trips.first.trip_events.create(event_type: "culture", place_id: "ChIJ-zhtDYeAhYAREh_HF8J91xQ")

# ===========================

high_intensity = User.create(email: "test2@test.com", password: "password")

# create a hith entensity trip for now
# high intensity, landmark, splurge
high_intensity.trips.create(date: Time.now, category: "landmarks", intensity: "high", cost: "splurge")

# add trip events
high_intensity.trips.first.trip_events.create(event_type: "breakfast", place_id: "ChIJF7AFf-SAhYARJPDwj0CBm14")
high_intensity.trips.first.trip_events.create(event_type: "landmark", place_id: "ChIJQ09tqOGAhYARinfjX2EOfaM")
high_intensity.trips.first.trip_events.create(event_type: "landmark", place_id: "ChIJvXl2weCAhYARjSxnhzrBfNc")
high_intensity.trips.first.trip_events.create(event_type: "lunch", place_id: "ChIJZTCRmjyHhYAR1aeqChJLjng")
high_intensity.trips.first.trip_events.create(event_type: "landmark", place_id: "ChIJIUT7rEOHhYARucp3wM")
high_intensity.trips.first.trip_events.create(event_type: "landmark", place_id: "ChIJW5w2V2iHhYARQoOl_ZsQlOg")
high_intensity.trips.first.trip_events.create(event_type: "dinner", place_id: "ChIJHSGzi_yAhYARptfivXk-Qlo")
high_intensity.trips.first.trip_events.create(event_type: "landmark", place_id: "ChIJHSGzi_yAhYARnrPmDWAx9ro")
high_intensity.trips.first.trip_events.create(event_type: "landmark", place_id: "ChIJAQAAQIyAhYARRN3yIQG4hd4")