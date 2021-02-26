module Api
    module V1
        class HomeController < ApplicationController 
            def index 
                res = {
                    "name": "rails 6 api test",
                    "version": "1.0.0",
                    "description": "Simple api with rails 6",
                    "repository": {
                        "type": "git",
                        "url": "https://github.com/lionnelhost/api_test.git"
                      },
                    "author": "Patrick",
                    "license": "MIT"
                }

                render json: res 
            end
        end
    end
end
