# Eagle Cache

**Lua** · **v0.1.0**

_Number guessing game with 10 attempts_

---

## Features

- Random target between 1 and N
- Too high / too low hints
- Attempt limit with game over

## Installation

```bash
git clone https://github.com/DevCode01/eagle-cache.git
cd eagle-cache
```

## Usage

```bash
lua eagle-cache.lua 100
```

## How it works

Number guessing game with a configurable upper bound (default 100): the program picks a secret number and you have 10 attempts, with too-high/too-low feedback after each guess.

## Options

- `max` - upper bound for the secret number (default 100)

## Example

```bash
$ lua eagle-cache.lua 100
Guess the number between 1 and 100. You have 10 attempts.
Attempt 1/10: Too low!
Attempt 2/10: Too low!
Attempt 3/10: Too low!
...
Game over! The number was 93.
```

## Testing

```bash
bash tests/run.sh
```

Runs the build/syntax check (interactive/random/networked output isn't asserted exactly).

## License

MIT
