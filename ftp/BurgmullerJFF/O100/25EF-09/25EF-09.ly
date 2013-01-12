\version "2.16.0"
#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "La Chasse"
  subtitle          = "Die Jagd  *  The Chase"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  piece             = "25 Etudes faciles"
  opus              = "Opus 100."
  meter             = "Allegro vivace"
  copyright         = "Public Domain"
  mutopiatitle      = "La Chasse"
  mutopiacomposer   = "BurgmullerJFF"
  mutopiainstrument = "Piano"
  date              = "19th Century"
  source            = "Collection Litolff, 19th Century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/12-220"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key c\major \time 6/8 \partial 8}
Treble = \clef treble
Bass = \clef bass

VoiceI =  \relative c''' {
  \stemDown\slurNeutral r8
  R2.
  R
  R
  R\fermata
  
  g8-.---5_\f g,-.-2 g-.-1 g'-.---5 g,-.-2 g-.-1
  g'-.---5 g,-.-2 g-.-1 g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  \stemNeutral g'-|-5\> f-. d-.-2 b-.-1 a-.-2 g-.\!
  
  \stemDown g'-.--_\p g,-. g-. g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  \stemNeutral g' ( e c  c'4) r8
  
  \bar "||"
  
  <b,-1 d-2>4._\p^ \markup{\italic "un poco agitato"} <b d>
  <d-2 f-4>(\> <c es>)\!
  <es g >( <c es>)
  <b-1 d-2>2.
  
  <b d>4._\cresc <b d>\!
  <d f >(\> <c es>)\!
  <es g >( <c es>)
  \tieNeutral <b d> ~ <b d>8 r r
  
  \stemDown g'-.---5_\f g,-.-2 g-.-1 g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  \stemNeutral g'-|-5\> f-. d-.-2 b-. a-.-2 g-.\!
  
  \stemDown g'-.--_\p g,-. g-. g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  \stemNeutral g' ( e c  c'4) r8
  
  \repeat volta 2 {
  
  e,4.-4 ( a,)
  c\> ( b)\!
  a-1 ( gis)-2
  b-4 ( a)-1
  
  e'-2\< ( a-5\!
  g8\> f e d c-3 b\!
  a f'-5 e b-1 d-3 c
  a c-2 e-3  a4) r8
  }
  
  \stemDown g-.---5_\f g,-.-2 g-.-1 g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  \stemNeutral g'-|-5\> f-. d-.-2 b-. a-.-2 g-.\!
  
  \stemDown g'-.--_\p g,-. g-. g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  \stemNeutral g' ( e c  c'8) r r
  
  R2.
  R
  R
  \stemDown g8-.---5_\f g,-.-2 g-.-1 g'-| r r
  
  R2.
  R
  R
  g8-.---5 g,-.-2 g-.-1 g'-| r r
  
  g8-.---5_ \markup{\italic "perdendosi"} g,-.-2 g-.-1 g'-| r r
  g8-.---5 g,-.-2 g-.-1 g'-| r \stemNeutral <c,, e>-.
  <c e >4-.-- <c e>8_ \markup{\italic "rall."}-. <c e >4-.-- <c e>8-.
  <c e>2.\fermata
  
  \bar "|."
  
  }

VoiceII =  \relative c {
  <c e g>8^\p-.
  
  <c e g>4-.-- <c e g>8-. <c e g>4-.-- <c e g>8-.
  <c e g>4-.-- <e-5 g-3 c-1>8-. <e g c>4^\cresc-.-- <g-5 c-2 e-1>8-.\!
  <g c e>4-.-- <e g c>8-. <e g c>4-.-- <g b d>8-.
  <g b d>2.^\f_\fermata
  
  <e-5 c'-1>4. <g-5 d'-1>
  <d'-2 f-1> <c-3 e-1>
  <e,-5 c'-1> <c'-2 e-1>
  <g d'>2.
  
  <e c'>4. <g d'>
  <d' f> <c e>
  <e, c'> <g d'>
  <e c'> c4 r8
  
  \Treble r8 fis'-2 ( g) r fis ( g)
  r fis ( g) r fis ( g)
  r fis ( g) r fis ( g)
  \Bass r g,-5 ( b d b  g)
  
  r8 fis-2 ( g) r fis ( g)
  r fis ( g) r fis ( g)
  r fis ( g) r fis ( g)
  r fis ( g) g,-. r r
  
  <e' c'>4. <g d'>
  <d' f> <c e>
  <e,-5 c'-1> <c'-2 e-1>
  <g d'>2.
  
  <e c'>4. <g d'>
  <d' f>->
  <c e>
  <e, c'> <g d'>
  <e c'> c4 r8
  
  \Treble a'8^\p ( c^ \markup{\italic "dolente"}  e) a, ( c  e)
  a, ( d  f) a, ( d  f)
  a, ( d  f) a, ( d  f)
  a, ( c  e) a, ( c  e) 
  
  a, ( cis  g') a, ( cis  g')
  <d f>4 r8 r4 r8
  \Bass <e, a c>4 r8 <e gis d'>4 r8
  <a c>4 r8 a,4 r8
  
  <e' c'>4. <g d'>
  <d' f> <c e>
  <e,-5 c'-1> <c'-2 e-1>
  <g d'>2.
  
  <e c'>4. <g d'>
  <d' f>->
  <c e>
  <e, c'> <g d'>
  <e c'> ~ <e c'>8 r <c e g>^\p-.
  
  <c e g>4-.-- <c e g>8-. <c e g>4-.-- <c e g>8-.
  <c e g>4^\cresc-.-- <e g c>8-.\! <e g c>4-.-- <g c e>8-.
  <g c e>4-.-- <e g c>8-. <e g c>4-.-- <g b d>8-.
  <g b d>4. ~ <g b d>8 r <c, e g>^\p-.
  
  <c e g>4-.-- <c e g>8-. <c e g>4-.-- <c e g>8-.
  <c e g>4^\cresc-.-- <e g c>8-.\! <e g c>4-.-- <g c e>8-.
  <g c e>4-.-- <e g c>8-. <e g c>4-.-- <g b d>8-.
  <g b d>4. ~ <g b d>4 <g-3 d'-1>8
  
  <e c'>4. ~ <e c'>4 <g d'>8
  <e c'>4. ~ <e c'>8 r <c g'>^\pp
  <c g'>4 <c g'>8 <c g'>4 <c g'>8
  <c g'>2._\fermata
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \set PianoStaff.instrumentName = \markup{\large "9."}
  \context Staff = "up" <<
    \Global \clef treble
    \context Voice=VcI \VoiceI
  >>
  \context Staff = "down" <<
    \Global \clef bass
    \context Voice=VcII \VoiceII
  >>
>>
}
\layout {}

  \midi {
    \tempo 4 = 200
    }


}

