label do

  orientation   :n
  home          20, 0
  default_width 0, 0
  print_rate    :a
  home          0, 0
  quantity      label_quantity

  bar_code do
    type   3
    height 100
    origin 130, 75
    data   bar_code_a
  end

  bar_code do
    origin      920, 2190
    orientation :n
    height      9
    quality     200
    data        bar_code_b
  end

  field do
    origin 75, 250
    font   :d, height: 60
    width  1175
    lines  5
    data  field_a
  end

  field do
    origin 75, 850
    font   :d, height: 60
    data   field_b
  end

  field do
    origin 75, 1050
    font   :d, height: 60
    data   field_c
  end

  field do
    origin 75, 1200
    font   name: 'D', height: 25
    width  1100
    lines  6
    data   field_d
  end

  field do
    origin      995, 1600
    font        :d, height: 36
    orientation :n
    data        field_e
  end

  field do
    origin      895, 1600
    font        :d, height: 36
    orientation :n
    data        field_f
  end

  field do
    origin      780, 1620
    font        :d, height: 36
    orientation :n
    data        field_g
  end

  field do
    origin      660, 1620
    font        :d, height: 36
    orientation :n
    data        field_h
  end

  field do
    origin      565, 1620
    orientation :r
    data        field_i
  end

  field do
    origin      515, 1620
    orientation :r
    data        field_j
  end

  field do
    origin      465, 1620
    orientation :r
    data        field_k
  end

  field do
    origin      415, 1620
    orientation :r
    data        field_l
  end

  field do
    origin      325, 1620
    orientation :r
    data        field_m
  end

  field do
    origin      275, 1620
    orientation :r
    data        field_n
  end

  field do
    origin      225, 1620
    orientation :r
    data        field_o
  end

  field do
    origin      175, 1620
    orientation :r
    data        field_p
  end

end
