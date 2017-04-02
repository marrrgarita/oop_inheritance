require_relative 'multilinguist.rb'

class QuoteCollector < Multilinguist

  attr_reader :quote_collection

  def initialize
    super
    @quote_collection = []
  end

  def collect_quote(quote_text, topic_label)
    @quote_collection << {"quote" => quote_text, "topic" => topic_label}
  end

  def random_quote(topic_label)
    return say_in_local_language(quote_collection.find { |q| q["topic"] == topic_label }["quote"])
  end


end
