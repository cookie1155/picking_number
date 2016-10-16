class MyArr
  attr_reader :arr

  # @param [Array] arr 1つの数字を取り出した後の配列
  def initialize(arr)
    @arr = arr
  end

  def sorted_arr
    return @sorted_arr if @sorted_arr

    sorted_arr = arr.sort
    # 最後尾の数字も探索できるように、最後に数字を追加する
    sorted_arr << sorted_arr.size + 2
    @sorted_arr = sorted_arr
  end

  def missing_number
    left = 0
    right = sorted_arr.size - 1
    mid = nil

    # leftとrightが同じ値に収束するまで二分探索を行う
    # この収束した値が、取り出された数字が入っていたはずのindexになる
    while left < right do
      mid = (left + right) / 2

      # 取り出された数字がmidより後だった場合
      if sorted_arr[mid] == mid + 1
        left = mid + 1

      # 取り出された数字がmidまたはmidより前だった場合
      else
        right = mid
      end
    end

    left + 1
  end
end
