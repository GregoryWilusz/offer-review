module Api
  module V1
    class TestsController < ApplicationController
      def index
        render json: { success: true }
      end
    end
  end
end
