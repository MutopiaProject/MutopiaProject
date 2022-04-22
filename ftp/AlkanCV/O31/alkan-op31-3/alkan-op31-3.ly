\version "2.18.2"
\language "english"
\header {
    title = "No. 3"
    subtitle = "Dans le genre ancien"
    composer = "Charles-Valentin Alkan"
    date = "1847"
    mutopiacomposer = "AlkanCV"
    mutopiainstrument = "piano"
    maintainer = "Thomas Morgan"
    maintainerEmail = "thomas.j.h.morgan@gmail.com"
    source = "A.M. Schlesinger, 1847"
    style = "Romantic"
    license = "Creative Commons Attribution-ShareAlike 4.0"
    maintainer = "Anonymous"
    opus = "Op. 31, No. 3"
}
\layout { \context { \PianoStaff \consists #Span_stem_engraver } }
\layout { \context { \Voice \consists "Horizontal_bracket_engraver" } }
\paper { page-count = #1 }\score { << 
\new PianoStaff <<
<< \new Staff = "treble" \with {

}{

\clef treble
\key bf \minor
\time 4/4
\tempo "Molto lento" \mark \markup { \musicglyph #"scripts.segno" } \repeat volta 1 { af'2_\markup{\italic{piacévole}} df''4 f''4 |

<<
{ f''2 ef''4 gf''4 }
\\
{ bf'8 af'8 gf'8 f'8 gf'8 f'8 ef'8 df'8 }
>>
|

<<
{ gf''4 ef''4 df''4 c''4 }
\\
{ \omit r8 \voiceOne \autoBeamOff \stemDown \crossStaff {ef'8} \autoBeamOn \stemNeutral  \omit r2 \omit r4 }
>>
|

<<
{ af''4 f''4 ef''4 d''4 }
\\
{ <bf d'>8 <d' f'>8 <ef' gf'>8 <f' af'>8 <gf' bf'>8 <af' cf''>8 <gf' bf'>8 <f' af'>8-~ }
>>
|

<<
{ bf''2 gf''4 ef''4 }
\\
{ <f' af'>8 <d' f'>8 <ef' gf'>8 <f' af'>8 <ef' gf'>8 <f' af'>8 <gf' bf'>8 <gf' bf'>8-~ }
>>
|

<<
{ ef'''4. df'''8 c'''8 bf''8 af''8 gf''8 }
\\
{ <gf' bf'>8 <f' af'>8 <ef' gf'>8 <f' af'>8 <ef' gf'>8 \change Staff = "bass" <af c'>8 <bf df'>8 <c' ef'>8 }
>>
|

<<
{ f''8 ef''8 df''8 ef''8 c''4. df''8 }
\\
{ \stemDown \crossStaff { f'8} \stemNeutral \omit r8 \omit r4 \omit r2 }
>>
|

<<
{ df''2. r4 }
\\
{ \once \override Beam.transparent = ##t f'8 \once \override NoteHead.extra-offset = #'(1.15 . 0.0) \once \override Stem.extra-offset = #'(1.15 . 0.0) ef'8 \once \override NoteHead.extra-offset = #'(1.15 . 0.0) \once \override Stem.extra-offset = #'(1.15 . 0.0) df'8 \once \override NoteHead.extra-offset = #'(1.15 . 0.0) \once \override Stem.extra-offset = #'(1.15 . 0.0) ef'8^\markup{\italic{\bold{Fine}}} \once \override NoteHead.extra-offset = #'(1.2 . 0.0) \once \override Stem.extra-offset = #'(1.2 . 0.0) \once \override Stem.length-fraction = #1.2 \once \override Beam.transparent = ##t df'8-[\bar "||"  \change Staff = "bass" \stemUp af8 f8 df8-]\break
}
>>
}  |
\repeat volta 1 { f'2 bf'4 df''4 |

<<
{ df''2 c''4 ef''4 }
\\
{ gf'8 af'8 gf'8 f'8 ef'8 df'8 c'8 bf8 }
>>
|
ef''4 c''4 bf'4 a'4 |

<<
{ af''4 f''4 ef''4 d''4 }
\\
{ <bf d'>8 <d' f'>8 <ef' gf'>8 <f' af'>8 <gf' bf'>8 <af' cf''>8 <gf' bf'>8 <f' af'>8 }
>>
|

<<
{ bf''2 gf''4 ef''4 }
\\
{ <bf' gf''>8 <af' f''>8 <gf' ef''>8 <f' df''>8 <ef' cf''>8 <df' bf'>8 <cf' af'>8 <bf gf'>8 }
>>
|

<<
{ gf''4. ef''8 d''4 \omit r4 }
\\
{ c''8 a'8 bf'8 c''8 cf''8 af'8 bf'8 cf''8 }
>>
|

<<
{ ff''4. df''8 c''4 r4 }
\\
{ bf'8 g'8 af'8 bf'8 <gf' bff'>8 <ef' gf'>8 <ff' af'>8 <gf' bff'>8 }
>>
|

<<
{ af'2 df''4 ff''4 }
\\
{ af'8 gf'8 ff'8 ef'8 df'8 cf'8 bff8 af8 }
>>
|

<<
{ ff''2 ef''4 gf''4 }
\\
{ <bff' df''>8 <af' cf''>8 <gf' bff'>8 <ff' af'>8 <gf' bff'>8 <ff' af'>8 <ef' gf'>8 <df' ff'>8 }
>>
|

<<
{ gf''4 ef''4 df''4 c''4 }
\\
{ <c' ef'>8 <df' ff'>8 <ef' gf'>8 <c' ef'>8 <ff' af'>8 <gf' bff'>8 <ff' af'>8 <ef' gf'>8 }
>>
|

<<
{ af''4 f''4 ef''4 d''4 }
\\
{ <d' f'>8 <ef' gf'>8 <f' af'>8 <d' f'>8 <gf' bf'>8 <af' cf''>8 <gf' bf'>8 <f' af'>8-~ }
>>
|

<<
{ ef'''2 bf''4 gf''4 }
\\
{ <f' af'>8 <d' f'>8 <ef' gf'>8 <f' af'>8 <ef' gf'>8 <f' af'>8 <gf' bf'>8 <gf' bf'>8-~ }
>>
|

<<
{ ef'''4. cf'''8 bf''8 af''8 gf''8 f''8 }
\\
{ <gf' bf'>8 <gf' bf'>8 <f' af'>8 <ef' gf'>8 <f' af'>8 <d' f'>8 <ef' gf'>8 <f' af'>8 }
>>
|

<<
{ gf''8 f''8 ef''8 cf''8 d''4. ef''8 }
\\
{ <ef' gf'>8 <f' af'>8 <gf' bf'>8 <af' cf''>8 <gf' bf'>8 <f' af'>8 <e' g'>8 <f' af'>8 }
>>
|

<<
{ ef''2. \omit r4 }
\\
{ <ef' gf'>8 \once \override NoteHead.extra-offset = #'(1.15 . 0.0) \once \override Stem.extra-offset = #'(1.15 . 0.0) f'8 \once \override NoteHead.extra-offset = #'(1.15 . 0.0) \once \override Stem.extra-offset = #'(1.15 . 0.0) ef'8 \once \override NoteHead.extra-offset = #'(1.15 . 0.0) \once \override Stem.extra-offset = #'(1.15 . 0.0) f'8 \once \override NoteHead.extra-offset = #'(1.1 . 0.0) \once \override Stem.extra-offset = #'(1.1 . 0.0) \once \override Beam.transparent = ##tef'8 \stemNeutral \change Staff = "bass"  bf8 gf8 ef8 }
>>
} \mark \markup { \musicglyph #"scripts.segno" }  |
} >>
<< \new Staff = "bass" \with {

}{

\clef bass
\key bf \minor
\time 4/4
f'8 ef'8 df'8 c'8 bf8 af8 gf8 f8 |
gf2~ gf8 ef8 f8 gf8 |
\override Beam.auto-knee-gap = #10 <af c'>8 c'8 \change Staff = "treble" \voiceTwo <df' f'>8 <ef' gf'>8 \override Beam.auto-knee-gap = #5.5 <f' af'>8 <gf' bf'>8 <f' af'>8 <ef' gf'>8 |
\change Staff = "bass" \omit r1 |
gf2_\markup{\bold{Mani o Ped.}}\startGroup  bf4 ef'4\stopGroup  |
c'2~  \stemDown \crossStaff { c'8 } \stemNeutral \omit r8 \omit r4 |

<<
{ \stemDown df'8 \change Staff = "treble" <ef' gf'>8 <f' af'>8 <gf' bf'>8 \omit <f' af'>8 <ef' gf'>8 <d' f'>8 <ef' gf'>8 }
\\
{ \omit r2 af2_\markup{\bold{Mani o Ped.}}\startGroup  }
>>
|

<<
{ \change Staff = "treble" \stemDown df'8\change Staff = "bass" \stemUp  gf8 f8 gf8 f8-[ af8 f8 df8-] }
\\
{ df4\stopGroup  \omit r4 \omit r2 }
>>
|
df'8 c'8 bf8 af8 gf8 f8 ef8 df8 |
ef2~ ef8 c8 df8 ef8 |
<f a>8 <a c'>8 <bf df'>8 <c' ef'>8 \stemDown \change Staff = "treble" <df' f'>8 <ef' gf'>8 <df' f'>8 <c' ef'>8 \stemNeutral \change Staff = "bass"  |
\omit r1 |
bf,2_\markup{\bold{Mani o Ped.}}\startGroup  ef4 gf4\stopGroup  |

<<
{ ef'8 c'8 df'8 ef'8 af'8 f'8 gf'8 af'8 }
\\
{ f2 bf4 r4 }
>>
|

<<
{ df'8 bf8 cf'8 df'8 \omit r2 }
\\
{ ef2 af4 r4 }
>>
|
ff'8 ef'8 df'8 cf'8 bff8 af8 gf8 ff8 |
gf2~_\markup{\bold{Mani o Ped.}}\startGroup  gf8 ef8 ff8 gf8\stopGroup  |
bff2 af4 r4 |
cf'2 bf4 r4 |
gf2_\markup{\bold{Mani o Ped.}}\startGroup  bf4 ef'4\stopGroup  |
cf'2~ cf'8 cf'8 bf8 af8 |
bf2 bf,2 |

<<
{ \stemDown \change Staff = "treble" ef'8 \stemNeutral \change Staff = "bass"  \stemNeutral  af8 gf8 af8 \stemUp gf8 bf8 gf8 ef8 }
\\
{ ef4_\markup{\italic{\bold{D.S. al Fine}}} \omit r4 \omit r2 }
>>
|
} >>
>>
>> \midi { } }