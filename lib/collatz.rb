require "collatz/version"

class Collatz
  include Comparable

  def initialize number
    raise RangeError, 'Collatz number needs to be a positive integer' unless number.is_a? Integer and number > 0

    @number = number
  end

  def next
    if self.even?
      self / 2
    elsif self.odd?
      self * 3 + 1
    end
  end

  def pred
    if self.even? and (self - 1).to_i.modulo(3).eql? 0
      (self - 1) / 3
    else
      self * 2
    end
  end

  def succ
    self.next
  end

  def <=> other
    self.to_i <=> other.to_i
  end

  def to_i
    @number
  end

  def to_s
    @number.to_s
  end

  # Props to http://stackoverflow.com/questions/1095789/sub-classing-fixnum-in-ruby
  def method_missing name, *args, &blk
    ret = @number.send(name, *args, &blk)
    ret.is_a?(Numeric) ? Collatz.new(ret) : ret
  end
end
