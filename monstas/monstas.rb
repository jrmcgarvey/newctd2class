require 'sinatra'
require 'sinatra/reloader'
require 'erb'

enable :sessions

get '/' do
    "OMG, Hello Ruby Monstas!"
end

get '/m1/:name' do
    "Hello #{params["name"]}!"
end

get '/m2/:name' do
    params.inspect
end

get '/m3/:name' do
  template = "<h1>Hello <%= name %></h1>"
  layout   = "<html><body><%= yield %></body></html>"
  erb template, { :locals => params, :layout => layout }
end

get '/monstas/:name' do
    #params.inspect + "xx" + params.class.name + "xx" + params[:name] + "xx" + params["name"]
    erb :m1, { :locals => params, :layout => :layout }
end

def store_name(filename, string)
  File.open(filename, "a+") do |file|
    file.puts(string)
  end
end

def read_names
  return [] unless File.exist?("names.txt")
  File.read("names.txt").split("\n")
end

get '/monstas' do
    @message = session.delete(:message)
    @name = params["name"]
    @names = read_names
    erb :monstas
end

class NameValidator
  def initialize(name, names)
    @name = name.to_s
    @names = names
  end

  def valid?
    validate
    @message.nil?
  end

  def message
    @message
  end

  private

    def validate
      if @name.empty?
        @message = "You need to enter a name."
      elsif @names.include?(@name)
        @message = "#{@name} is already included in our list."
      end
    end
end

post "/monstas" do
  @name = params["name"]
  @names = read_names
  validator = NameValidator.new(@name, @names)

  if validator.valid?
    store_name("names.txt", @name)
    session[:message] = "Successfully stored the name #{@name}."
    redirect "/monstas?name=#{@name}"
  else
    @message = validator.message
    erb :monstas
  end
end