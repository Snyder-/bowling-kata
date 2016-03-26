# Bowling Kata

### Create a class to calculate the scores of a bowling game

#### With two strikes and a five and a lot of gutter balls!
``` ruby

game = BowlingGame.new

bowling_string = [10, 10, 5] + ([0] * 15)

game.rolls(bowling_string).score  # => 45

```

#### With all spares.
``` ruby

bowling_string = [10,7,3,9,0,10,0,8,8,2,0,6,10,10,10,8,1]
game.rolls(bowling_string).score # => 167

```
