class Todo < ActiveRecord::Base
  def complete?
    completed_at?
  end

  def mark_complete
    update(completed_at: Time.current)
  end
end
