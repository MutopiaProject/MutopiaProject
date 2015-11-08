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
  source = "Schirmer, 1904"
  moreInfo = "with finger notation"

 footer = "Mutopia-2015/07/09-2032"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%--Default staff size is 20
#(set-global-staff-size 20)

\paper {
    top-margin = 8\mm %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #6 %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #5 %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12 %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.basic-distance = #12 %-pads music from copyright block
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

global = {
  \key g \major
  \time 3/4
}

%------- definitions
hideMP = \tweak #'stencil ##f \mp
fingerUnder = \once \override Fingering.script-priority = #-100
posScriptA = \once \override DynamicText.extra-offset = #'( 0 . -2 )
posScriptB = \once \override DynamicText.extra-offset = #'( 0 . -3 )
posSlurA = \shape #'((0.5 . -0.2) (0.5 . 2) (-0.5 . 2) (0 . -1)) Slur
posSlurB = \shape #'((0 . 0) (0 . 0) (0 . 0) (-0.5 . -5)) Slur


upper = \relative c'' {

  \override Hairpin.to-barline = ##f


\tempo "Lento."

  \posScriptA <g b-3>\p <g b>4. <fis-1 a-2>8 |
  <g-1 c-4>4 <g b-3>2 |
  \set doubleSlurs = ##t
  <fis-2 a-4>4\<( <e g>) <e a> |
  <dis_2 b'>2.\! |

<<
  {b'4-\hideMP\> e,4.-2( a8)\!}
  \\
  {d,!4 cis2-1}
>> |

<<
  {a'4\< d,4.-2( fis8-4 }
  \\
  {c!4 b-1( c-1)}
>> |

<<
  {g'4) g \fingerUnder e'8.-5->( a,16\!)}
  \\
  {d,4 e g-1}
>> |

<<
  {a2.-4\mf}
  \\
  {g4-3( fis8\> e8 fis4)\!}
>> |

  \posScriptA <g b>\p <g b>4. <fis-1 a-2>8 |
  <g-1 c-4>4\< <g b>4. <g b-2>8 |
  <g c>4 <g b d> <g c e>\! |
  
<<
  { \posScriptA \fingerUnder <fis'-5>2->(_\f fis4-4 }
  \\
  {<fis, cis'>2.}
>> |

<<
  {dis'4-3)( e4.-5\> cis8 | d4) b-4 c! | \fingerUnder b8.-4->( a16-3) a4-5 fis4-4( | g4\!) b4\rest \posSlurA g'4-5( }
  \\
  {b,4 b-2( a) | a4 g-2 g | e2 d8( c8-1 | b4-2) s4 \posScriptB b'\f }
>>

  

<<
  { \fingerUnder fis'8.-4-> c16-2 c4\finger \markup \tied-lyric #"1~5" b8-4 a | b4-4) r4 g4-5( | fis8.-> c16 c4 }
  \\
  {c'8.-2 c16 c4 fis,4-2 | g4-1 r4 \posScriptA b,\mf | c8. c16 c4 }
>>
\clef bass
<<
  {b8-4 a)} \\ {fis4-2}
>>
<g-1 b\finger \markup \tied-lyric #"4~3">4 <g e'-5> <g d'>\dim
\clef treble

<cis-2 e-3>2 <c fis>4

<<
  {g'2 r4 r4 g4-5 <g-2 b-4>} \\ {b,2 b4( <b d>2)}
>>

 <g' b d>2.\pp^-

}

lower = \relative c {
  <g'_3 d'>4 <g d'>4. <d d'>8 |
  <e-5 c'-2>4 <g_4 d'>2 |
  \set doubleSlurs = ##t
  <d d'>4( <e_3 b'>) <c-4 e-2> |
  <b fis'>2. |

<<
  {e4 e2}
  \\
  {gis,4-4 a4( g)}
>> |
<<
  {d'4 d2-2}
  \\
  {fis,4 g-5( a)}
>> |
  <b_3 g'>4 <c-5 g'-2> <cis_4 a'> |
<<
  {a'2-2( d4)}
  \\
  {d,2.-5}
>> |

  <g_3 d'>4 <g d'>4. <d d'>8 |
  \set doubleSlurs = ##f
  <e-5 c'-2>4 <g_4 d'> f'-2( |
  e-1 d c8-1 b |
  ais2.)

<<
  {fis'4 e2} \\ {a,!4-4( gis-3 g-4)}
>>
<fis_3 d'>4 <g_2 d'> <e_4 c'>
<<
  {g2-2 d4-1~ d4 f4\rest d4( | \fingerUnder ees2.-2^\> | d4)\! r4 d( | ees2. | \posSlurB d4)( c b | bes2-2 a4 | r4) d2( d2.)( d2.) }
  \\
  {c2 d4( g,8) g8 g8 g8 g8 g8 | g8 g g g g g | g8 g g g g g | g8 g g g g g | g8 g g g g g | g8-4 g g g g g | g2.(\sustainOn g2.)( g2.)\sustainOff}
>>
\bar "|."
}

\score {
  \new PianoStaff <<
    \set PianoStaff.midiInstrument = "acoustic grand"
    \new Staff = "upper" { \clef treble \global \upper }
    \new Staff = "lower" { \clef bass \global \lower }
  >>
  \layout { }
  \midi { \tempo 4 = 62 }

}
