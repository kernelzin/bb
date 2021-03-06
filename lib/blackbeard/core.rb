module BB

  class EZTV
    def self.url
      'http://eztv.it'
    end
  end

  class Torrentz
    def self.url
      'http://torrentz.com'
    end
  end


  class Core

    WRAPPERS = [EZTV, Torrentz]

    class << self

      def search_wrapper
        result = page.form_with(:name => 'f') do |search|
          search.q = 'Hello world'
        end.submit
    end

      def crawl wrapper
        @agent.get(wrapper.url) do |page|
          page.links.each do |link|
            puts link.text
            puts link.href
          end
        end
      end

      def start_agent
        @agent = Mechanize.new # { |agent| agent.user_agent_alias = 'Black Beard' }
      end
      def run!
      # procura wrappers
        start_agent
      # agent crawl pages
        WRAPPERS.each do |w|
          puts "Start work on #{w}"
          puts "-------------------"
          5.times { puts }
          crawl w
        end
      # be happy
      end

    end
  end
end
