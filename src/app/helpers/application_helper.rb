module ApplicationHelper

  def user_avatar(user, size=40)
    if user.student? and user.student.avatar.attached?
      user.student.avatar
    elsif user.instructor? and user.instructor.avatar.attached?
      user.instructor.avatar
    elsif user.admin? and user.admin.avatar.attached?
      user.admin.avatar
    else
      "default.png"
    end
  end


  def get_ordinal(int)
    int.to_i
    unit = int % 10
    tens = int % 100
  
    if unit == 1 && tens != 11 
      ord = "#{int}st"
    elsif unit == 2 && tens != 12 
      ord = "#{int}nd"
    elsif unit == 3 && tens != 13 
      ord = "#{int}rd"
    else
      ord = "#{int}th"
    end

    return ord
  end

  def get_readable_date(date_string, type) 

    ymd = date_string.split("-")
    year = ymd[0].to_i
    month = ymd[1].to_i
    day = ymd[2].to_i
    date = Date.new(year, month, day)
    week = Array.new(7)
    month = []

    # setup array of weekdays according to date.getDay()
    week[0] = "Sunday"
    week[1] = "Monday"
    week[2] = "Tuesday"
    week[3] = "Wednesday"
    week[4] = "Thursday"
    week[5] = "Friday"
    week[6] = "Saturday"

    # setup array of Months
    month[0] = "Jan"
    month[1] = "Feb"
    month[2] = "Mar"
    month[3] = "Apr"
    month[4] = "May"
    month[5] = "June"
    month[6] = "July"
    month[7] = "Aug"
    month[8] = "Sept"
    month[9] = "Oct"
    month[10] = "Nov"
    month[11] = "Dec"
  
    weekday = week[date.day]
    monthName = month[date.month]
    dateOrdinal = get_ordinal(day)
  
    type == "without_day" ? readable = "#{dateOrdinal} #{monthName} #{year}" : readable = "#{weekday}, #{monthName} #{dateOrdinal} #{year}"
    # readable = "#{weekday}, #{monthName} #{dateOrdinal} #{year}"
    return readable
  
  end


  # GOOGLE MAPS JAVASCRIPT TAGE
  def google_maps_api_script_tag
    "https://maps.googleapis.com/maps/api/js?key=#{google_maps_api_key}&libraries=places&callback=initMap"
  end

  def google_maps_api_key
    Rails.application.credentials.dig(:google, :maps_api_key)
  end


end
