\version "2.16.0"
#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "La Gracieuse"
  subtitle          = "Anmut  *  Gracefulness"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  opus              = "Opus 100."
  piece             = "25 Etudes faciles"
  meter             = "Moderato"
  copyright         = "Public Domain"
  mutopiatitle      = "La Gracieuse"
  mutopiacomposer   = "BurgmullerJFF"
  mutopiainstrument = "Piano"
  date              = "19th Century"
  source            = "Collection Litolff, 19th Century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/12-217"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key f\major \time 3/4}


VoiceI =  \relative c'' {
  \repeat volta 2 {
  \stemNeutral  c8[-3 ( d32 c b c-1] f8[-3 g32 f e f-1 ] a8)-3 r
   c,[-3 ( d32 c b c-1] g'8[-3 a32 g fis g-1 ] bes8) r
   e,[-3 ( f32 e dis e-1] g8[-3 a32 g fis g-1 ]  c8)-4 r
   c[-2\< ( d32-1 e f g\!] a8\>  g32[ f e d ] c8)-2\! r
  
  c[->-3 (
  d32 c b c]  a8[-1 bes32-4 a gis a-5] d,8)-1 r
  bes'[-3 ( c32 bes a bes]  g8[-1 a32-4 g fis g ]  d8) r
   e[-3 ( f32 e dis e-1]  g8[ a32 g fis g-1]  c8[-3 d!32 c b c-1]

  \ottava #1
   f8[-3 g32\dim f\! e f-1] c'8[-3 d32 c b c-1 ] f8)-4 \ottava #0 r
  }
  
  <g,,, c e>4. <g c e >8[-.( <g b d>-. <g c e>-.]
  <g b  f'>4.-^) <g b f' >8[-.( <g b f'>-. <g b e>-.]
  <g b e>[-. <g b d>_\cresc-. <g b e>-.\! <g b d>-. <g b e>-. <g b d>-.]
  <g c >8[)-3( d'32-4 c b c] e8[-3 f32 e dis e]  g8) r
  
  <g, c e>4. <g c e >8[-.( <g b d>-. <g c e>-.]
  <g b  f'>4.-^) <g b f' >8[-.( <g b f'>-. <g b e>-.]
  <g b e>[-. <g b d>_\cresc-. <g b e>-.\! <g b d>-. <g b e>-. <g b d>-.]
  <g c>-._\markup{\italic "dim. e poco rit."} c4) c c8
  \bar "||"
  }

VoiceII =  \relative c {
  <f a c>2^\markup{\italic "molto legato e leggiero"}^\p <f a c >8-.( <f a c>)-.
  <e bes' c>2 <e bes' c >8-.( <e bes' c>)-.
  <g bes c>2 <g bes c >8-.( <g bes c>)-.
  <f a c>2 <f a c >8-.( <f a c>)-.

  <d fis c'>2 <d fis c' >8-.( <d fis c'>)-.
  <g bes>2 <g bes >8-.( <g bes>)-.
  <c, g' bes> r <c g' bes> r <c g' bes> r
  <f a>2 f,8^\pp^ \markup{\large {\italic "Fine."}} r
  
  c''8[-3^\mf ( d32 c b c-.]  g2)
   d'8[-2 ( e32 d cis d]  g,2)
  <g f'>8[ <g f'> <g f'> <g f'> <g f'> <g f'>]
  <c e>2 ~ <c e>8 g-.-5
  
  c8[-3 ( d32 c b c-.]  g2)
   d'8[-2 ( e32 d cis d]  g,2)
  <g f'>8[ <g f'> <g f'> <g f'> <g f'> <g f'>]
  <c e>_\markup{\large \italic "D.C. al Fine."}( c)[-.-1 ( <b c>-. <bes c>-. <a c>-. <g c>)-.]
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \set PianoStaff.instrumentName = \markup{\large "8."}
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
    \tempo 4 = 100
    }


}

