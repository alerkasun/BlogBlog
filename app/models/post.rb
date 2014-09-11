class Post < ActiveRecord::Base
  has_many :comments
  validates :text, :title , presence: true
  validates :text, length: {
    minimum: 5,
    maximum: 400,
    too_short: "must have at least %{count} words",
    too_long: "must have at most %{count} words"
  }
  validates :title, length: {
    minimum: 5,
    maximum: 40,
    too_short: "must have at least %{count} words",
    too_long: "must have at most %{count} words"
  }
end
