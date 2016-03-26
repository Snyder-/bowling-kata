#
class BowlingGame
  attr_reader :first_in_frame, :rolls, :score, :frame
  def initialize
    @first_in_frame = 0
    @score = 0
    @frame = 0
  end

  def rolls(string_scores)
    @rolls = string_scores
    self
  end

  def score
    reset_frames_and_score
    while frame < 10
      if strike? then add_strike_score
      elsif spare? then add_spare_score
      else
        standard_frame_score
      end
      @frame += 1
    end
    @score
  end

  private

  def standard_frame_score
    @score += standard_score
    @first_in_frame += 2
  end

  def add_strike_score
    @score += 10 + strike_bonus
    @first_in_frame += 1
  end

  def add_spare_score
    @score += 10 + spare_bonus
    @first_in_frame += 2
  end

  def reset_frames_and_score
    @first_in_frame = 0
    @frame = 0
    @score = 0
  end

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
