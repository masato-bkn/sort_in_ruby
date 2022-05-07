# クイックソートで関数を実装する
# 1. aをある基準値より小さいもの、大きいものとの二つの配列に分ける
# 2. さらに、その二つの配列に対して、1.の動作を、要素数が1以下になるまで繰り返す
# 3. 2を再帰的に行うことで、ソートを行う

def quiq_sort(array)
  return array if array.size <= 1 
  pivot = array.shift

  left, right = [], []
  array.each do |e|
    if e < pivot
      left << e
    else
      right << e
    end
  end

  left = quiq_sort(left)
  right = quiq_sort(right)
  left + [pivot] + right
end

p quiq_sort([13, 8, 3, 1, 11, 15, 2])
