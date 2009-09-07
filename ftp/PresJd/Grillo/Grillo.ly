\header {
    title = "El Grillo"
    subtitle = \markup {
      \column {
	\line {"The Cricket" }
	\line { "a Madrigal" }
	}
      }
    composer = "Josquin de Pres (c1440–1521)"
    mutopiatitle = "El Grillo"
    mutopiacomposer = "PresJd"
    mutopiainstrument = "Voice (SATB)"
    date = "1504"
    source = \markup { "Petruccio" \italic " Tertio de Frottole"  " (1504)"}
    mutopiasource = "Petruccio Tertio de Frottole (1504)"
    style = "Renaissance"
    copyright = "Public Domain"
    maintainer = "Peter Chubb"
    maintainerEmail = "mutopia@chubb.wattle.id.au"
    lastupdated = "2009/Sep/7"

 footer = "Mutopia-2009/09/07-339"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.12.0"

% Fit music onto two pages; an extra page for the translation.
#(set-global-staff-size 19)

global= {
    \set Staff.midiInstrument = "Recorder"
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

sop=\context Voice = sop \relative c'' {
  \tempo 4 = 240
    a1
    g2 ( f) |
    e r4 g4 |
    g g8 g fis4 fis |
    g2 g4 g |
    g g g g|
    g1 ~ | g ~ g |
    g\fermata

    \repeat unfold 4 { a4 a r2 | }

    \repeat unfold 12 { a8 }
    g4 g \breathe |
    a1 |
    g2 (  f) | e r4 g4 |
    g g8 g fis4 fis |
    g2 g\fermata^"Fine" |

  \context Voice =sopOne {
    g4 g g2 |
    g ( e4) e fis fis |
    g2 g a4 a |
    a2 a4 g g fis |
    g2 g |
    }

    g2 f |
    g e |
    f e |
    d4 d r4 e4 |
    f2 e |
    d4 d r e 
    f2 e |
    d4.( e8  f4) e ~ |
    e d2 cis4 |
    d1
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'self-alignment-X = #RIGHT  
  \mark "D.C. al Fine"
}

alto=\relative c' {
    f1 |
    d2 d |
    g, r4 d'4|
    d d8 d d4 d |
    d2 d4 d |
    e e e e |
    e2 ( c4. d8 |
    e2 c4. d8 |
    e2 c4.  d8) |
    e1\fermata |

    \repeat unfold 4 { f4 f r2 }
    \repeat unfold 12 { f8 }
    e4 e \breathe |
    f1 |
    d2 d |
    g, r4 d'
    d d8 d d4 d |
    d2 d\fermata

    e4 e e2 |
    e ( g4) g d d |
    d2 d f4 f |
    f2 f4 d d d|
    d2 d |

    d2 d |
    d g,
    a4 d2( cis4) |
    d4 d r cis |
    d2 cis |
    d4 d r cis |
    d2 cis d4( c8 b  a4)
    b c( a) a2 |
    a1\fermata
}


tenor=\context Voice = tenor \relative c' {
    c1 |
    b2 a4.(b8 |
     c2) r4 b4 |
    b b8 b a4 a |
    g2 g4 g |
    g g c c|
    c4. ( d8 e2 |
    c4. d8 e2 |
    c4. d8  e2) 
    c1\fermata

    \repeat unfold 4 { r2 c4 c | }
    \repeat unfold 12 { c8 }
    c4 c
    \breathe |
    c1 b2( a4.  b8) |
    c2 r4  b4 |
    b b8 b a4 a |
    g2 g\fermata |

    \context Voice = tenorOne {
    g4 g c2 |
    c2. c4 a a |
    g2 g c4 c |
    c2 c4 b a a |
    g2 g |
    }
    g2 a |
    b c  |
    r4 a4 a2 |
    a4 a r a |
    a2 a |
    a4 a r a |
    a2 a |
    a4 ~ a( d) g, ~|
    g8 f(e d) e2 |
    d1\fermata
}
bassus=\context Voice = bass \relative c {
    f1 |
    g2( d)|
    c r4 g4 |
    g g8 g d'4 d |
    g,2 g4 g |
    c4 c c c |
    c1 ~ |
    c ~ |
    c |
    c\fermata |
    \repeat unfold 4 { r2 f4 f |}
    \repeat unfold 12 { f8 }
    c4 c  \breathe |
    f1 |
    g2 d |
    c r4 g |
    g g8 g d'4 d |
    g,2 g\fermata_"Fine"

    c4 c c2 |
    c2. c4 d d |
    g,2 g f'4 f |
    f4.( e8) f4 g d d |
    g,2 g

    g d' |
    g, c |
    d a |
    d4 d r a |
    d2 a |
    d4 d r a |
    d2 a |
    d4 d r e |
    c( d) a2 |
    d1\fermata
}

wordsOne = \lyrics {
    El gril -- lo.
    El gril -- lo e buon can -- tor -- e che -- tie -- ne long -- o ver -- so.
    Dal -- le Be -- ve
    Gril -- lo can -- ta
    dal -- le dal -- le be -- ve be -- ve gril -- lo gril -- lo
    can -- ta,
    El gril -- lo,
    el gril -- lo e buon can -- tor -- e.

% Repeated section fits in here.

    Quan -- do la mag -- gior el cal -- do 
    Al hor can -- ta sol per a -- mor -- e __ per a -- mor -- e
}

wordsTwo = \new Lyrics <<
  \lyrics  {
	Ma -- non fa -- co -- me gl'alt -- "ri u" -- cel -- li
	com -- e -- li -- tor can -- ta -- tum  po -- co
  }
  \lyrics { Van' de fat -- to -- in alt -- ro lo -- co sem -- pre 
	  el gril -- lo sta -- pur sal -- do 
  }
>>


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
  \context ChoirStaff <<
    \context Staff = "sop"  << \global \sop >> 
    \lyricsto sop \wordsOne
    \lyricsto sopOne \wordsTwo
    \context Staff = "alto"  <<{ \clef "G_8" \global } \alto>>
    \context Staff = "tenor"  << { \clef "G_8" \global } \tenor>> 
    \lyricsto tenor \wordsOne
    \lyricsto tenorOne \wordsTwo
    \context Staff = "bassus"  << { \clef "F" \global } \bassus>>
  >>
  \layout {
    indent=0.0\mm
  }
    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 1)
    }
  }
}

\markup {
  \column  {
    \line {\italic {Translation}}
    \line {   The cricket is a good singer }
    \line { Who sings for a long time }
    \line { The cricket sings just for fun}
    \line { The cricket is a good singer}
    \line {But unlike the birds}
    \line { who fly off when they've sung a bit,}
    \line { The cricket just stays where he is}
    \line { When the weather is really hot,}
    \line  { he sings solely for love.}
  }
}
