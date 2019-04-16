require 'date'

class Offset
  attr_reader :date

  def initialize(date)
    @date = date
  end

  def date_set
    Date.today.strftime('%m%d%y')
  end

  def offsets(date)
    (date.to_i**2).to_s.chars.last(4).map(&:to_i)
  end
end
