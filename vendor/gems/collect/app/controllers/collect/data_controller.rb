require_dependency "collect/application_controller"

module Collect
  class DataController < ApplicationController
    skip_before_action :verify_authenticity_token

    def call
      if params
        render json: revert_values(params).to_json, status: :ok
      else
        render json: '', status: :ok
      end
    end

    private
    def revert_values(params)
      pr = params[:datum]
      i = 1
      until pr["key#{i}".to_sym] == nil
        pr["key#{i}".to_sym] = pr["key#{i}".to_sym].reverse! if pr["key#{i}".to_sym]
        i += 1
      end
      pr
    end
  end
end
