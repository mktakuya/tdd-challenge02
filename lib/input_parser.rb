class InputParser
  def execute(input)
    input.split.map(&:to_f)
  end
end
