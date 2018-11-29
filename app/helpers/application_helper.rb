module ApplicationHelper
  def show_svg(path)
    File.open("app/assets/images/#{path}", "rb") do |file|
      raw file.read
    end
  end

  def nice_date(date)
    date.strftime("%d %m %Y - %H:%M")
  end
end
