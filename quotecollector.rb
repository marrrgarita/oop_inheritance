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

  def random_quote(topic_label = "")
    if topic_label == ""
      return say_in_local_language("#{@quote_collection.sample["quote"]}")
      #returns random quote, regardless of topic_label

    elsif topic_label != ""
      matches = @quote_collection.select { |q| q["topic"] == topic_label }
      return say_in_local_language("#{matches.sample["quote"]}")

      end
  end



end

me = QuoteCollector.new

me.collect_quote("Hope is a waking dream", "philosophy")
me.collect_quote("Imagination encircles the earth", "philosophy")
me.collect_quote("Do Not Repeat yourself", "tech")
me.collect_quote("Hello world", "tech")
