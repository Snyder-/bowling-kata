#
class BowlingGame
  attr_reader :first_in_frame, :rolls
  def initialize
    @first_in_frame = 0
  end

  def rolls(string_scores)
    @rolls = string_scores
    self
  end

  def score
    frame = 0
    score = 0
    while frame < 10
      if spare?
        score += 10 + spare_bonus
        @first_in_frame += 2
      elsif strike?
        score += 10 + strike_bonus
        @first_in_frame += 1
      else
        score += standard_score
        @first_in_frame += 2
      end
      frame += 1
    end
    score
  end

  private

  def spare_bonus
    @rolls[first_in_frame + 2]
  end

  def strike?
    @rolls[first_in_frame] == 10
  end

  def spare?
    @rolls[first_in_frame] + @rolls[first_in_frame + 1] == 10
  end

  def strike_bonus
    @rolls[first_in_frame + 1] + @rolls[first_in_frame + 2]
  end

  def standard_score
    @rolls[first_in_frame] + @rolls[first_in_frame + 1]
  end
end
