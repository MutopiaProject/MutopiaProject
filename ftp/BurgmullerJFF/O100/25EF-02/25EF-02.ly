% Converted to LilyPond 2.0 syntax by Chris Sawer, chris@sawer.uklinux.net
% in order to correct a mistake in bar 17

\version "2.16.0"
#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "l'Arabesque"
  subtitle          = "Arabeske"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  opus              = "Opus 100."
  piece             = "25 Etudes faciles"
  meter             = "Allegro scherzando"
  copyright         = "Public Domain"
  mutopiatitle      = "l'Arabesque"
  mutopiacomposer   = "BurgmullerJFF"
  mutopiainstrument = "Piano"
  date              = "19th Century"
  source            = "Collection Litolff, 19th Century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/12-203"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key a\minor \time 2/4}
crescendo = \markup {\italic "cresc."}

MD =  \relative c'' {
  \stemNeutral \slurNeutral r2
  r
  
  
  \repeat volta 2 {
  
  a16-1_\markup {\dynamic p \italic "leggieremente"}-( b c b a8-)-. r
  a16-( b c d e8-)-. r
  d16-1-( e f g a8-)-. r  
  a16-1-( b c d e8-)-. r
  
  r e,-.-3-[ e-( f-]
  d-)-. r d4-> ~
  d8-[ g-( d e-]
  }
  
  \alternative {
    {c8-)-. r e4-5_\sf}
    {c4 c'8-. r}
  }
  
  \repeat volta 2 {
  
  e,4.-5_\f-( b8
  c4.-) a8-(
  e'4. b8
  c4.-) a8-(
  
  a'4._> e8-2
  f4. e8-)-(
  d_\markup {\italic "dim. e poco rall."}-[ c-3 b a-]
  gis4 e'-5
  
  a,16-1^\markup {\italic "a tempo"}_\p-)-( b c b a8-)-. r
  a16-( b c d e8-)-. r
  d16-1-( e f g a8-)-. r
  a16-1-( b c d e8-)-. r
  
  r b,-.-2_\markup {\italic "dolce"}-[ b-( c-]
  a4 e' ~
  e8-)-[ b-. b-( c-]
  }
  
  \alternative {
    { a2-)}
    {a16-( b c b a8-)-. r}
  }
  
  d16-1-( e f g a8-)-. r
  a16-1-( b c b a8-)-. r
  d16-1-( e f g a8-)-. r
  e,,16^\markup {\italic "risoluto"}_\f-( d c b a8-)-. r
  
  <c' a'>2^\fermata_\sf
  \bar "|."
  }

MS =  \relative c' {
  <a c e>4-.^\p <a c e>-.
  <a c e>-. <a c e>-.
  
  <a c e> <a c e>
  <a c e> <a c e>
  <a d f>^\crescendo <a d f>
  <a c e> <a c e>

  <g-1 c-3 e-5> <g c e>
  <g b f'> <g b f'>
  <g b f'> <g b f'>
  
  <c e>8 r e4
  <c e>4. r8
  
  \slurDown gis16-3-( a b a gis8-)-. r
  a16-5-( b c d e8-)-. r
  gis,16-3-( a b a gis8-)-. r
  a16-5-( b c d e8-)-. r
  
  cis16-3-( d e d cis8-)-. r
  \clef treble d16-5-( e f g a8-)-. g-(
  f-1-[ e d dis-]
  e-[ d! c b-]
  
  \clef bass <a c e>4-) <a c e>
  <a c e> <a c e>
  <a d f>^\crescendo <a d f>
  <a c e> <a c e>
  
  <a d e>^\p <a d e>
  <a c e> <a c e>
  <a d e> <a d e>
  
  <a c e> <a c e>
  <a c e> <a c e>
  
  <a d f>^\crescendo <a d f>
  <a c e> <a c e>
  <a d f> <a d f>
  e16-( d c b a8-)-. r
  
  <a' e'>2_\fermata
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \set PianoStaff.instrumentName = \markup{\large "2. "}
  \context Staff = "up" <<
    \Global \clef treble
    \context Voice=VoiceI \MD
  >>
  \context Staff = "down" <<
    \Global \clef bass
    \context Voice=VoiceI \MS
  >>
>>
}
\layout {}

  \midi {
    \tempo 4 = 152
    }
}
