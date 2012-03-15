# maybe define re-usable stuffs?
# font :big_header, size: 12, foo: "D"

# Meh, if you want to make re-usable stuffs but don't want to
# define custom methods like "font", "lines", whatever ... maybe just
# define font: "Big Header", size: 12, foo: "D"
#
# field font: "Big Header" do
#   font "Big Header"
# end

label do

  orientation   :n
  home          20, 0
  default_width 0, 0
  print_rate    :a
  home          0, 0
  quantity      label_quantity

  bar_code origin: [130, 75], type: 3 do
    height 100
    data   bar_code_a
  end

  bar_code origin: [920, 2190], :type => :x do
    orientation :n
    height      9
    quality     200
    data        bar_code_b
  end

  field origin: [75, 250]   do
    font   :d, height: 60
    width  1175
    lines  5
    data  field_a
  end

  field origin: [75, 850]   do
    font   :d, height: 60
    data   field_b
  end

  field origin: [75, 1050]  do
    font   :d, height: 60
    data   field_c
  end

  field origin: [75, 1200]  do
    font   name: 'D', height: 25
    width  1100
    lines  6
    data   field_d
  end

  field origin: [995, 1600] do
    font        :d, height: 36
    orientation :n
    data        field_e
  end

  field origin: [895, 1600] do
    font        :d, height: 36
    orientation :n
    data        field_f
  end

  field origin: [780, 1620] do
    font        :d, height: 36
    orientation :n
    data        field_g
  end

  field origin: [660, 1620] do
    font        :d, height: 36
    orientation :n
    data        field_h
  end

  field origin: [565, 1620] do
    orientation :r
    data        field_i
  end

  field origin: [515, 1620] do
    orientation :r
    data        field_j
  end

  field origin: [465, 1620] do
    orientation :r
    data        field_k
  end

  field origin: [415, 1620] do
    orientation :r
    data        field_l
  end

  field origin: [325, 1620] do
    orientation :r
    data        field_m
  end

  field origin: [275, 1620] do
    orientation :r
    data        field_n
  end

  field origin: [225, 1620] do
    orientation :r
    data        field_o
  end

  field origin: [175, 1620] do
    orientation :r
    data        field_p
  end

end
