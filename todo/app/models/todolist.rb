class Todolist < ActiveRecord::Base
	has_many :todoitems
  validates :title, presence: true
  validates :title, length: { minimum: 3 }
  validates :description, presence: true
  validates :description, length: { minimum: 5 }

  def has_completed_items?
    todoitems.complete.size > 0
  end

  def has_incomplete_items?
    todoitems.incomplete.size > 0
  end 

end
