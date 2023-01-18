//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract structLearn{
    struct Movies{
        //adding director variable, add movie title variable, add movie id variable.
        string title;
        string director;
        uint movie_id;
    }

    
    Movies film;
    function setFilm() public {
        film = Movies('Blade Runner', 'Ridely Scott', 1);
        
    }

    
    
    function getMoviesID() public view returns(uint){
        return film.movie_id;
    }
    
}
