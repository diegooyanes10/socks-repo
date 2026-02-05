class Match < ApplicationRecord
    # This model represents a match between two socks.
    # Each match belongs to two different Sock records.
    belongs_to :sock_1, class_name: "Sock"
    belongs_to :sock_2, class_name: "Sock"
end
