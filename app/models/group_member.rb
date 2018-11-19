class GroupMember < ApplicationRecord

    # Relationships
    belongs_to :user
    belongs_to :travel_group

    # Scopes
    scope :in_group, -> (travel_groups_id) { where(travel_groups_id: travel_groups_id) }

end
