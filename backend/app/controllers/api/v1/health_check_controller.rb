module Api
  module V1
    class HealthCheckController < ApplicationController
      # 2. 200γθΏγ
      def index
        head 200
      end
    end
  end
end
