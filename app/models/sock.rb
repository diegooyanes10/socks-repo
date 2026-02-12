class Sock < ApplicationRecord
  # A sock can be part of a match as the first sock.
  has_one :match_as_sock_1,
           class_name: "Match",
           foreign_key: :sock_1_id,
           dependent: :destroy

  # A sock can be part of a match as the second sock.
  has_one :match_as_sock_2,
           class_name: "Match",
           foreign_key: :sock_2_id,
           dependent: :destroy

  belongs_to :owner, class_name: "User", foreign_key: :user_id
    
  # Finds the match where this sock is included.
  def match
    # NOTE: Should "Match" actually be named "Pair"? I think of `sock.match` returning the other sock.
    Match.find_by("sock_1_id = :id OR sock_2_id = :id", id: id) # Return the match involving this sock
  end

  # Returns true if the sock has a match.
  def matched?
    match.present?
  end
end