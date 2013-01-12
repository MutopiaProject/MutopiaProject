\version "2.16.0"
#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "L'Adieu"
  subtitle          = "Abschied  *  Farewell"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  piece             = "25 Etudes faciles"
  opus              = "Opus 100."
  meter             = "Allegro molto agitato"
  copyright         = "Public Domain"
  mutopiatitle      = "L'Adieu"
  mutopiacomposer   = "BurgmullerJFF"
  mutopiainstrument = "Piano"
  date              = "19th Century"
  source            = "Collection Litolff, 19th Century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/12-223"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key c\major \time 4/4 \partial 8*3}
Treble = \clef treble
Bass = \clef bass

VoiceI =  \relative c'' {
  \override TupletBracket   #'bracket-visibility = ##f
  \override TupletNumber   #'stencil = ##f
  \stemNeutral \slurNeutral e8-2 ( f  e)
  
  e4-3 ( d) r8 d-2 ( \slashedGrace f e  d)
  d4-3 ( c) r8 e-3\< ( dis e-1
  d'4.-5_\sf\> c8\! b a-1 gis-3 f
  e_ \markup{\italic "dim. e rall."} d-3 c b ais-2 b-1 e-5 d
  
  \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { c8)^ \markup{\italic "a tempo"} ( a c
   d->-4 e d c d c b c d
   e) ( c a d-> e d c d c b c d
   e) ( c a f'_\cresc d\! a e' c a dis c a
   e') ( a, b c b a  e') ( b c d c b
 
   c) a ( c d-> e d c d c b c d
   e) ( d a d-> e d c d c b c d
   e) ( c a g'_\cresc e\! a, f' d a a' fis c
   a')-5 ( e-2 c-1 e-3 dis e -1 a-3 gis a-1 c-3 b c-3}
  
  e8)_\f r e,,4 ( c' b
   a8) r \times 2/3 {f'8-4_\sf ( e  d) d-4 ( c  b) b-4 ( a gis}
   a8)-1 r \times 2/3 {f'8_\sf ( e  d) d ( c  b) b ( a gis
   a)-1 c-3 ( b a c-2 e-3}  a4) r
  \bar "||"
  
  g4-2 ( e-1 c'-4 a-2
  g\< e'\> c g)-1
  g-3\> ( f) f-3\> ( e)\!
  d ( g f  d)-1
  
  g-2 ( e-1 c'-4 a-2
  g\< g'-5_\sf\> e-4 c)-2
  b-1 ( as-3\> f-2\! d-1
   c)-2 ( e)-4 e-5 ( d
  
  \times 2/3 { c8)^ \markup{\italic "a tempo"} a ( c d-> e d c d c b c d
   e) ( c a d-> e d c d c b c d
   e) ( c a f'_\cresc d\! a e' c a dis c a
   e') ( a, b c b a  e') ( b c d c b
  
   c) a ( c d-> e d c d c b c d
   e) ( c a d-> e d c d c b c d
   e) ( c a g'_\cresc e\! a, f' d a a' fis c
   a')-5 ( e-2 c-1 e-3 dis e-1 a-3 gis a-1 c-3 b c-3}
  
  e8)_\f r e,,4\< ( c'\> b\!
  a8) r  \times 2/3 {f'8-4_\sf ( e  d)  d-4 ( c  b) b-4 ( a gis}
   a8)-1 r \times 2/3 {f'8_\sf ( e  d) d ( c  b) b ( a gis
   a)-1 c-3 ( b a c-2 e-3}  a4) r
  
  \times 2/3 {a8-3 ( c b a c-2 e-3}  a4)-. r
  \times 2/3 {a,,8 ( c b a c-2 e-3}  a4)-. r
  \times 2/3 {a8 ( c b a c-2 e-3}  a4)-. r
  a,, r <c a'>_\f-. r
  
  <c, a'>2-^ r
  \bar "|."
  }

VoiceII =  \relative c' {
  \override TupletBracket   #'bracket-visibility = ##f
  \override TupletNumber   #'stencil = ##f
  \stemNeutral \slurNeutral r8^\p r4
  
  \Treble r8 <f a> <f a> <f a> <f a> r r4
  r8 <e a> <e a> <e a> <e a> r r4
  \Bass <e, gis b d>2. r4
  r1
  
  a4^\p \Treble f' e d
  c f e d
  c d e f
  e r \Bass <e,  gis d'>2(
  
  <a c>8) r \Treble f'4 e d
  c f e d
  c-4 cis d-1 dis-2
  e2 r
  
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \Bass \times 2/3 {e,8 ( a c e,\< a c e,\> gis d' e,\! gis d'}
  <a c>8)-2-4 r <a d f>2 <a d f>4
  <a c e>8 r <a d f>2 <a d f>4
  <a c e> r a, r
  
  \Treble \times 2/3 {c'8^\p^ \markup{\italic "espressivo"} ( e g c, e g c, f a c, f a
  c, e g c, e g c, e g c, e  g)
  b, ( d g b, d g c, e g c, e g
  g, b d g, b d g, b d g, b  d)
   
  c (e g c, e g c, f a c, f a
  c, e g c, e g c, e g c, e  g)
  c, ( f as c, f as c, f as c, f as
  c,^ \markup{\italic "dim. e poco rit."} e g c, e g b, e gis b, e gis}
  
  a,4)^\p f' e d
  c f e d
  c d e f
  e r \Bass <e,  gis d'>2(
  
  <a c>8) r \Treble f'4 e d
  c f e d
  c-4 cis d-1 dis-2
  e2 r
  
  \Bass \times 2/3 {e,8 ( a c e, a c e, gis d' e, gis d'}
  <a c>8)-2-4 r <a d f>2 <a d f>4
  <a c e>8 r <a d f>2 <a d f>4
  <a c e> r r \slurDown <d  f >->-1-2(
  
  <c e>2.^\p-1-3 <b d>4
  <a c>2.)-3-5 <d  f >4->-1-2(
  <c e>2.-1-3 <b d>4
  <a c>) r <a e'> r 
  <a, e'>2-^ r
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \set PianoStaff.instrumentName = \markup{\large "12."}
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
    \tempo 4 = 184
    }


}

