module NbaRb
  module Player
    class ShootingSplits < NbaRb::Player::Dashboard
      @endpoint = 'playerdashboardbyshootingsplits'

      def shot_5ft
        create_stats_hash(@data[1])
      end

      def shot_8ft
        create_stats_hash(@data[2])
      end

      def shot_areas
        create_stats_hash(@data[3])
      end

      def assisted_shots
        create_stats_hash(@data[4])
      end

      def shot_types_summary
        create_stats_hash(@data[5])
      end

      def shot_types_detail
        create_stats_hash(@data[6])
      end

      def assissted_by
        create_stats_hash(@data[7])
      end
    end
  end
end
