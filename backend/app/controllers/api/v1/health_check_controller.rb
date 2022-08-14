module Api
  module V1
    class HealthCheckController < ApplicationController
      # 2. 200を返す
      def index
        head 200
      end
    end
  end
end
