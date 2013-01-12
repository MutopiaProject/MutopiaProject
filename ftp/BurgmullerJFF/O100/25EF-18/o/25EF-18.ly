%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "Inquiétude"
  subtitle          = "Unruhe  *  Restlessness"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  piece             = "25 Etudes faciles"
  opus              = "Opus 100."
  meter             = "Allegro agitato"
  copyright         = "Public domain"
  mutopiatitle      = "Inquiétude"
  mutopiacomposer   = "J.F.F. Burgmüller (1806-1874)"
  mutopiainstrument = "Piano"
  date              = "19th century"
  source            = "Collection Litolff, 19th century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Apr/09"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/04/09-230"
}

Global = \notes {\key e\minor \time 2/4}
crescendo = #'(italic "cresc.")

tsUpII = \property Voice.TextScript \override #'extra-offset = #'( 0 . 2)
tsUpIh = \property Voice.TextScript \override #'extra-offset = #'( 0 . 1.5)
tsUpI = \property Voice.TextScript \override #'extra-offset = #'( 0 . 1)
tsUph = \property Voice.TextScript \override #'extra-offset = #'( 0 . 0.5)
tsZero = \property Voice.TextScript \revert #'extra-offset
tsDownI = \property Voice.TextScript \override #'extra-offset = #'( 0 . -1)
tsDownII = \property Voice.TextScript \override #'extra-offset = #'( 0 . -2)

VoiceI = \notes \relative c''' {
  \stemBoth \slurUp \tieBoth \scriptBoth r16 g^"3" ( fis ) e r e^"3" ( d ) c
  r b^"3" ( ais ) b r b ( c ) b
  r g' ( fis ) e r e ( d ) c
  r b ( ais ) b r b ( c ) b
  
  r b^"1" ( \tsUpI g'^"4" ) fis r b, ( g' ) fis
  r \tsZero b,^"1"_""_""_""_\crescendo ( \tsUpI fis'^"4" \tsZero ) e r b ( fis' ) e
  r d^"2" ( e ) d r cis^"2" ( d ) cis
  r b_"1" ( ais_"2" b_"1" ) b'8-|^"5" r

  \repeat volta 2 {
  
  r16 b^"3" ( a ) g r g^"3" ( fis ) e
  r d^"3" ( cis ) d r d( e ) d
  r b' ( a ) g r g ( fis ) e
  r d ( cis ) d r d ( e ) d
  
  r c^"1" ( b' ) a r c, ( b' ) a
  r b,^"1" ( a' ) g r b, ( a' ) g
  r b, ( g' ) fis r b, ( g' ) fis
  r b, ( fis' ) e r b ( fis' ) e
  
  r g^"3" ( fis ) e r e^"3" ( d ) c
  r b ( ais ) b r b ( c ) b
  r g' ( fis ) e r e ( d ) c
  r b ( ais ) b r b ( c ) b
  
  r b^"1"_""_""_""_\crescendo ( \tsUpI g'^"4" \tsZero ) fis r b, ( g' ) fis
  r b,^"1" ( \tsUpI fis'^"4" \tsZero ) e r b ( fis' ) e
  r b^"2" ( c ) b r fis^"2" ( g ) fis
  }
  
  \alternative {
    {r e ( dis e ) e'8-| r}
    {r16 e ( fis ) e r c ( d ) c}
  }
  
  r16 a,_"2" ( b ) a r b_"2" ( c ) b
  r e_"2" ( fis ) e r c_"2" ( d ) c
  r a_"2" ( b ) a r b ( c b
  ) e4 r16 b'^"2"_#'(italic "dim.") ( c b
  
  ) e8-| r r16 \property Voice.DynamicText \override #'extra-offset = #'(0 . -2) b'_\p ( c b
  ) e8-| r r4
  \bar "|."
  }

VoiceII = \notes \relative c {
  \stemBoth \slurBoth \tieBoth \scriptBoth <e8 g b-.^\p> r <e a c-.> r
  <e g b-.> r <e_#'(italic "simile") g b> r
  <e g b> r <e a c> r
  <e g b> r <e g b> r
  
  <dis a' b> r <dis a' b> r
  <e g b> r <e g b> r
  <fis b> r \scriptDown <fis4-> ( ais e'>
  <) b8 d> r b,-| r
  
  \scriptBoth <g' b d^\mf> r <g ais cis> r
  <g b d> r <g b d> r
  <g b d> r <g ais cis> r
  <g b d> r <g b d> r
  
  <fis c' d> r <fis c' d> r
  <g b d> r <g b d> r
  \clef treble <b^#'(italic "dim. e poco rall.") dis a'> r <b dis a'> r
  <e g> r <e g> r
  
  \clef bass <e, g b^\p> r <e a c> r
  <e g b> r <e g b> r
  < e g b> r <e a c> r
  <e g b> r <e g b> r
  
  <dis a' b> r <dis a' b> r
  <e g b> r <e g b> r
  <b dis a'> r <b dis a'> r
  
    <e g> r e,-| r
    <e' g> r c4_"2"^\f
  
  a4 b_"3"
  e^"1" c_"2"
  a_"4" b_"3"
  e r
  
  \scriptUp <e8 g b-|> r r4
  \scriptDown e,8-| r r4
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = #'(Large "18. ")
  \context Staff = "up" <
    \Global \clef treble
    \context Voice=VcI \VoiceI
  >
  \context Staff = "down" <
    \property Staff.VoltaBracket = \turnOff
    \Global \clef bass
    \context Voice=VcII \VoiceII
  >
>
}
\paper {}
\midi {\tempo 4=138}
}

