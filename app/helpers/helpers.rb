class Helpers

    def self.current_user(session)
        @user = User.find(session[:user_id])
    end

    def self.is_logged_in?(session)
        # alternately could use  !!self.current_user(session)
        !!session[:user_id]
    end

end