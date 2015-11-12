get '/bookview/index' do
  erb :'index'
end

get '/bookview/new' do
  erb :'new'
end

post '/bookview' do
  @book = Book.new(params[:book])
  if @book.save
    #redirect "/show-one-entry/#{@article.id}"
    redirect "/bookview/#{@book.id}"
  else
    @errors = @book.errors.full_messages
    erb :'invalid'
  end
end

get '/bookview/:id' do
  @book = Book.find(params[:id])
  erb :'show'
end

get '/bookview/:id/edit' do
  @book = Book.find(params[:id])
  erb :'edit'
end

put '/bookview/:id' do
  book= Book.find(params[:id])
  book.update_attributes(params[:book])
  redirect "/bookview/#{book.id}"
end

delete '/bookview/:id/delete' do
  book = Book.find(params[:id])
  book.destroy
  redirect '/bookview/index'
end
