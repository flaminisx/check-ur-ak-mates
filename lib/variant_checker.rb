class VariantChecker

	def initialize _me, numbers_count
		@me = _me
		@count = numbers_count
		@my_numbers = @me.to_s(2).split(//).last(@count).join
	end
  def check
    array = []
    (51..54).each do |group|
    	(1..30).each do |s|
        student = get_student group, s
    		array << student if check_student student
    	end
    end
    array
  end

  private

  def get_student group, number
    group * 100 + number
  end

  def check_student student
    student.to_s(2).split(//).last(@count).join == @my_numbers
  end
end
