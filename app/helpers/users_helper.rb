module UsersHelper

  def action_buttons(user)
    case current_user.friendship_status(user)
      when 'friends'
        link_to 'Remove Friendship', friendship_path(current_user.friendship_relation(user)), method: :delete, data: {confirm: 'Are you sure?'}
      when 'pending'
        link_to 'Cancel Request', friendship_path(current_user.friendship_relation(user)), method: :delete, data: {confirm: 'Are you sure?'}
      when 'requested'
        link_to 'Accept', accept_friendship_path(current_user.friendship_relation(user)), method: :put
        #link_to 'Deny', deny_friendship_path(current_user.friendship_relation(user))
      when 'not_friends'
        link_to 'Add as a friend', friendships_path(user_id: user.id), method: :post
    end
  end
end
