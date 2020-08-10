module ApplicationHelper

  # helper function to get the current user's avatar
  def user_avatar(user, size=40)
    # return the avater of who is passed
    # if its not there, send back the default image
    if user.student?
      return user&.student&.avatar if user&.student&.avatar&.attached?
      "default.png"
    elsif user.instructor?
      return user&.instructor&.avatar if user&.instructor&.avatar&.attached?
      "default.png"
    elsif user.admin?
      return user&.admin&.avatar if user&.admin&.avatar&.attached?
      "default.png"
    end
  end

  # changes a 1 to 1st, 2 to 2nd and so on
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

  # changes the date format from the date picker to a human readable string
  # e.g. 2000-01-01 -> 1st Jan, 2020
  def get_readable_date(date_string, type)
  
    date_string = date_string.to_s

    # return "N/A" if date_string&.empty? 
    return "N/A" if date_string == nil
    return "N/A" if date_string&.split("-").length < 3

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

  
    weekday = week[date.wday-1]
    # month - 1 because December = 12 for months, but its the 11th position in arraym hence 12 - 1 = 11 => "Dec"
    monthName = month[date.month-1]
    dateOrdinal = get_ordinal(day)
  
    type == "without_day" ? readable = "#{dateOrdinal} #{monthName} #{year}" : readable = "#{weekday}, #{monthName} #{dateOrdinal} #{year}"
    return readable
    
  end

  # adds a space in mobile numbers
  # e.g. 0400111222 -> 0400 111 222
  def get_readable_phone_number(number)
    "#{number[0..3]} #{number[4..6]} #{number[7..9]}"
  end

  # removes the ", Australia" from the end of addresses to shorten the string
  def get_readable_address(address)
    "#{address[0..-12]}"
  end



  # GOOGLE MAPS JAVASCRIPT TAG
  # returns the google maps api script into the javascript pack tag in application.html.erb
  def google_maps_api_script_tag
    "https://maps.googleapis.com/maps/api/js?key=#{google_maps_api_key}&libraries=places&callback=initMap"
  end

  #digs in the credentials file to get the google maps api key and returns it into the script tag above
  def google_maps_api_key
    Rails.application.credentials.dig(:google, :maps_api_key)
  end

end
