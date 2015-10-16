module ApplicationHelper
  require 'date'
  def timeago(time)
    p "What's the time? - " + (Time.now - time).to_s
    time_ago = ((Time.now - time) / 86400) # returns a number in days
    #Less than a day ago
    if time_ago < 1
      time_ago *= 24
      #Less than an hr ago
      if time_ago < 1
        time_ago *= 60
        #Less than a minute ago
        if time_ago < 1
          time_ago *= 60
          return "#{time_ago = time_ago.round}" + ((time_ago == 1) ? " second ago" : " seconds ago")
        end
        return "#{time_ago = time_ago.round}" + ((time_ago == 1) ? " minute ago" : " minutes ago")
      end
      return "#{time_ago = time_ago.round}" + ((time_ago == 1) ? " hour ago" : " hours ago")
    elseif time_ago == 1
    return "#{time_ago = time_ago.round} day ago"
  else
    return "#{time_ago = time_ago.round} days ago"
  end
end
end
