module SocksHelper
    # This helper returns the CSS class "matched" if the sock is already matched.
    def is_matched_class sock
        if sock.matched?
            "matched"
        end
    end
end

