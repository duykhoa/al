class AnalyzeSum
  def initialize(n)
    @n = n
    @result = []
  end

  def sum
    @result = []
    @a = []
    sum_of(@n)

    @result.map { |result| result.sort }.uniq
  end

#print "currently, i = #{i}, n = #{n}\n"
#print "add #{i} to @a, recursive for sum_of(@n - @a.reduce :+) #{ @n - @a.reduce(:+) }\n"
#print "current @a, #{@a}\n"

#print "===finish sum_of for n = #{n}\n"
#print "solution is-========", @a, "\n" if @a.reduce(:+) == @n
#print "remove last item #{@a} before go back\n"

  def sum_of(n)
    (1..n).each do |i|
      @a << i
      sum_of(@n - @a.reduce(:+))
    end

    @result << @a.clone if @a.reduce(:+) == @n
    @a.pop
  end
end

AnalyzeSum.new(15).sum.each do |sol|
  print "solution is-========", sol, "\n"
end
