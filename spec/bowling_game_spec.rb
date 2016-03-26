require_relative '../lib/bowling_game'

describe BowlingGame do
  let(:game) { BowlingGame.new }
  context 'with a gutter game' do
    let(:gutter_game) { [0] * 20 }
    it 'has a total score of 0' do
      score = game.rolls(gutter_game).score

      expect(score).to eq(0)
    end
  end

  context 'with all ones' do
    it 'has a total score of 20' do
      score = game.rolls([1] * 20).score

      expect(score).to eq(20)
    end
  end

  context 'with a normal game' do
    let(:normal_game) { [4, 5] + [0] * 18 }
    it 'calculates total' do
      score = game.rolls(normal_game).score

      expect(score).to eq(9)
    end
  end

  context 'with a spare' do
    let(:spare) { [5, 5, 4, 4] + [0] * 16 }
    it 'scores a spare' do
      score = game.rolls(spare).score

      expect(score).to eq(22)
    end
  end

  context 'with a perfect game' do
    let(:perfect_game) { [10] * 12 }
    it 'has a score of 300' do
      score = game.rolls(perfect_game).score

      expect(score).to eq(300)
    end
  end

  context 'with a few strikes' do
    let(:strikes) { [10, 10, 10] + [0] * 14 }
    it 'has a score of 60' do
      score = game.rolls(strikes).score

      expect(score).to eq(60)
    end
  end
end
