require "./lib/shape"

class Rectangle < Shape

    attr_reader:  :color,
                  :length,
                  :width

  def initialize(color, length, width)
    super
  end

  def area @length * @width

  # this class should have the following properties:
  # - color
  # - length
  # - width

  #It should have the following methods:
  # - area (width * length)
  # - perimeter (2 * (length + width))

end