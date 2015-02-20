require 'date'

class Apprentice
  attr_reader :first_name, :last_name, :email, :end_date, :foreman

  def initialize(params = {})
    @first_name = params.fetch(:first_name)
    @last_name = params.fetch(:last_name)
    @email = params.fetch(:email)
    @end_date = Date.strptime(params.fetch(:end_date), "%Y-%m-%d")
    @foreman = params.fetch(:foreman, false)
  end
end
