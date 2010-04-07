Spec::Matchers.define :contain_text do |expected|
  def response_text(response_body)
    Webrat::XML.document(response_body).text.squish
  end

  match do |response_body|
    response_text(response_body).include?(expected.to_s)
  end

  failure_message_for_should do |actual|
    "expected the following element's content to include #{expected.inspect}:\n\n#{response_text(actual)}"
  end

  failure_message_for_should_not do |actual|
    "expected the following element's content to not include #{expected.inspect}:\n\n#{response_text(actual)}"
  end
end

