module Api
  module V1
    class TasksController < ApplicationController
      def index
        # この辺りはかなり簡略化しています。
	      # 本来であれば seeds.rb を作成した方が良いです...
        if Task.count.zero?
          ['1st task', '2nd task', '3rd task'].each do |title|
            Task.create!(title: title)
          end
        end

        Task.create!(title: Time.current.to_s)

        # この辺りも本来であればきちんとシリアライズした方が良いです...
        render json: { tasks: Task.all.to_json }
      end
    end
  end
end
