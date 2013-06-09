\version "2.16.0"

edition = #'edited

\header {
    arranger = "Maurizio Tomasi"
}

% General markings and annotations for each movement

markingsI =  {
    \tempo "Allegro."
}


markingsII =  {
    \tempo "Adagio."
}


markingsIII =  {
    s4^\markup { \large { \bold { \column { Minuetto. Presto } } } }
    s2.*93

    s2
    s4_ \markup{\large "Fine"}

    s4^ \markup{\large "Trio."} s2

    s2.*66

    s4_\markup { \large { \italic "D.C. il Minuetto al Fine" } }
}

markingsIV =  {
    \tempo "Allegro giusto."
}
