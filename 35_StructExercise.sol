//"SPDX-License-Identifier: UNLICENSED"
pragma solidity >= 0.7.0 < 0.9.0;
contract structExercise{
    struct Movie{
        string title;
        string director;
        uint movie_id;

    }

    Movie film;
    Movie comedy;

    function setFilm() public {
        //film = Movie('Blue Velvet', 'David Lynch', 4);
        comedy = Movie('The Social Network', 'David Fincher', 5);
        
    }

    function getMoviesID() public view returns(uint){
        //return film.movie_id;
        return comedy.movie_id;
    }












    /*film = Movies('The Extra-Terrestrial', 'Steven Spielberg', 2);
    film = Movies('Gravity', 'Alfonso Cuaron', 3);
    film = Movies('Blue Velvet', 'David Lynch', 4);
    film = Movies('The Social Network', 'David Fincher', 5);
    */
}