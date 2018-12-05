class WeeklyIntern
  @@array = Array.new
  attr_accessor :first_name, :last_name, :day, :start_time_morning, :end_time_morning, :start_time_afternoon, :end_time_afternoon

  def self.all_instances
    puts @@array.inspect
  end

  def self.weekday_info
    puts "Please write the name of the day :"
    weekday = gets.chomp.downcase
    @@array.each do |iterate|
      if iterate.day == weekday
        puts iterate.inspect
        if iterate.start_time_morning == nil
          puts "The intern only comes to work at afternoon"
        elsif iterate.start_time_afternoon == nil
          puts "The intern only comes to work at morning"
        else
          puts "This intern comes to work at morning and afternoon"
        end
      end
    end
  end

  def self.intern_info
    puts "Please write the first name of the intern :"
    first_name = gets.chomp.downcase
    @@array.each do |iterate|
      if iterate.first_name == first_name
        puts iterate.inspect
        if iterate.start_time_morning == nil
          puts "The intern only comes to work at afternoon"
        elsif iterate.start_time_afternoon == nil
          puts "The intern only comes to work at morning"
        else
          puts "This intern comes to work at morning and afternoon"
        end
      end
    end
  end

  def initialize(first_name,last_name,day,start_time_morning,end_time_morning,start_time_afternoon,end_time_afternoon)
    @first_name = first_name
    @last_name = last_name
    @day = day.downcase
    @start_time_morning = start_time_morning
    @end_time_morning = end_time_morning
    @start_time_afternoon = start_time_afternoon
    @end_time_afternoon = end_time_afternoon
    @@array << self
  end
end

WeeklyIntern.new('hasan','ünlü','monday',9,12,13,18)
WeeklyIntern.new('merve','sahan','tuesday',nil,nil,13,18)
WeeklyIntern.new('kemal','akın','tuesday',9,13, nil,nil )
WeeklyIntern.new('ece','yıldırım','friday',9,12,13,18)
WeeklyIntern.new('hasan','ünlü','friday',nil,nil,13,18)



WeeklyIntern.all_instances
WeeklyIntern.weekday_info
WeeklyIntern.intern_info


