1. Title of the Comedies.
    `//movie[@type="comedy"]/title`
2. Actors who worked with Nicolas Cage in a film.
    `//movie[actor="Nicolas Cage"]/actor`
3. Actors who worked with Nicolas Cage in a film (his name must not appear in the result).
    `//movie[actor="Nicolas Cage"]/actor[text()!="Nicolas Cage"]`
4. Producers of any film in 1992.
    `//movie[@year="1992"]/producer`
5. Title of films that had at least three actors in them.
    `//movie[count(actor)>=3]/title`
6. Title of the films whose producer's surname is Wood.
    `//movie[producer[contains(.,"Wood")]]/title`
7. Title of films whose producer's surname is the same as at least one of the actors.
    `//movie[actor[ends-with(.,../producer/surname)]]/title`