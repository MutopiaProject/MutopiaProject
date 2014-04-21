\version "2.18.2"

\header {
  title = "Morning Prayer"
  subtitle = "Children's Album"
  opus = "Op. 39, No. 1"
  composer = "P. I. Tchaikovsky"
  mutopiacomposer = "TchaikovskyPI"
  mutopiainstrument = "Piano"
  date = "1878"
  style = "Romantic"
  license = "Public Domain"
  maintainer = "Rem Zolotykh"
  maintainerEmail = "remchi@gmail.com"
  source = "Музична Україна, Ukraine, 1995"
  moreInfo = "with finger notation"

    footer = "Mutopia-2014/04/21-0"
    copyright = \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9 "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
    tagline = ##f
}

%--Default staff size is 20
#(set-global-staff-size 20)

\paper {
    top-margin = 8\mm                              %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.basic-distance = #12       %-pads music from copyright block
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

global = {
  \key g \major
  \time 3/4
}

upper = \relative c'' {

  \override Hairpin.to-barline = ##f


\tempo "Andante"

  <g-2 b-4>\p <g-1 b-4>4. <fis-2 a-3>8 |
  <g-1 c-5>4 <g-1 b-4>2 |
  <fis-2 a-4>4\<( <e g>) <e-1 a-4> |
  <dis-2 b'-5>2.\! | 

<<
  {b'4\> e,4.-2( a8-4)\!}
  \\
  {d,4 cis2-1}
>> |

<<
  {a'4-5\< d,4.-3( fis8-4)}
  \\
  {c4 b-1( c-2)}
>> |

<<
  {g'4-5 g-4 e'8.-5->( a,16-2\!)}
  \\
  {d,4-1 e-2 g-1}
>> |

<<
  {a2.-4\mf}
  \\
  {g4-3( fis8\> e8 fis4)\!}
>> |

  <g-3 b-5>\p <g-1 b-4>4. <fis-2 a-3>8 |
  <g c>4\< <g b>4. <g-1 b-2>8 |
  <g c-3>4 <g b d> <g c e>\! |
  
<<
  {fis'2-5->(\f fis4)}
  \\
  {<fis,_1 cis'_2>2.}
>> |

<<
  {dis'4-3\> e4.-3( cis8-4) | d4-5 b c-5 | b8.-4->( a16-3) a4-5 fis4-4( | g4\p)}
  \\
  {b4-1 b-2( a-1) | a4-2 g g-2 | e2 d8( c8 | b4)}
>>

  r4 <b' g'-5>4

<<
  {fis'8.-4->( c16-2) c4 b8-4( a) | b4-4 r4 g4 | fis8.->( c16) c4}
  \\
  {c'8.-1 c16-2 c4-1 fis,4 | g4-1 r4 b, | c8. c16 c4 }
>>
\clef bass
<<
  {b8( a)} \\ {fis4}
>>
<g b>4\dim <g-1 e'-5> <g-1 d'-3>
\clef treble

<c-2 e\finger \markup \tied-lyric #"4~3">2 <c-1 fis-4>4

<<
  {g'2-5 r4 r4 g4-4 <g-1 b-2>} \\ {b,2 b4-1( <b d>2)}
>>

 <g' b d>2.\pp

}

lower = \relative c {
  <g'-4 d'-1>4 <g d'>4. <d-5 d'-1>8 |
  <e-5 c'-2>4 <g-4 d'-1>2 |
  <d-5 d'>4( <e-4 b'-1>) <c-4 e-2> |
  <b\finger \markup \tied-lyric #"5~4" fis'-1>2. |

<<
  {e4 e2-1}
  \\
  {gis,4 a4-3( g)}
>> |
<<
  {d'4-1 d2-1}
  \\
  {fis,4-5 g-5( a)}
>> |
  <b-3 g'-1>4 <c-5 g'-1> <cis-4 a'-1> |
<<
  {a'2-2( d4)}
  \\
  {d,2.-5}
>> |

  <g-4 d'-1>4 <g-3 d'-1>4. <d-5 d'-1>8 |
  <e-5 c'-1>4 <g-5 d'-2> f' |
  e-2 d-1( c8 b) |
  ais2.-4

<<
  {fis'4-1 e2-1} \\ {a,4-5 gis-4( g)}
>>
<fis-4 d'-1>4 <g-3 d'-1> <e-4 c'-1>
<<
  {g2-2 d4-1( d4) r4 d4-2 | ees2.-1->( | d4-2) r4 d-2 | ees2.-1->( | d4) c-1 b-2 | bes2-3 a4-4 | r4 d2( d2.)( d2.) }
  \\
  {c2-5 d4( g,8) g8 g8 g8 g8 g8 | g8 g g g g g | g8 g g g g g | g8 g g g g g | g8 g g g g g | g8 g g g g g | g2.( g2.)( g2.)}
>>

}

\score {
  \new PianoStaff <<
    \new Staff = "upper" { \clef treble \global \upper }
    \new Staff = "lower" { \clef bass \global \lower }
  >>
  \layout { }
  \midi { }

}

