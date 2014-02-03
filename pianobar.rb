!/Users/kjohnson/.rvm/rubies/ruby-1.9.3-p429/bin/ruby

require 'net/http'
require 'json'
require 'uri'

my_dashboard = 'http://localhost:3030/widgets'
my_widget = 'pianobar'

event = ARGV.first

if event == 'songstart'
  d = {}

  STDIN.each_line {
    |line| d.store(*line.chomp.split('=', 2))
  }

  uri = URI.parse("#{my_dashboard}/#{my_widget}")
  request = Net::HTTP::Post.new(uri.request_uri)
  request.body = {
    :auth_token => 'YOUR_AUTH_TOKEN',
    :artist => d['artist'],
    :title => d['title'],
    :coverArt => d['coverArt']
  }.to_json

  res = Net::HTTP.start(uri.host, uri.port) do |http|
    http.request request
  end

end