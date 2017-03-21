helpers do
  def logged_in?
    current_user != nil
  end

  def current_user
     @_current ||= User.find_by(id: session[:user_id])
  end

  def set_user(user)
    session[:user_id] = user.id
  end

  def new_artist_or_nah(artist_param)
    artist = Artist.find_by name: artist_param
    if artist == nil
      Artist.create(name: artist_param)
    else
      artist
    end
  end

  def new_song_or_nah(song_param)
    song = Song.find_by title: song_param
    if song == nil
      Song.create(title: song_param)
    else
      song
    end
  end

  def new_genre_or_nah(genre_param)
    genre = Genre.find_by title: genre_param
    if genre == nil
      Genre.create(title: genre_param)
    else
      genre
    end
  end

  def new_source_or_nah(source_param)
    source = Source.find_by name: source_param
    if source == nil
      Source.create(name: source_param)
    else
      source
    end
  end

end
