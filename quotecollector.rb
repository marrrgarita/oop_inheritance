require_relative 'multilinguist.rb'

class QuoteCollector < Multilinguist

  attr_reader :quote_collection, :quote

  def initialize
    super
    @quote_collection = []
  end

  def collect_quote(quote_text, topic_label)
    @quote_collection << {"quote" => quote_text, "topic" => topic_label}
  end

  def random_quote
    return say_in_local_language("#{@quote_collection.sample["quote"]}")
  end

  def random_quote_topic(topic_label)
    return say_in_local_language(quote_collection.find { |q| q["topic"] == topic_label }["quote"])
  end


end

me = QuoteCollector.new

me.collect_quote("Hope is a waking dream", "philosophy")
me.collect_quote("Imagination encircles the earth", "philosophy")
me.collect_quote("Do Not Repeat yourself", "tech")
me.collect_quote("Hello world", "tech")
