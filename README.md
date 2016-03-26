# Bowling Kata

### Create a class to calculate the scores of a bowling game

#### With two strikes and a five and a lot of gutter balls!
``` ruby

game = BowlingGame.new

bowling_string = [10, 10, 5] + ([0] * 14)

game.rolls(bowling_string).score  # => 45

```

#### With all spares.
``` ruby

bowling_string = [8, 2, 5, 4, 9, 0, 10, 0, 10, 0, 5, 5, 5, 3, 6, 3, 9, 1, 9, 1, 10]
game.rolls(bowling_string).score # => 149

```
