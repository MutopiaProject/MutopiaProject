\version "2.18.2"
#(set-global-staff-size 20)
setup={\override Staff.TimeSignature #'style = #'numbered
\set Score.skipBars = ##t
\override Score.Hairpin #'after-line-breaking = ##t
#(set-accidental-style 'modern-cautionary)
}
hairpinWithCenteredText =
#(define-music-function (parser location text) (markup?)
#{
  \override Voice.Hairpin #'stencil = #(lambda (grob)
    (ly:stencil-aligned-to
     (ly:stencil-combine-at-edge
      (ly:stencil-aligned-to (ly:hairpin::print grob) X CENTER)
      Y DOWN
      (ly:stencil-aligned-to (grob-interpret-markup grob text) X CENTER))
     X LEFT))
#})
hairpinPoco = \hairpinWithCenteredText \markup { \italic { poco } }
hairpinNormal = \hairpinWithCenteredText \markup { }
partA={ \setup \transposition bes \transpose c bes, {
\set Staff.midiInstrument = "trumpet"
\set Score.tempoHideNote = ##t \tempo 4 = 70
\time 4/4 \key f \major R1*3 ^"Allegretto a piacere" |
r2 r4 f' -. -- \p |
\mark \markup { \musicglyph #"scripts.segno" }
\bar "||"
f'4. _"sempre dolce" e'8 f' ( g' f'4 ~ |
f'8 d' a'2 -- ) f'4 -. -- |
f'4. e'8 f' ( g' f'4 ~ |
f'8 d' bes'2 -- ) f'4 -. -- |
f'4. e'8 f' ( g' f'4 ~ |
f'8 d' \hairpinPoco c''2 \< -- ) bes'4 \! \hairpinNormal |
bes'8 ( a' g' a' f'4 d' -. ) |
f'8 ( e' d' e' c'2 -- ) |
d' -- ^"ten." e' -- ^"ten." |
\time 6/4 f'1. ^"ten." |
R |
\time 4/4 f'8 ( \mp e' d' e' f'4 _\markup { \italic { poco cresc } } a' ) |
bes'8 -- c'' -- f'' \<  -- e'' \! -- f''2 \fermata
\once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \mark "Fine" \bar "|."
R1*6 |
\transpose c c, { r2 r4 f'' -. -- \pp |
f''4. e''8 f'' ( g'' g''4 ~ |
g''2 \<  f''8 \! ) r f''4 -. -- \p |
f''4. e''8 f'' ( g'' g''4 ~ |
g''2 f''8 ) r f''4 -. -- |
f''4. e''8 f'' ( g'' \once \override TextScript #'padding = #0.5 f''4 ~ _\markup { \italic { poco } } |
f''8 d'' \once \override TextScript #'padding = #1.0 a''2 -- ) _\markup { \italic { a poco } } f''4 -. -- |
f''4. \once \override TextScript #'padding = #1.5 e''8 _\markup { \italic { cresc } } f'' ( g'' f''4 ~ |
f''8 d'' bes''2 -- ) f''4 -. -- |
f''4. e''8 \<  f'' ( g'' f''4 ~ \mf |
f''8 d'' c'''2 -- ) bes''4 |
bes''8 ( a'' g'' a'' bes''4 ) g'' -. |
g'' -- d'''4. c'''16 ( bes'' a''4 -. -- ) |
a''2 -- bes''8 ( a'' g'' bes'' |
a''4 c''' -. ) \transpose c c, { bes'''8 a''' ( g''' bes''' |
a'''4 f''' -. ) f'''8 ( e''' d''' f''' ) |
f'''2 -- _\markup { \italic { dim } } d''' -- |
dis'''4 ( d''' ) f'''2 \> |
f'''2. \! \breathe f'''4 -. -- \p 
\once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \mark "D.S. al Fine" \bar "||" } } } }
partB={ \setup \key ees \major \time 4/4 R1*2 |
\set Staff.midiInstrument = "reed organ"
ees''4 \p _"(gently)" -- d'' -- c''16 d'' c''8 ~ c'' f'' |
ees''4 -- d''2 c''4 ~ |
c''4. bes'8 aes'2 |
g'8 c''  ~ c''2. |
ees''4 -- d'' -- c''16 d'' c''8  ~ c'' f'' |
ees''4 -- d''16 ees'' d''8  ~ d'' c''  ~ c''4 ~ |
c''2. aes'4 |
f''2. \<  ees''4 |
f''4. \! ees''8 g''2 |
g''8 f'' ees'' f'' d''4 ~ < d'' f''> -- |
f''8 g'' aes'' f'' bes''4 ~ < bes'' d''> -- |
\time 6/4 c''8 bes' c'' ees'' g''4 \> ~ g''2. |
<g'' bes'>2 -- \! <aes' f''> -- <ees'' g'> -- |
\time 4/4 \tag #'organ \tieDashed <g' ees''>1 -\tag #'organ ~ |
<g' ees''>2 -\tag #'organ ~ <g' ees''>4 \tieSolid r \fermata | \transpose c c, {
g''8 ( \p ^"a tempo" f'' ees'' g'' ees''4 ) d'' -- |
c''8 ( d'' ees'' f'' c''4 aes'' -. ) |
aes''8 ( g'' fis'' ees'' cis''4 bes'' -. ) |
c'''8 ( bes'' a'' f''' ) f'''4 ( g''' -. ) |
ees'''8 ( d''' c''' f''' ) f'''4 ( bes''' -. ) |
ees'''8 ( d''' c''' f''' ) f'''4 ( bes'' -. ) |
aes'' ( c''' -. ) bes''8 ( aes'' g''4 -. ) |
g''1 |
aes''8 ( g'' f'' g'' aes''4 c''' -. ) |
ees''' -- d'''16 c''' d'''8  ~  d''' bes''  ~  bes''4 |
aes''8 ( g'' f'' g'' aes''4 c''' -. ) |
<c''' aes''>8 ( <g'' bes''> <f'' aes''> <g'' bes''> <ees'' g''>4 <c'' ees''> -. ) _\markup { \italic { poco } } |
aes''8 ( bes'' ees'''4 -. ) \once \override TextScript #'padding = #2.0 d'''2 -- _\markup { \italic { a } } |
\once \override TextScript #'padding = #2.0 g''8 ( _\markup { \italic { poco } } aes'' c'''4 -. ) \once \override TextScript #'padding = #1.5 bes''2 -- _\markup { \italic { cresc } } |
aes''8 ( g'' f'' g'' \<  aes''4 \!
c''' -. ) |
c''' ( ees''' \<  ) ees''' ( g''' -. ) \!
|
aes'''8 \mf g''' f''' g''' aes'' ( f'' ) f'' ( aes'' ) |
aes'' ( bes'' } ees''2 d''4 ) |
ees''1 -- ^"ten." |
f''8 ( ees'' d'' c'' ) <d'' bes'>2 -- |
<g' bes'> -- aes'8 ( bes' ees''4 -. ) |
d''2 -- g'8 ( aes' _\markup { \italic { dim } } c''4 -. ) |
aes'2 aes'8 g' ( f' g' ) |
aes'4 ( c'' -. \>  ) c'' ( ees'' -. ) |
g''1 -- \! }
partC={ \setup \key ees \major \time 4/4 \clef bass
\set Staff.midiInstrument = "reed organ"
aes8 \p ( g f g aes4 c' -. ) |
aes ( c'4. ) bes16 aes g4 -. -- |
g2 -- f -- |
c' bes |
aes8 ( g f g aes4 c' -. ) |
ees'4. ( d'16 ees' ) c'2 -- |
bes -- aes -- |
g -- f -- |
aes8 ( g f g aes4 c' -. ) |
aes8 g f g <ees' g>4 ~ < g c'> |
aes,8 ( bes, c4 ~ <c ees>2 -- ) |
g,8 ( aes, bes,4 ~ < bes, d> -- ) ~ < d f,> -- |
aes,8 ( g, f, aes, g,4 ~ <g, bes,> -- ) |
\time 6/4 aes,8 g, f, g, aes,4 c ees g ~ |
< g bes,>2 -- <f bes,> -- <ees g> -- |
\time 4/4 \tag #'organ \tieDashed <ees bes>1 -\tag #'organ ~ -\tag #'organ _"(organ sustain)" |
<ees bes>2 -\tag #'organ ~ <ees bes>4 \tieSolid r \fermata
|
ees ( g -. ) g ( bes -. ) |
aes8 ( g f aes ees4 c -. ) |
c' ( aes -. ) aes8 ( g f g ) |
ees4 ( c -. ) d ( bes, -. ) |
c' ( aes -. ) aes8 ( g f g |
g4 ees -. ) cis'2 |
c'4 ( aes -. ) bes8 ( c' ees g ) |
bes c' cis' d' c' bes c' aes |
f' ees' ( d' bes c'4 aes -. ) |
ees8 ( c f aes ) g ( bes aes c' ) |
c' ( bes aes bes c'4 f -. ) |
aes8 ( bes ) bes ( d' ) c' ( bes ) bes ( aes ) |
aes ( g f g f4 g -. ) |
g8 ( f ees g g4 bes -. ) |
f8 ees ( d ees f4 aes -. ) |
c'8 ( bes aes bes g4 ees -. ) |
ees8 ( d c d d4 bes, ) |
ees2. f4 |
c'8 ( -> bes aes bes c'4 ees' -. ) |
d'8 ( c' bes c' ) <f d'>2 -- |
d'8 ( c' bes d' ) d'4 ( bes -. ) |
c'8 ( bes aes c' ) c'4 ( aes -. ) |
aes8 ( g f aes ) aes4 ( f -. ) |
f8 ( ees ) ees ( g ) <g c>2 -- |
<g c>1 -- }

\bookpart{
\header{
title="Wedding Music"
composer="Chris Brown"
mutopiacomposer="BrownCJ"
dedication="To Yun-Wen and Silas on their wedding"
date="February 2015"
mutopiainstrument="Trumpet and organ, or flute and piano"
source="Typeset from the manuscript by permission of the composer"
style="Modern"
license="Creative Commons Attribution 4.0"
maintainer="Silas Brown"
maintainerWeb="http://ssb22.user.srcf.net/"

 footer = "Mutopia-2015/09/03-2044"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat{ \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by/4.0/" "Creative Commons Attribution 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}
\score { <<
\new Staff << \context Voice = PartA {
\set Staff.instrumentName = "Trumpet (Bb)" \transpose bes c' { \partA } } >>
\new PianoStaff <<
\set PianoStaff.instrumentName = "Piano/Organ"
  \context Staff = "one" << \new Voice { \partB } >>
  \context Staff = "two" << \new Voice { \partC } >>
  >>
>> \layout{ indent = #20 } \midi{} } }

\bookpart{
\header{
title="Wedding Music"
composer="Chris Brown"
dedication="To Yun-Wen and Silas on their wedding"
instrument="Trumpet in Bb"
}
\score { <<
\new Staff << \context Voice = PartA { \transpose bes c' { \partA } } >>
>> \layout{ indent = #0 } } }

\bookpart{
\header{
title="Wedding Music"
composer="Chris Brown"
dedication="To Yun-Wen and Silas on their wedding"
}
\score { <<
\new Staff << \context Voice = PartA {
\set Staff.instrumentName = "Flute" \transpose ees c' { \partA } } >>
\new PianoStaff <<
\set PianoStaff.instrumentName = "Piano"
  \context Staff = "one" \removeWithTag #'organ << \new Voice { \transpose ees c { \partB } } >>
  \context Staff = "two" \removeWithTag #'organ << \new Voice { \transpose ees c { \partC } } >>
  >>
>> \layout{} } }
\bookpart{
\header{
title="Wedding Music"
composer="Chris Brown"
dedication="To Yun-Wen and Silas on their wedding"
instrument="Flute"
}
\score { <<
\new Staff << \context Voice = PartA { \transpose ees c' { \partA } } >>
>> \layout{ indent = #0 } } }

