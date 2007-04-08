\header {
    title = "El Grillo"
    subtitle = "The Cricket \\\\ (a Madrigal)"
    composer = "Josquin de Pres"

    mutopiatitle = "El Grillo"
    mutopiacomposer = "Josquin de Pres (c1440--1521)"
    mutopiainstrument = "Voice (SATB) or Recorder"
    date = "1504"
    source = "Petruccio {\it Tertio de Frottole} (1504)"
    style = "Renaissance"
    copyright = "Public Domain"
    maintainer = "Peter Chubb"
    maintainerEmail = "mutopia@chubb.wattle.id.au"
    lastupdated = "2003/July/21"

    tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
    footer = "Mutopia-2003/07/21-339"
}

\version "1.6.0"
\include "paper16.ly"

global=\notes {
    \property Staff.midiInstrument = "Recorder"
    \time 2/2
    \skip 1*21
%    \bar "||"
    \repeat volta 2 {
	\skip 1
	\time 3/2
	\skip 2*9
	\time 4/4
	\skip 1
    }
    \skip 1*10
    \bar "||"
}
#(define note '(columns (music "noteheads-1" ((kern . -0.1) "flags-stem"))))

sop=\notes\relative c'' {
    a1^#`((columns (font-relative-size . -1)) ,note " =120") |
    g2 () f |
    e r4 g4 |
    g g8 g fis4 fis |
    g2 g4 g |
    g g g g|
    g1 ~ | g ~ g |
    g-\fermata

    \repeat unfold 4 { a4 a r2 | }

    \repeat unfold 12 { a8 }
    g4 g \breathe |
    a1 |
    g2 ( ) f | e r4 g4 |
    g g8 g fis4 fis |
    g2 g-\fermata^"Fine" |

    g4 g g2 |
    g ()e4 e fis fis |
    g2 g a4 a |
    a2 a4 g g fis |
    g2 g |

    g2 f |
    g e |
    f e |
    d4 d r4 e4 |
    f2 e |
    d4 d r e 
    f2 e |
    d4.( e8 ) f4 e ~ |
    e d2 cis4 |
    d1^"D.C. al Fine"
}

alto=\notes\relative c' {
    f1 |
    d2 d |
    g, r4 d'4|
    d d8 d d4 d |
    d2 d4 d |
    e e e e |
    e2 ( c4. d8 |
    e2 c4. d8 |
    e2 c4. ) d8 |
    e1-\fermata |

    \repeat unfold 4 { f4 f r2 }
    \repeat unfold 12 { f8 }
    e4 e \breathe |
    f1 |
    d2 d |
    g, r4 d'
    d d8 d d4 d |
    d2 d-\fermata

    e4 e e2 |
    e ()g4 g d d |
    d2 d f4 f |
    f2 f4 d d d|
    d2 d |

    d2 d |
    d g,
    a4 d2() cis4 |
    d4 d r cis |
    d2 cis |
    d4 d r cis |
    d2 cis d4( c8 b )a4
    b c()a a2 |
    a1-\fermata
}


tenor=\notes\relative c' {
    c1 |
    b2 a4.(b8 |
    )c2 r4 b4 |
    b b8 b a4 a |
    g2 g4 g |
    g g c c|
    c4. ( d8 e2 |
    c4. d8 e2 |
    c4. d8 )e2 
    c1-\fermata

    \repeat unfold 4 { r2 c4 c | }
    \repeat unfold 12 { c8 }
    c4 c
    \breathe |
    c1 b2( a4. )b8 |
    c2 r4  b4 |
    b b8 b a4 a |
    g2 g-\fermata |

    g4 g c2 |
    c2. c4 a a |
    g2 g c4 c |
    c2 c4 b a a |
    g2 g |

    g2 a |
    b c  |
    r4 a4 a2 |
    a4 a r a |
    a2 a |
    a4 a r a |
    a2 a |
    a4 ~ a()d g, ~|
    g8 f(e)d e2 |
    d1-\fermata
}
bassus=\notes\relative c {
    f1 |
    g2()d|
    c r4 g4 |
    g g8 g d'4 d |
    g,2 g4 g |
    c4 c c c |
    c1 ~ |
    c ~ |
    c |
    c-\fermata |
    \repeat unfold 4 { r2 f4 f |}
    \repeat unfold 12 { f8 }
    c4 c  \breathe |
    f1 |
    g2 d |
    c r4 g |
    g g8 g d'4 d |
    g,2 g-\fermata_"Fine"

    c4 c c2 |
    c2. c4 d d |
    g,2 g f'4 f |
    f4.()e8 f4 g d d |
    g,2 g

    g d' |
    g, c |
    d a |
    d4 d r a |
    d2 a |
    d4 d r a |
    d2 a |
    d4 d r e |
    c() d a2 |
    d1-\fermata
}

words=\lyrics {
    El gril -- lo.
    El gril -- lo e buon can -- tor -- e che -- tie -- ne long -- o ver -- so.
    Dal -- le Be -- ve
    Gril -- lo can -- ta
    dal -- le dal -- le be -- ve be -- ve gril -- lo gril -- lo
    can -- ta,
    El gril -- lo,
    el gril -- lo e buon can -- tor -- e.

    \context Lyrics  < \lyrics {
	Ma -- non fa -- co -- me gl'alt -- "ri u" -- cel -- li
	com -- e -- li -- tor can -- ta -- tum  po -- co
	}
      \lyrics { Van' de fat -- to -- in alt -- ro lo -- co sem -- pre el gril -- lo sta -- pur sal -- do }
      >

    Quan -- do la mag -- gior el cal -- do 
    Al hor can -- ta sol per a -- mor -- e __ per a -- mor -- e
}

%{
Translation:
   The cricket is a good singer
   Who sings for a long time
   The cricket sings just for fun
   The cricket is a good singer
   But unlike the birds
   who fly off when they've sung a bit,
   The cricket just stays where he is
   When the weather is really hot,
   he sings solely for love.
%}
\score {
    \context ChoirStaff <
	\addlyrics \context Staff = sop \notes < \global \sop > \context Lyrics = words \words
	\context Staff = alto \notes <{ \clef "G_8" \global } \alto>
	\addlyrics \context Staff = tenor \notes < { \clef "G_8" \global } \tenor> \context Lyrics = bassWords \words
	\context Staff = bassus \notes < { \clef "F" \global } \bassus>
    >
    \paper {
	indent=0.0\mm
    }
    \midi {
	\tempo 1=60
    }
}



