class MyArr
  attr_reader :arr

  # @param [Array] arr 1つの数字を取り出した後の配列
  def initialize(arr)
    @arr = arr
  end

  def missing_number
    ret = nil
    arr.sort.each_with_index do |number, i|
      next if number == i + 1

      ret = i + 1
      break
    end

    ret
  end
end
