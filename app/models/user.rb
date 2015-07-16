class User
  def initialize(email:)
    @email = email
  end

  def todos
    Todo.where(owner_email: email)
  end

  def signed_in?
    true
  end

  private

  attr_reader :email
end
