#!/usr/bin/env lua
-- Number guessing game.
math.randomseed(os.time())
local max = tonumber(arg[1]) or 100
local target = math.random(1, max)

print(string.format("Guess the number between 1 and %d. You have 10 attempts.", max))

for attempt = 1, 10 do
    io.write(string.format("Attempt %d/10: ", attempt))
    local guess = tonumber(io.read())
    if not guess then
        print("Please enter a number.")
    elseif guess == target then
        print(string.format("Correct! You won in %d attempts.", attempt))
        os.exit(0)
    elseif guess < target then
        print("Too low!")
    else
        print("Too high!")
    end
end

print(string.format("Game over! The number was %d.", target))
