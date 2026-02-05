module MatchesHelper
    # This helper creates a list of socks for a dropdown menu in the view.
    # It returns the sock name and id for each sock.
    def socks_options
        # TODO: Use RDoc for function documentation like below
        # [["", 1],["", 2],["", 3]]
        @socks.map do |sock|
            [sock.name, sock.id]
        end
    end
end
