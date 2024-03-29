class Journey
  PENALTY_FARE = 10
  MINIMUM_FARE = 1

  attr_reader :in_journey, :entry_station, :exit_station

  def start station
    @entry_station = station
    @in_journey = true
  end

  def finish station
    @exit_station = station
    @in_journey = false
  end

  def fare
    return MINIMUM_FARE if journey_complete?
    return PENALTY_FARE if has_station?

    0
  end

  private

  def journey_complete?
    !@in_journey && @entry_station && @exit_station
  end

  def has_station?
    @entry_station || @exit_station
  end
end
