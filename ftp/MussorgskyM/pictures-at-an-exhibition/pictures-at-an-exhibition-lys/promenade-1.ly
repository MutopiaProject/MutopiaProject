\version "2.18.2"

\header {
  title = "Pictures at an Exhibition"
  subtitle = "Promenade"
  composer = "Modest Moussorgsky (1839 - 1881)"
  mutopiatitle = "Promenade"
  mutopiacomposer = "MussorgskyM"
  mutopiainstrument = "Piano"
  date = "1873"
  source = "Pavel Lamm"
  style = "Romantic"
  license = "Public Domain"
  maintainer = "stelios"

 footer = "Mutopia-2016/12/31-475"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

longStem = \override Stem.length = #8.0
lowerTie = \once \override Tie.staff-position = #-9

upper = {
  \tempo "Allegro giusto, nel modo russico, senza allegrezza, ma poco sostenuto"
  \time 5/4
  g'4-- f'-- bes'--
  c''8--( f'' d''4--)
  \bar "||"

  \time 6/4
  c''8--( f'' d''4--) bes' c''-- g'-- f'--
  \bar "||"

  \time 5/4
  <bes d' g'>4 <a c' f'> <bes d' bes'>
  <<
    {
      c''8( f'' d''4)
    } \\ { <c' a'>4 <f' a'> }
  >>
  \break

  \time 6/4
  << { c''8( f'' d''4) } \\ { <c' a'>4 <f' bes'> } >>
  <d' g' bes'>4 <e' g' c''> <g c' g'> <a c' f'>
  \bar "||"

  \time 5/4
  f'4-- g'-- d'--
  f'8--( g' c'4--)
  \bar "||"

  \time 6/4
  g'8--( a' f'4--) <f' f''>4 <f' d''>
  << { c''8( bes' f'4) } \\ { f'4 f' } >>
  \bar "||"
  \break

  \time 5/4
  f'4-- g'-- d'--
  f'8--( g'8 ees'4--)
  \bar "||"

  \time 6/4
  bes'8--( c'' aes'4--) <aes' aes''>4 <aes' f''>
  << { ees''8( des''8 aes'4) } \\ { aes'4 aes' } >>
  \bar "|"

  <<
    {
      <aes aes'>4 <bes bes'> <aes aes'>
      <bes bes'>8[ <c' c''> <ees' ees''> <bes bes'>] <aes aes'>4
    } \\ {
      \longStem
      ees'2. ees'2.
    }
  >>
  \bar "|"
  \break

  <des' f' aes' des''>8 <ees' aes' c'' ees''>
  <f' aes' des'' f''>[ <aes' aes''> <ges' bes' ees'' ges''>
  <f' aes' des'' f''>] <ees' aes' c'' ees''>[ <ges' ges''>
  <f' bes' des'' f''> <des' des''>] <ees' aes' c'' ees''>4
  \bar "||"

  \time 5/4
  <<
    {
      <aes aes'>4 <bes bes'> <aes aes'>
      <bes bes'>8[ <c' c''> <ees' ees''> <bes bes'>]
    } \\ {
      \longStem
      ees'2. \lowerTie ees'4 ~ ees'8 r8
    }
  >>
  \bar "||"

  \time 6/4
  <<
    {
      <c' c''>4 <d' d''> <c' c''>
      <d' d''>8[ <f' f''> <g' g''> <d' d''>] <c' c''>4
    } \\ {
      \longStem
      g'!2. g'2.
    }
  >>
  \bar "|"
  \break

  <f' a' c'' f''>8 <g' c'' e'' g''> <a' c'' f'' a''>8[
  <c'' c'''> <bes' d'' g'' bes''> <a' c'' f'' a''>]
  <g' c'' e'' g''>[ <bes' bes''> <a' d'' f'' a''> <f' f''>]
  <g' c'' e'' g''>4
  \bar "|"

  << { a''8 [ e'' ] } \\ { <a' c''>4 } >> <f' d'' f''>4
  <a' c'' a''> <e' bes' d''> <a' c'' a''> <e' bes' d''>
  \bar "|"

  << { f''8 [ c'' ] } \\ { \longStem <f' a'>4 } >> 
  <f' bes' d''>4 <f' a' f''> <f' bes' d''>
  << { f''8 [ c'' ] } \\ { \longStem <f' a'>4 } >> 
  <f' bes' d''>4
  \bar "|"
  \break

  << { <g' c''>4 } \\ { ees'8 [ e' ] } >> 
  <c' f' a'>4 <d' f' bes'>
  << { <g' c''>4 } \\ { ees'8 [ e' ] } >> 
  <c' f' a'>4
  << { bes'8 d'' } \\ { \longStem <d' f'>4 } >>
  \bar "|"

  <e' g' c''>4 <c' d' f' a'> <e' g' c''> <f' f''>
  <ees' g' bes' ees''!>8[ <d' d''> <c' f' a' c''> <d' f' bes'>]
  \bar "|"

  <c' f' c''>4 <d' f' d''> <f' a' c'' f''>
  <g' bes' ees'' g''>8 <bes' bes''> <f' f''>4 <g' g''>
  \bar "|"
  \break

  <f' f''>4 <ees' g' bes' ees''>8[ <d' d''> <c' f' a' c''>
  <d' f' bes'>] <c' f' c''>4 <d' f' d''> <f' a' c'' f''>
  \bar "|"

  <g' bes' ees'' g''>8 <bes' bes''>
  <f' f''>4 <g' g''> <f' f''> g'4 f'
  \bar "|"

  <g' bes' e'' g''>8 <bes' bes''> <f' f''>4 <g' g''> <f' f''>
  <bes ees'! g'> <a c' f'>
  \bar "|"
  \break

  <bes f' bes'>4 <c' f' a' c''>8 <f' f''> <d' f' bes' d''>4
  <c' f' a' c''>8 <f' f''> <d' f' bes' d''>4 <bes d' f' bes'>
  \bar "|"

  <c' ees' g' c''>4 <g c' e' g'> <a c' f'>
  <g d' g'> <a c' f'> <bes d' bes'>
  \bar "|"

  <c' f' a' c''>8 <f' f''> <d' f' bes' d''>4 <bes d' g' bes'>
  <ees' g' c'' ees''> <c' f' a' c''> <d' f' bes'>
  \bar "|."
}

lower = {
  \time 5/4
  R1*5/4
  \bar "||"

  \time 6/4
  R1*6/4
  \bar "||"

  \time 5/4
  <g, g>4 <a, f> <g, g> <f, f> <d, d>
  \bar "||"
  \break

  \time 6/4
  <f, f>4 <bes, bes> <g, g> <c, c> <e, e> <f, f>
  \bar "||"

  \time 5/4
  R1*5/4
  \bar "||"

  \time 6/4
  r4 r4 <f, f>4 <bes, bes> <g, g> <f, f>
  \bar "||"
  \break

  \time 5/4
  R1*5/4
  \bar "||"

  \time 6/4
  r4 r <aes, aes>4 <des des'> <bes, bes> <aes, aes>
  \bar "|"

  <ges,, ges,>2 <f,, f,>4 <ges,, ges,> <ges,, ges,> <ges, ges>
  \bar "|"
  \break

  <f, f>8 <ees, ees> <des, des>4 <ees, ees>8 <f, f> <aes, aes>4
  <bes, bes> <aes, aes>
  \bar "||"

  \time 5/4
  <ges,, ges,>2 <f,, f,>4 <ges,, ges,> <ges, ges>8 r8
  \bar "||"

  <bes,, bes,>2 <a,,! a,!>4 <bes,, bes,>
  <bes,, bes,> <bes, bes>
  \bar "|"
  \break

  <a, a>8 <g, g> <f, f>4 <g, g>8 <a, a>8
  <c c'>4 <d d'> <c c'>
  \bar "|"

  <a, a>4 <bes, bes> <f, f> <g, g> <f, f> <g, g>
  \bar "|"

  <d, d>4 <g, g> <d, d> <g, g> <d, d> <g, g>
  \bar "|"
  \break

  <c, c>4 <f, f> <g, g> <c, c> <f, f> <g, g>
  \bar "|"

  <c, c>4 f, <c, c> <f,, f,> <g,, g,> <a,, a,>8 <bes,, bes,>
  \bar "|"

  <a,, a,>4 <bes,, bes,> <a,, a,> <g,, g,> <f,, f,> <g,, g,>
  \bar "|"
  \break

  <f,, f,>4 <g,, g,> <a,, a,>8 <bes,, bes,>
  <a,, a,>4 <bes,, bes,> <a,, a,>
  \bar "|"

  <g,, g,>4 <f,, f,> <g,, g,> <f,, f,> g4 f
  \bar "|"

  <c, c>4 <f,, f,> <g,, g,> <f,, f,> <ees, ees> <f, f>
  \bar "|"
  \break

  <d, d>4 <c, c> <bes,, bes,> <a,, a,> <g,, g,> <g, g>
  \bar "|"

  <c, c>4 <e, e> <f, f> <bes,, bes,> <a,, a,> <g,, g,>
  \bar "|"

  <f,, f,>4 <bes,, bes,> <g, g> <c, c>
  <f, f>_\markup { \italic "attaca" } <bes, bes>
  \bar "|."
}

\bookpart {
  \header {
    dedication = "dedicated to Vladimir Vasilievich Stasov"
  }
  \score {
    \context PianoStaff
    <<
      \context Staff = "up" {
        \clef treble
        \key bes \major
        \upper
      }
      \context Staff = "down" {
        \clef bass
        \key bes \major
        \lower
      }
    >>
    \layout {
    }
    \midi {
      \tempo 4 = 88
    }
  }
}
