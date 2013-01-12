%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "La Petite Réunion"
  subtitle          = "Kleine Gesellschaft  *  Festive Gathering"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  opus              = "Opus 100."
  piece             = "25 Etudes faciles"
  meter             = "Allegro non troppo"
  copyright         = "Public Domain"
  mutopiatitle      = "La Petite Réunion"
  mutopiacomposer   = "J.F.F. Burgmüller (1806-1874)"
  mutopiainstrument = "Piano"
  date              = "19th century"
  source            = "Collection Litolff, 19th century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Mar/18"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/03/18-219"
}

Global = \notes {\key c\major \time 4/4}
Treble = \clef treble
Bass = \clef bass

eendrie = #'(lines "3" "1")
tweevier = #'(lines "4" "2")
drievijf = #'(lines "5" "3")

VoiceI = \notes \relative c'' {
  \stemBoth \slurBoth \tieBoth r1
  <d8\decr f-.^\drievijf> <c e-.> <b d-.> <a c-.^\drievijf> <g b-.> <f a-.> <e g-.^\drievijf> <d\rced f-.>
  <c4 e> r r2
  <d'8\decr f-.^\drievijf> <c e-.> <b d-.> <a c-.^\drievijf> <g b-.> <f a-.> <e g-.^\drievijf> <d\rced f-.>
  
  <c4 e> r <e-. c'> r
  <c-. d> r <b-. g'> \property Voice.Script \override #'direction = #1 r\fermata
  
  \repeat volta 2 {
  \property Voice.Script \revert #'direction <c''4_\sf \decr e^\drievijf (> <b8 d> <a\rced ) c> <a4_\p c^\drievijf (> <g8 b> <f a>
  <e4 g^\drievijf> <c8 e> <d f> <e4 ) g> <d8 f (> <c ) e^\eendrie>
  <c4 e^\tweevier(> <b8 d> <c e> <d4 ) f> <d8 f (> <c e>
  \property Voice.DynamicText \override #'extra-offset = #'(0 . -1) \property Voice.Hairpin \override #'extra-offset = #'(0 . -1)
  <b\cr ) d-.^\eendrie> <c e-.^\tweevier> <d f-.^\tweevier> <e g-.^\tweevier> <f a-.^\tweevier> <g b-.^\tweevier> <a c-.^\tweevier> <b\rc d-.^\tweevier>  

  <c4_\sf\decr e^\drievijf (> <b8 d> <a\rced ) c> <a4_\p c^\drievijf (> <g8 b> <f a>
  <e4 g^\drievijf> <c8 e> <d f> <e4 ) g> <d8 f (> <c ) e^\eendrie>
  \property Voice.DynamicText \revert #'extra-offset <a4_\f f'^#'(lines "5" "1")> <g8 e'> <f d'> <f4 d'> <e8 c'> <d b'>
  <e4 c'> e8 ( d ) c4 r
  }

  \repeat volta 2 {
  r1
  <g'4 b^\eendrie (> <a8 c> <b ) d> <b4 d^\eendrie (> <c8 e> <d ) f>
  <d2 f> r
  <g,4_#'(italic (lines (" " "cresc."))) b^\eendrie (> <a8 c> <b ) d> <b4 d^\eendrie (> <c8 e> <d ) f>
  
  <d4 f> <b8 d (> <c e> <d2 f> ~
  <d4 ) f> <b8 d (> <c e> <d2 f > ~
  <d4 ) f> <b8 d (> <c e> <d4 ) f> <b8 d(> <c e>
  <d4 ) f-.^\drievijf> <d8\cr f-.^\tweevier> <e g-.^\tweevier> <f a-.^\tweevier> <g b-.> <a c-.> <b\rc d-.>
  
  \property Voice.DynamicText \override #'extra-offset = #'(0 . -1) <c4_\sf\decr e^\drievijf (> <b8 d> <a\rced ) c> <a4_\p c (> <g8 b> <f a>
  <e4 g> <c8 e> <d f> <e4 ) g> <d8 f (> <c ) e>
  <c4 e (> <b8 d> <c e> <d4 ) f> <d8 f (> <c e>
  <b\cr ) d-.> <c e-.> <d f-.> <e g-.> <f a-.> <g b-.> <a c-.> <b\rc d-.>  

  <c4_\sf\decr e (> <b8 d> <a\rced ) c> <a4_\p c (> <g8 b> <f a>
  <e4 g> <c8 e> <d f> <e4 ) g> <d8 f (> <c ) e>
  \property Voice.DynamicText \revert #'extra-offset <a4_\f f'> <g8 e'> <f d'> <f4 d'> <e8 c'> <d b'>
  <e4 c'> e8 ( d ) c4 r
  
  }
  
  }
VoiceII = \notes \relative c' {
  \stemBoth \slurBoth \tieBoth \property Voice.DynamicText \override #'extra-offset = #'(0 . 2) g4^"4"^\p ( a8 b c4 e,8 f
  ) g1
  g4^"4" ( a8 b c e, b' a
  ) g1
  
  c,4 r a'-.^\f r
  f-. r g-. \property Voice.Script \override #'direction = #-1 r\fermata 
  
  \property Voice.Script \revert #'direction \slurDown c,2 f4^"3" ( a^"2"
  ) c2^"1" c,
  a'^"1" d,
  g1^"1"
  
  c,2 f4^"3" ( a^"2"
  ) c2^"1" c,
  f g
  \slurUp c,4 g'8 ( f <c4 ) e> r 
  
  \property Voice.DynamicText \override #'extra-offset = #'(0 . 3) \slurDown <g'^\p ( b^\drievijf> <a8 c> <) b d> <b4 ( d^\drievijf> <c8 e> <) d f>
  \property Voice.DynamicText \revert #'extra-offset <d2 f> r
  <g,4 ( b^\drievijf> <a8 c> <) b d> <b4 ( d^\drievijf> <c8 e> <) d f>
  <d4 ( f> <c8 e> <) b d> <b4 ( d^\eendrie> <a8 c> <) g b>
  
  <g4 b> r r \Treble as'4 (
  ) g r r \Bass \slurBoth as, (
  ) g r r2
  r1
  
  c,2 f4 ( a
  ) c2 c,
  a' d,
  g1
  
  c,2 f4 ( a
  ) c2 c,
  f g
  \slurUp c,4 g'8 ( f <c4 ) e> r 
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = #'(Large "4. ")
  \context Staff = "up" <
    \Global \clef treble
    \context Voice=VcI \VoiceI
  >
  \context Staff = "down" <
    \Global \clef bass
    \context Voice=VcII \VoiceII
  >
>
}
\paper {}
\midi {\tempo 4=152}
}

