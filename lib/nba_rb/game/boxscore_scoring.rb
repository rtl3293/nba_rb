module NbaRb
  module Game
    class BoxscoreScoring < Boxscore
      @endpoint = 'boxscorescoringv2'

      def endpoint
        self.class.endpoint
      end

      def matchup
        scores = players_scoring
        home_team = scores[0]['TEAM_ABBREVIATION']
        away_team = scores.last['TEAM_ABBREVIATION']
      end

      def players_scoring
        create_stats_hash(@data[13])
      end

      def team_scoring
        create_stats_hash(@data[14])
      end
    end
  end
end
