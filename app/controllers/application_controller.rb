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
        @apr = (params.fetch("apr").to_f).round(4)
        @years = params.fetch("years").to_f
        @principal = params.fetch("principal").to_f
        @payment = (@apr/100/12.0*@principal/(1.0 - (1.0 + @apr/100/12.0)**(-@years*12.0))).to_s(:currency)
        @pv = @principal.to_s(:currency)
        #@perc = @apr.to_s(:percentage)
        @perc = sprintf('%.4f%%', @apr)
        render({ :template => "game_templates/payment_results.html.erb" })

    end

    def random_new
        render({ :template => "game_templates/random_new.html.erb" })
    end

    def random_results
        @min = params.fetch("min").to_f
        @max = params.fetch("max").to_f
        @random = rand(@min..@max)
        render({ :template => "game_templates/random_results.html.erb" })

    end
end
