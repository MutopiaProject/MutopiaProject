\version "2.18.0"

\header {
  title = "Prelude, Op. 59, No. 2 (1910)"
  composer = "A. Scriabin (1872-1915)"
  mutopiatitle = "Prelude"
  mutopiacomposer = "ScriabinA"
  mutopiaopus = "Op. 59, No. 2"
  mutopiainstrument = "Piano"
  date = "1910"
  source = "Dover reproduction"
  style = "Romantic"
  license = "Public Domain"
  moreInfo = "Original typesetting by Tak-Shing Chan, chan12@alumni.usc.edu"
  maintainer = "Federico Bruni"
  maintainerEmail = "fede AT inventati DOT org"

 footer = "Mutopia-2014/02/24-445"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  system-system-spacing.stretchability = #8
}

upperOne =  \relative c' {
  \voiceOne
  \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \mark \markup "Sauvage, belliqueux"
  \time 6/8
  \partial 4. <g c fis>4.--\p |
  <bes ees>8-- <d d'>4-> <g, fis'>4.-- |
  \phrasingSlurUp
  \tieNeutral
  ees'4-- <d d'>8->\( ~ <d d'> bes' a |
  \tuplet 5/3 { d bes a fis ees\) } <g, fis'>4. |
  ees'4-- <d d'>8->\( ~ <d d'> bes' a |
  \tuplet 4/3 { d bes a fis\) } <bes, a'>4.-- |
  ges'4-- <f f'>8->\( ~ <f f'> des' c |
  \tuplet 4/3 { f des c a\) } <cis, fis bis>4.-- |
  <a e' a>8-- <gis' gis'>4-> <cis, bis'>4.-- |
  <a a'>4-- <gis' gis'>8-> <cis, bis'>4.-- |
  <a a'>4-- <gis' gis'>8-> <a, a'>4-- <gis' gis'>8-> |
  r r <gis bis gis'>->\p\<^\markup{\italic "avec défi"} <gis bis gis'>-> <gis bis gis'>-> <gis bis gis'>->\! |
  \tieUp
  gis'->\f e8.-> dis16-> gis4.-> ~ |
  gis4 e8-> dis-> bis-> a-> |
  \phrasingSlurDown
  <bis, e a bis>4.-> e,16\( a bis e gis a |
  bis a gis e bis a e8\) r r |
  gis'' e8.-- dis16-- gis4.-> ~ |
  gis4 e8-> dis-> bis-> a-> |
  <bis, e a bis>4.-> e,16\( a bis e gis a |
  bis a gis e bis a e8\) r r |
  dis''->[ b r16 ais] dis4.-> ~ |
  dis4 b8-> ais-> fisis-> e-> |
  <fisis, b e fisis>-> fisis16\([ b dis e] fisis[ e dis b] fisis8\) |
  <fisis b e fisis>-> fisis16\([ b dis e] fisis[ e dis b] fisis8\) |
  <fisis b eis fisis>-> fisis16\([ b dis eis] fisis[ eis dis b] fisis8\) |
  <aes b f' aes>-> aes16\([ b e f] aes[ f e ais,] gis8\) |
  <e' gis bis>4. <cis fis bis>--\p\< |
  <cis fis bis>-- <cis fis bis>--\! |
  r4 r8 <cis fis bis>4.--\mp |
  <e a>8-- <gis gis'>4-> <cis, bis'>4.-- |
  \phrasingSlurUp
  \tieNeutral
  <a a'>4-- <gis' gis'>8->\( ~ <gis gis'> e' dis |
  \tuplet 5/3 { gis e dis bis a\) } <cis, bis'>4.-- |
  <a a'>4-- <gis' gis'>8->\( ~ <gis gis'> e' dis |
  \tuplet 4/3 { gis e dis bis\) } <e, dis'>4.-- |
  <c c'>4-- <b' b'>8->\( ~ <b b'> g' fis |
  \tuplet 4/3 { <b, b'> g' fis dis\) } <g, c fis>4-- r8 |
  <ees bes' ees>8-- <d' d'>4-> <g, fis'>4.-- |
  <ees ees'>4-- <d' d'>8-> <g, fis'>4.-- |
  <ees ees'>4-- <d' d'>8-> <ees, ees'>4-- <d' d'>8-> |
  r r <d fis d'>->\p\< <d fis d'>-> <d fis d'>-> <d fis d'>->\! |
  \tieUp
  <d d'>->\f^\markup{\italic "avec défi"} <bes bes'>-- <a a'>-- <d d'>4.-> ~ |
  <d d'>4 <bes bes'>8-> <a a'>-> <fis fis'>-> <ees ees'>-> |
  \phrasingSlurDown
  <fis bes ees fis>4.-> bes,16\( ees fis bes d ees |
  fis ees d bes fis ees bes8\) r r |
  <d' d'>-> <bes bes'>8.-- <a a'>16-- <d d'>4.-> ~ |
  <d d'>4 <bes bes'>8-> <a a'>-> <fis fis'>-> <ees ees'>-> |
  <fis bes ees fis>4.-> bes,16\( ees fis bes d ees |
  fis ees d bes fis ees bes8\) r r |
  <a' a'>-> <f f'>8.-- <e e'>16-- <a a'>4.-> ~ |
  <a a'>4 <f f'>8-> <e e'>-> <cis cis'>-> <bes bes'>-> |
  <cis f bes cis>-> cis16\([ f a bes] cis[ bes a f] cis8\) |
  <cis f bes cis>-> cis16\([ f a bes] cis[ bes a f] cis8\) |
  <cis f b! cis>-> cis16\([ f a b] cis[ b a f] cis8\) |
  <d eis b' d>-> d16\([ eis ais b] d[ b ais e] d8\) |
  <d e bes' d>4.-> <bes e a>-- |
  <bes e a>-- <bes e a>-- |
  <d e bes' d>4.-> <bes e a>-- |
  <bes e a>-- <bes e a>-- |
  \tieUp
  d'8-> bes8.-- a16-- d4.-> ~ |
  d4-> bes8-> a4-> r16 fis-> |
  \tieNeutral
  <des e a>2.-> ~ |
  <des e a> |
  \bar "|."
}

upperTwo =  \relative c' {
  \voiceTwo
  \time 6/8
  \partial 4. s4. |
  \phrasingSlurDown
  s c8\( cis c |
  b bes\) r s4. |
  s c8\(_\markup{\italic "cresc."} cis c |
  b bes\) r s4. |
  s ees8\( e ees |
  d des\) s2 |
  s2. |
  s4. fis8\( fisis fis |
  eis e\) s fis\( fisis fis |
  eis e\) r eis\( e\) r |
  s2. |
  <gis bis>4. <gis bis> ~ |
  <gis bis> r4 r8 |
  s2. s |
  <gis bis>4. <gis bis> ~ |
  <gis bis> r4 r8 |
  s2. s |
  <dis fisis>4. <dis fisis> ~ |
  <dis fisis> r4 r8 |
  s2. s s s s s s |
  s4. fis8\( fisis fis |
  eis e\) s s4. |
  s fis8\(_\markup{\italic "cresc."} fisis fis |
  eis e\) s s4. |
  s a8\( ais a |
  gis g\) s s4. |
  s2. |
  s4. c8\( cis c |
  b bes\) r c\( cis c |
  b bes\) r b\( bes\) r |
  s2. |
  fis'4. fis ~ |
  fis4 s8 s4. |
  s2. s |
  fis4. fis ~ |
  fis4 s8 s4. |
  s2. s |
  cis4. cis ~ |
  cis4 s8 s4. |
  s2. s s s s s s s |
  \tieNeutral
  <d, e>4. <d e> ~ |
  <d e> s |
  s2. s |
  \bar "|."
}

lower =  \relative c, {
  \clef "F"
  \time 6/8
  \partial 4. <a a'>16( <ees ees'>) r8 r |
  <c' c'>16([ <g g'>)] <ees'' bes' ees>8-> r <a,, a'>16( <ees ees'>) r8 r |
  <c' c'>16( <g g'>) r8 <ees'' bes' ees>-> ~ <ees bes' ees> r r |
  r4 r8 <a,, a'>16( <ees ees'>) r8 r |
  <c' c'>16( <g g'>) r8 <ees'' bes' ees>8-> ~ <ees bes' ees> r r |
  r4 r8 <c, c'>16( <ges ges'>) r8 r |
  <ees' ees'>16( <bes bes'>) r8 <ges'' des' ges>8-> ~ <ges des' ges> r r |
  r4 r8 <dis, dis'>16( <a a'>) r8 r |
  <bis bis'>16([ <fis fis'>)] <a'' e' a>4-> <dis,, dis'>16( <a a'>) r8 r |
  <bis bis'>16([ <fis fis'>)] r8 <a'' e' a>-> <dis,, dis'>16( <a a'>) r8 r |
  <bis bis'>16([ <fis fis'>)] r8 <a'' e' a>-> <bis,, bis'>16([ <fis fis'>)] r8 <a'' e' a>-> |
  r r <a e' a>-> <a e' a>-> <bis,, bis'>-> <fis fis'>-> |
  <a'' e' a>4.-> <a e' a>-> ~ |
  <a e' a> r8 <fis,, fis'>-> <cis cis'>-> |
  <e'' a>4. r4 r8 |
  r4 r8 r <bis, bis'>-> <fis fis'>-> |
  <a'' e' a>4.-> <a e' a>-> ~ |
  <a e' a> r8 <fis,, fis'>-> <cis cis'>-> |
  <e'' a>4.-> r4 r8 |
  r4 r8 r <fisis,, fisis'>-> <cis cis'>-> |
  <e'' b' e>4. <e b' e> ~ |
  <e b' e> r8 <cis, cis'>-> <gis gis'>-> |
  <b' e>4-> r8 r <cis, cis'>-> <gis gis'>-> |
  <b' e>4-> r8 r <cis, cis'>-> <gis gis'>-> |
  <b' eis>4-> r8 r <cis, cis'> <g! g'!> |
  <b' f'>4-> r8 r <bis, bis'> <fis fis'> |
  <e'' ais>4. <dis, dis'>16( <a a'>) r8 r |
  <dis dis'>16( <a a'>) r8 r <dis dis'>16( <a a'>) r8 r |
  r4 r8 <dis dis'>16( <a a'>) r8 r |
  <fis' fis'>16([ <cis cis'>)] <a'' e' a>4-> <dis,, dis'>16( <a a'>) r8 r |
  <fis' fis'>16( <cis cis'>) r8 <a'' e' a>-> ~ <a e' a> r r |
  r4 r8 <dis,, dis'>16( <a a'>) r8 r |
  <fis' fis'>16( <cis cis'>) r8 <a'' e' a>8-> ~ <a e' a> r r |
  r4 r8 <fis, fis'>16( <c! c'!>) r8 r |
  <a' a'>16( <e e'>) r8 <c'' g' c>8-> ~ <c g' c> r r |
  r4 r8 <a, a'>16( <ees ees'>) r8 r |
  <fis fis'>16([ <c c'>)] <bes'' ees bes'>8-> r <a, a'>16( <ees ees'>) r8 r |
  <fis fis'>16([ <c c'>)] r8 <bes'' ees bes'>-> <a, a'>16( <ees ees'>) r8 r |
  <fis fis'>16([ <c c'>)] r8 <bes'' ees bes'>-> <fis, fis'>16([ <c c'>)] r8 <bes'' ees bes'>-> |
  r r <bes ees bes'>-> <bes ees bes'>-> <fis, fis'>-> <c c'>-> |
  <bes'' ees bes'>4.-> <bes ees bes'>-> ~ |
  <bes ees bes'>4 r8 r <c,, c'>-> <g g'>-> |
  <ees'' bes' ees>4.-> r4 r8 |
  r4 r8 r <fis, fis'>-> <c c'>-> |
  <bes'' ees bes'>4.-> <bes ees bes'>-> ~ |
  <bes ees bes'>4 r8 r <c,, c'>-> <g g'>-> |
  <ees'' bes' ees>4.-> r4 r8 |
  r4 r8 r <cis, cis'>-> <g g'>-> |
  <f'' bes f'>4.-> <f bes f'>-> ~ |
  <f bes f'>4 r8 r <g,, g'>-> <d d'>-> |
  <bes'' fes' bes>-> r r r <g, g'>-> <d d'>-> |
  <bes'' f' bes>-> r r r <g, g'> <d d'> |
  <b''! f' b!>-> r r r <fisis, fisis'> <cis cis'> |
  <b'' eis b'>-> r r r <fis, fis'> <c? c'?> |
  <bes'' e bes'>-> r r <c, c'>16( <fis, fis'>) r8 r |
  <c' c'>16( <fis, fis'>) r8 r r <fis fis'>8 <c c'> |
  <bes'' e bes'>-> r r <c, c'>16( <fis, fis'>) r8 r |
  <c' c'>16( <fis, fis'>) r8 r r <fis fis'>8 <c c'> |
  <bes'' e bes'>4.-> <bes e bes'>-> ~ |
  <bes e bes'>4 r8 r4 r8 |
  \acciaccatura <c,, c'> <c c' bes' e bes'>2. ~ |
  <c c' bes' e bes'> |
  \bar "|."
}

\score {
  <<
    \context PianoStaff <<
      \context Staff = "upper" <<
        \context Voice = "one" \upperOne
        \context Voice = "two" \upperTwo
      >>
      \context Staff = "lower" \lower
    >>
  >>
  \layout {
    #(layout-set-staff-size 16)
  }
  \midi {
    \tempo 4 . = 84
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
