require 'pry'
class Tournament
  def self.tally(input)
    header + team_scores(input)
  end

  def self.header
    <<~HEREDOC
      Team                           | MP |  W |  D |  L |  P
    HEREDOC
  end

  def self.team_scores(input)
    score_output = ''
    prepped_input = prep_input(input)
    team_repo = TeamRepository.new

    return score_output if prepped_input.first.empty?

    update_scores(prepped_input, team_repo)

    team_repo.teams.each do |team|
      team.matches_played = team.wins + team.losses + team.draws
      team.points = team.wins * 3 + team.draws

      score_output << <<~HEREDOC
        #{team.name.ljust(31)}|  #{team.matches_played} |  #{team.wins} |  #{team.draws} |  #{team.losses} |  #{team.points}
      HEREDOC
    end

    score_output
  end

  def self.update_scores(prepped_input, team_repo)
    prepped_input.each do |line|
      team_1 = team_repo.find_or_create_team(line[0])
      team_2 = team_repo.find_or_create_team(line[1])
      result = line[2]

      case result
      when 'win'
        team_1.wins += 1
        team_2.losses += 1
      when 'loss'
        team_1.losses += 1
        team_2.wins += 1
      when 'draw'
        team_1.draws += 1
        team_2.draws += 1
      end
    end
  end

  def self.prep_input(input)
    input.lines.map do |line|
      team_1, team_2, result = line.strip.split(';')
    end
  end
end

class Team
  attr_reader :name

  attr_accessor :matches_played, :wins, :draws, :losses, :points

  def initialize(name)
    @name = name
    @matches_played = 0
    @wins = 0
    @draws = 0
    @losses = 0
    @points = 0
  end
end

class TeamRepository
  attr_accessor :teams

  def initialize
    @teams = []
  end

  def find_or_create_team(name)
    team = find_team(name)
    if team.nil?
      team = Team.new(name)
      teams << team
    end
    team
  end

  def find_team(name)
    teams.find { |team| team.name == name }
  end
end
