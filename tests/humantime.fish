functions --query humantime || exit

@test "milliseconds" (humantime 1) = 1ms
@test "milliseconds 999" (humantime 999) = 999ms
@test "seconds" (humantime 1000) = 1s
@test "fractional seconds" (humantime 1123) = 1.1s
@test "minutes" (humantime 60000) = 1m
@test "hours" (humantime 3600000) = 1h
@test "hours seconds" (humantime 3601000) = "1h 1s"
@test "hours fractional seconds" (humantime 3601200) = "1h 1.2s"
@test "hours minutes" (humantime 3660000) = "1h 1m"
@test "hours minutes seconds" (humantime 3661000) = "1h 1m 1s"
@test "hours minutes fractional seconds" (humantime 3661500) = "1h 1m 1.5s"
@test "pie" (humantime 11655900) = "3h 14m 15.9s"
