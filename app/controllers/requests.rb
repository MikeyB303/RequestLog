get '/requests' do
  @requests = Request.all
  erb :'/requests/index'
end

get '/requests/new' do
  erb :'/requests/new'
end

post '/requests' do
  artist = Artist.create(name: params[:artist])
  song = Song.create(title: params[:song])
  genre = Genre.create(title: params[:genre])
  source = Source.create(name: params[:source])
  request_deets = {
    :song_id => song.id,
    :artist_id => artist.id,
    :genre_id => genre.id,
    :source_id => source.id,
    :in_system? => params[:library?]
  }
  request = Request.create(request_deets)
  redirect '/requests'
end
