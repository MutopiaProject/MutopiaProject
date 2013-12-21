\version "2.16.0"

edition = #'autograph

% General markings and annotations for each movement

markingsI =  {
    \tempo "Allegro"
}


markingsII =  {
    \tempo "ADAGIO"
}


markingsIII =  {
    s4^\markup { \large { \bold { \column { MINUETTO Presto } } } }
    s2.*93

    s2
    s4_ \markup{\large "FINE"}

    s4^ \markup{\large "Trio."} s2

    s2.*35
    \set Score.repeatCommands = ##f
    s2.*31

    s4_\markup { \large { \italic "D.C. il Minuetto al Fine" } }
}


markingsIV =  {
    \tempo "ALL. GIUSTO"
}
