% Converted to LilyPond 2.0 syntax by Chris Sawer, chris@sawer.uklinux.net
% in order to correct a mistake in bar 17

\version "2.0.1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "l'Arabesque"
  subtitle          = "Arabeske"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  opus              = "Opus 100."
  piece             = "25 Etudes faciles"
  meter             = "Allegro scherzando"
%  tagline           = "Public Domain"
  copyright         = "Public Domain"
  mutopiatitle      = "l'Arabesque"
  mutopiacomposer   = "J.F.F. Burgmüller (1806-1874)"
  mutopiainstrument = "Piano"
  date              = "19th century"
  source            = "Collection Litolff, 19th century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Nov/04"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer            = "Mutopia-2003/11/04-203"
}

Global = \notes {\key a\minor \time 2/4}
crescendo = \markup {\italic "cresc."}

MD = \notes \relative c'' {
  \stemBoth \slurBoth r2
  r
  \property Staff.VoltaBracket \override #'padding = #0
  \property Voice.DynamicText \override #'extra-offset = #'(0 . -2) 
  
  
  \repeat volta 2 {
  
  \property Voice.TextScript \override #'extra-offset = #'(0 . -0.5)
  a16^"1"_\markup {\dynamic p \italic "leggieremente"}-( b \property Voice.TextScript \revert #'extra-offset c b a8-)-. r
  a16-( b c d e8-)-. r
  d16^"1"-( e f g a8-)-. r  
  a16^"1"-( b c d e8-)-. r
  
  r e,-.^"3"-[ e-( f-]
  d-)-. r d4-> ~
  d8-[ g-( d e-]
  }
  
  \alternative {
    {c8-)-. r \property Voice.DynamicText \set #'extra-offset = #'(0 . -1) e4^"5"_\sf}
    {c4 c'8-. r}
  }
  
  \repeat volta 2 {
  
  e,4.^"5"_\f-( b8
  c4.-) a8-(
  e'4. b8
  c4.-) a8-(
  
  \property Voice.Script \override #'direction = #-1 a'4.-> \property Voice.Script \revert #'direction e8^"2"
  f4. e8-)-(
  \property Voice.TextScript \set #'extra-offset = #'(0 . -2.5) d_\markup {\italic "dim. e poco rall."}-[ \property Voice.TextScript \set #'extra-offset = #'(0 . -0.5) c^"3" b a-]
  gis4 \property Voice.TextScript \set #'extra-offset = #'(0 . 1) e'^"5"
  
  \property Voice.TextScript \revert #'extra-offset a,16^"1"^\markup {\italic "a tempo"}_\p-)-( b c b a8-)-. r
  a16-( b c d e8-)-. r
  d16^"1"-( e f g a8-)-. r
  a16^"1"-( b c d e8-)-. r
  
  r b,-.^"2"_\markup {\italic "dolce"}-[ b-( c-]
  a4 e' ~
  e8-)-[ b-. b-( c-]
  }
  
  \alternative {
    { a2-)}
    {a16-( b c b a8-)-. r}
  }
  
  d16^"1"-( e f g a8-)-. r
  a16^"1"-( b c b a8-)-. r
  d16^"1"-( e f g a8-)-. r
  e,,16^\markup {\italic "risoluto"}_\f-( d c b a8-)-. r
  
  \property Voice.DynamicText \revert #'extra-offset
  \property Voice.Script \override #'direction = #1 <c' a'>2^\fermata_\sf
  \bar "|."
  }

MS = \notes \relative c' {
  <a c e>4-.^\p <a c e>-.
  <a c e>-. <a c e>-.
  
  <a c e> <a c e>
  <a c e> <a c e>
  \property Voice.TextScript \override #'extra-offset = #'(0 . 0.5) <a d f>^\crescendo <a d f>
  \property Voice.TextScript \revert #'extra-offset <a c e> <a c e>

  <g c e>_"1"_"3"_"5" <g c e>
  <g b f'> <g b f'>
  <g b f'> <g b f'>
  
  <c e>8 r e4
  <c e>4. r8
  
  \slurDown \property Voice.Slur \override #'attachment = #'(Stem . Stem) gis16^"3"-( a b a gis8-)-. r
  a16^"5"-( b c d e8-)-. r
  gis,16^"3"-( a b a gis8-)-. r
  a16^"5"-( b c d e8-)-. r
  
  cis16^"3"-( d e d cis8-)-. r
  \property Voice.Slur \revert #'attachment \clef treble d16_"5"-( e f g a8-)-. g-(
  f_"1"-[ e d dis-]
  e-[ d! c b-]
  
  \clef bass <a c e>4-) <a c e>
  <a c e> <a c e>
  \property Voice.TextScript \override #'extra-offset = #'(0 . 1) <a d f>^\crescendo <a d f>
  \property Voice.TextScript \revert #'extra-offset <a c e> <a c e>
  
  \property Voice.DynamicText \override #'extra-offset = #'(0 . 0.5) <a d e>^\p <a d e>
  <a c e> <a c e>
  <a d e> <a d e>
  
  <a c e> <a c e>
  <a c e> <a c e>
  
  \property Voice.TextScript \set #'extra-offset = #'(0 . 1.5) <a d f>^\crescendo <a d f>
  <a c e> <a c e>
  <a d f> <a d f>
  e16-( d c b a8-)-. r
  
  <a' e'>2_\fermata
  }

\score {\notes {
\context PianoStaff <<
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = \markup{\large "2. "}
  \context Staff = "up" <<
    \Global \clef treble
    \context Voice=VoiceI \MD
  >>
  \context Staff = "down" <<
    \property Staff.VoltaBracket = \turnOff
    \Global \clef bass
    \context Voice=VoiceI \MS
  >>
>>
}
\paper {}
\midi {\tempo 4=152}
}
