\version "2.2.0"

\header {
  title = "Pictures at an Exhibition"
  subtitle = "Promenade"
  dedication = "dedicated to Vladimir Vasilievich Stasov"
  composer = "Modest Moussorgsky (1839 - 1881)"
  mutopiatitle = "Promenade"
  mutopiacomposer = "Modest Moussorgsky"
  mutopiapoet = "Modest Moussorgsky"
  mutopiainstrument = "piano"
  date = "19th Century"
  source = "Dover Publications"
  style = "Romantic"
  copyright = "Public Domain"
  maintainer = "stelios"
  lastupdated = "2004/July/20"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2004/07/20-475"
}

\score {

 \notes {
 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key bes \major
 \time 5/4
 \override TextScript   #'padding = #2.0
 g'4--^\markup { "Allegro giusto, nel modo russico, senza allegrezza, ma poco sostenuto" } f'-- bes'--
 \override Slur   #'y-free = #1.5
 c''8--( f'' d''4--) \bar "||"
 \time 6/4
 c''8--( f''-- d''4--) bes' c''-- g'-- f'--
 \bar "||"
 \time 5/4 <bes d' g'>4 <a c' f'> <bes d' bes'>
 << { \override Slur   #'attachment = #'(stem . stem)
 \override Slur   #'y-free = #1.2
 c''8( f'' d''4) } \\ { <c' a'>4 <f' a'> } >>
 \break
 \override Staff.AccidentalPlacement   #'padding = #0.7
 \time 6/4 << { c''8( f'' d''4) } \\ { <c' a'>4 <f' bes'> } >>
 <d' g' bes'>4 <e' g' c''> <g c' g'> <a c' f'> \bar "||"
 \time 5/4 f'4-- g'-- d'--
 \override Slur   #'y-free = #4.0
 f'8--( g' c'4--) \bar "||"
 \time 6/4
 \override Slur   #'y-free = #3.5
 g'8--( a' f'4--) <f' f''>4 <f' d''>
 << { \override Slur   #'attachment = #'(stem . stem)
 c''8( bes' f'4) } \\ { \override Stem   #'length = #9.0
 \stemDown f'4 f' } >> \bar "||"
 \break
 \time 5/4 f'4-- g'-- d'--
 \override Slur   #'y-free = #3.5
 f'8--( g'8 ees'4--) \bar "||"
 \time 6/4 \override Slur   #'y-free = #2.5
 bes'8--( c'' aes'4--) <aes' aes''>4 <aes' f''>
 << { \override Slur   #'attachment = #'(stem . stem)
 ees''8( des''8 aes'4) } \\ { \stemDown aes'4 aes' } >>
 \bar "|"
 << { <aes aes'>4 <bes bes'> <aes aes'>
 <bes bes'>8[ <c' c''> <ees' ees''> <bes bes'>] <aes aes'>4 }
 \\ { \stemDown \override Stem   #'length = #10.0
 ees'2. ees'2. } >>
 \bar "|"
 \break
 <des' f' aes' des''>8 <ees' aes' c'' ees''>
 <f' aes' des'' f''>[ <aes' aes''> <ges' bes' ees'' ges''>
 <f' aes' des'' f''>] <ees' aes' c'' ees''>[ <ges' ges''>
 <f' bes' des'' f''> <des' des''>] <ees' aes' c'' ees''>4
 \bar "||"
 \time 5/4
 << { <aes aes'>4 <bes bes'> <aes aes'>
 <bes bes'>8[ <c' c''> <ees' ees''> <bes bes'>] } \\
 { \override Stem   #'length = #10.0
 \override Tie   #'y-offset = #3.0
 \stemDown ees'2. ees'4 ~ ees'8 r8 } >>
 \bar "||" 
 \time 6/4
 << { <c' c''>4 <d' d''> <c' c''>
 <d' d''>8[ <f' f''> <g' g''> <d' d''>] <c' c''>4 } \\
 { \override Stem   #'length = #10.0
 g'!2. g'2. } >>
 \bar "|"
 \break
 <f' a' c'' f''>8 <g' c'' e'' g''> <a' c'' f'' a''>8[
 <c'' c'''> <bes' d'' g'' bes''> <a' c'' f'' a''>]
 <g' c'' e'' g''>[ <bes' bes''> <a' d'' f'' a''> <f' f''>]
 <g' c'' e'' g''>4 \bar "|"
 << { a''8 e'' } \\ { <a' c''>4 } >> <f' d'' f''>4
 <a' c'' a''> <e' bes' d''> <a' c'' a''> <e' bes' d''>
 \bar "|"
 << { f''8 c'' } \\
 { \override Stem   #'length = #9.0
 <f' a'>4 } >> <f' bes' d''>4
 <f' a' f''> <f' bes' d''>
 << { f''8 c'' } \\ 
 { \override Stem   #'length = #9.0
 <f' a'>4 } >> <f' bes' d''>4 \bar "|"
 \break
 << { <g' c''>4 } \\ { ees'8 e' } >> <c' f' a'>4 <d' f' bes'>
 << { <g' c''>4 } \\ { ees'8 e' } >> <c' f' a'>4
 << { bes'8 d'' } \\ { \override Stem   #'length = #9.0
 <d' f'>4 } >> \bar "|"
 <e' g' c''>4 <c' d' f' a'> <e' g' c''> <f' f''>
 <ees' g' bes' ees''!>8[ <d' d''> <c' f' a' c''> <d' f' bes'>]
 \bar "|"
 <c' f' c''>4 <d' f' d''> <f' a' c'' f''>
 <g' bes' ees'' g''>8 <bes' bes''> <f' f''>4 <g' g''> \bar "|"
 \break
 <f' f''>4 <ees' g' bes' ees''>8[ <d' d''> <c' f' a' c''>
 <d' f' bes'>] <c' f' c''>4 <d' f' d''> <f' a' c'' f''> \bar "|"
 <g' bes' ees'' g''>8 <bes' bes''>
 <f' f''>4 <g' g''> <f' f''> g'4 f' \bar "|"
 <g' bes' e'' g''>8 <bes' bes''> <f' f''>4 <g' g''> <f' f''>
 <bes ees'! g'> <a c' f'> \bar "|"
 \break
 <bes f' bes'>4 <c' f' a' c''>8 <f' f''> <d' f' bes' d''>4
 <c' f' a' c''>8 <f' f''> <d' f' bes' d''>4 <bes d' f' bes'>
 \bar "|"
 <c' ees' g' c''>4 <g c' e' g'> <a c' f'>
 <g d' g'> <a c' f'> <bes d' bes'> \bar "|"
 <c' f' a' c''>8 <f' f''> <d' f' bes' d''>4 <bes d' g' bes'>
 <ees' g' c'' ees''> <c' f' a' c''> <d' f' bes'> \bar "|."
}

 \context Staff = "down" {
 \clef bass
 \key bes \major
 \time 5/4 R1*5/4 \bar "||"
 \time 6/4 R1*6/4 \bar "||"
 \time 5/4 <g, g>4 <a, f> <g, g> <f, f> <d, d>
 \bar "||"
 \break
 \override Staff.AccidentalPlacement   #'padding = #0.7
 \time 6/4 <f, f>4 <bes, bes> <g, g> <c, c> <e, e> <f, f>
 \bar "||"
 \time 5/4 R1*5/4 \bar "||"
 \time 6/4 r4 r4 <f, f>4 <bes, bes> <g, g> <f, f> \bar "||"
 \break
 \time 5/4 R1*5/4 \bar "||"
 \time 6/4 r4 r <aes, aes>4 <des des'> <bes, bes> <aes, aes>
 \bar "|"
 <ges,, ges,>2 <f,, f,>4 <ges,, ges,> <ges,, ges,> <ges, ges>
 \bar "|"
 \break
 <f, f>8 <ees, ees> <des, des>4 <ees, ees>8 <f, f> <aes, aes>4
 <bes, bes> <aes, aes> \bar "||"
 \time 5/4
 <ges,, ges,>2 <f,, f,>4 <ges,, ges,> <ges, ges>8 r8
 \bar "||"
 <bes,, bes,>2 <a,,! a,!>4 <bes,, bes,>
 <bes,, bes,> <bes, bes> \bar "|"
 \break
 <a, a>8 <g, g> <f, f>4 <g, g>8 <a, a>8
 <c c'>4 <d d'> <c c'> \bar "|"
 <a, a>4 <bes, bes> <f, f> <g, g> <f, f> <g, g> \bar "|"
 <d, d>4 <g, g> <d, d> <g, g> <d, d> <g, g> \bar "|"
 \break
 <c, c>4 <f, f> <g, g> <c, c> <f, f> <g, g> \bar "|"
 <c, c>4 f, <c, c> <f,, f,> <g,, g,> <a,, a,>8 <bes,, bes,>
 \bar "|"
 <a,, a,>4 <bes,, bes,> <a,, a,> <g,, g,> <f,, f,> <g,, g,>
 \bar "|" \break
 <f,, f,>4 <g,, g,> <a,, a,>8 <bes,, bes,>
 <a,, a,>4 <bes,, bes,> <a,, a,> \bar "|"
 <g,, g,>4 <f,, f,> <g,, g,> <f,, f,> g4 f \bar "|"
 <c, c>4 <f,, f,> <g,, g,> <f,, f,> <ees, ees> <f, f> \bar "|"
 \break
 <d, d>4 <c, c> <bes,, bes,> <a,, a,> <g,, g,> <g, g> \bar "|" 
 <c, c>4 <e, e> <f, f> <bes,, bes,> <a,, a,> <g,, g,> \bar "|"
 <f,, f,>4 <bes,, bes,> <g, g> <c, c>
 \override TextScript   #'padding = #2.0
 <f, f>_\markup { \hspace #2.0 "attaca" } <bes, bes> \bar "|."
 }
>>
 }

 \paper { }

 \midi { \tempo 4 = 86 }

}
