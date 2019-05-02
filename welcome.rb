require 'sinatra'

get '/rain/bow/6' do
    lang=params[:language]
    if lang=="en"
        return "welcome"
    elsif lang=='de'
        return "Willkommen"
    elsif lang=="es"
        return "Bienvenido"
    else
        return "Welcome"
    end
end