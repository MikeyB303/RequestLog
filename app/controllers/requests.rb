get '/requests' do
  @requests = Request.all
  erb :'/requests/index'
end

get '/requests/new' do
  if request.xhr?
    erb :'/requests/_new', layout: false
  else
    erb :'/requests/new'
  end
end

post '/requests' do
  artist = new_artist_or_nah(params[:artist])
  song = new_song_or_nah(params[:song])
  genre = new_genre_or_nah(params[:genre])
  source = new_source_or_nah(params[:source])


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
