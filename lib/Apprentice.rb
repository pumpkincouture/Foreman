class Apprentice

  attr_reader :name, :last_name

  def initialize(params = {})
    @name = params.fetch(:name)
    @last_name = params.fetch(:last_name)
  end
end