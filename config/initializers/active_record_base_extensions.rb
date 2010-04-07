ActiveRecord::Base.class_eval do
  def error_messages
    errors.full_messages.to_sentence
  end
end
