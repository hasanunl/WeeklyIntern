class WeeklyIntern
  @@array = Array.new
  attr_accessor :name, :day, :start_time, :end_time

  def self.all_instances
    puts @@array.inspect
  end

  def self.weekday_info
    puts "Please write the name of the day :"
    weekday = gets.chomp.downcase
    @@array.each do |iterate|
      if iterate.day == weekday
        puts iterate.inspect
      end
    end
  end

  def initialize(name,day,start_time,end_time)
    @name = name
    @day = day.downcase
    @start_time = start_time
    @end_time = end_time
    @@array << self
  end



end

WeeklyIntern.new('hasan','monday',9,18)
WeeklyIntern.new('merve','tuesday',13,18)
WeeklyIntern.new('kemal','tuesday',9,13)
WeeklyIntern.new('ece','friday',13,18)

WeeklyIntern.all_instances
WeeklyIntern.weekday_info

