class ApplicationController < ActionController::Base

    def square_new
        render({ :template => "game_templates/square_new.html.erb" })
    end

    def square_results
        @num = params.fetch("user_square").to_f
        render({ :template => "game_templates/square_results.html.erb" })

    end

    def square_root_new
        render({ :template => "game_templates/square_root_new.html.erb" })
    end

    def square_root_results
        @num = params.fetch("user_square").to_f
        render({ :template => "game_templates/square_root_results.html.erb" })

    end

    def payment_new
        render({ :template => "game_templates/payment_new.html.erb" })
    end

    def payment_results
        @num = params.fetch("user_square").to_f
        render({ :template => "game_templates/payment_results.html.erb" })

    end

    def random_new
        render({ :template => "game_templates/random_new.html.erb" })
    end

    def random_results
        @num = params.fetch("user_square").to_f
        render({ :template => "game_templates/random_results.html.erb" })

    end
end
