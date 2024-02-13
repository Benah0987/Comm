class Question < ApplicationRecord
    validates :question_type, inclusion: { in: %w(video audio) }
  end