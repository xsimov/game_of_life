class Cell
  def status
    @status ||= :alive
  end

  def switch_status
    @status = (@status == :dead) ? :alive : :dead
  end
end