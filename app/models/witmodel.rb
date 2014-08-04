class Witmodel < ActiveRecord::Base

    def command(string)
        @witcommand = Wit::Client.new 'D3L4UX6UDIPF2AKHJ5UEZHLXIS264265'
        @witcommand.message(string)
        
    end

end
