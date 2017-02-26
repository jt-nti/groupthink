module ApplicationHelper
  
  def new_session_path(scope)
      new_user_session_path
  end
    
  def row_class(pr)
    case pr.state
    when 'passed', 'agreed', 'accepted'
      'success'
    when 'waiting'
      'warning'
    when 'blocked', 'dead', 'rejected'
      'danger'
    end
  end
  
  def user_row_class(state)
    case state
    when 'agree'
      'success'
    when 'no', 'participating'
      'warning'
    when 'block'
      'danger'
    else
      ''
    end
  end
  
  def vote_icon(vote)
    case vote
    when 'agree'
      "<i class='fa fa-thumbs-o-up'></i>".html_safe
    when 'no'
      "<i class='fa fa-hand-stop-o'></i>".html_safe
    when 'block'
      "<i class='fa fa-thumbs-o-down'></i>".html_safe
    else
      ""
    end
  end

  def state_icon(state)
    case state
    when 'waiting'
      "<i class='fa fa-clock-o'></i>".html_safe
    when 'blocked', 'rejected'
      "<i class='fa fa-ban'></i>".html_safe
    when 'accepted', 'passed', 'agreed'
      "<i class='fa fa-check'></i>".html_safe
    else
      ""
    end
  end

end
