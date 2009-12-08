module LabelsHelper
  
  def first_row_class(i)
    ''
  end
  
  def last_row_class(i)
    div_by_3 = (i / 3).to_i
    if div_by_3 % 7 == 0
      return "bottom_row"
    end
  end
  
  
end
