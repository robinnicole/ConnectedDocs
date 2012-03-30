require 'sinatra'
require 'dm-core'

DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})

class Contact
  
  include DataMapper::Resource
  #set up a class that lays out the parameters/attributes for the a class called Contct
  
  property :id, Serial
  property :name, String
  property :callnumber, String
  property :cafe, String
  
  
  
end

# set up a form that takes name and phone number.

get '/' do
 
form =""

  form+= '<form action="/~rnr217/sinatra/talk/save_contact" method = "POST">'
  form+= '<p><label>Name:</label><input type="text" name="name"/></p>'
  form+= '<p><label>Favorite Coffee Spot:</label><input type="text" name="cafe"/></p>'
  form+= '<p><label>Phone:</label><input type="text" name="callnumber"/></p>'
  form += '<p> <input type="submit" value ="Submit" />'
  form+= '</form>'


end

post '/save_contact' do
contact = Contact.new 

contact.name = params[:name]
contact.callnumber = params[:callnumber]
contact.cafe = params[:cafe]
contact.save

"sucessfully saved contact"
end