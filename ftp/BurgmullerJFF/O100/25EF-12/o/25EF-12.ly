%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "L'Adieu"
  subtitle          = "Abschied  *  Farewell"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  piece             = "25 Etudes faciles"
  opus              = "Opus 100."
  meter             = "Allegro molto agitato"
  copyright         = "Public domain"
  mutopiatitle      = "L'Adieu"
  mutopiacomposer   = "J.F.F. Burgmüller (1806-1874)"
  mutopiainstrument = "Piano"
  date              = "19th century"
  source            = "Collection Litolff, 19th century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Mar/31"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/03/31-223"
}

Global = \notes {\key c\major \time 4/4 \partial 8*3}
Treble = \clef treble
Bass = \clef bass
tsDownIIh = \property Voice.TextScript \override #'extra-offset = #'(0 . -2.5)
tsDownII = \property Voice.TextScript \override #'extra-offset = #'(0 . -2)
tsZero = \property Voice.TextScript \revert #'extra-offset 
tsUph = \property Voice.TextScript \override #'extra-offset = #'(0 . 0.5)
tsUpI = \property Voice.TextScript \override #'extra-offset = #'(0 . 1)
tsUpIh = \property Voice.TextScript \override #'extra-offset = #'(0 . 1.5)
tsUpIIh = \property Voice.TextScript \override #'extra-offset = #'(0 . 2.5)
tsDownOd = \property Voice.TextScript \override #'extra-offset = #'(0 . -0.3)

dtUpII = \property Voice.DynamicText \override #'extra-offset = #'(0 . 2)
dtUpI = \property Voice.DynamicText \override #'extra-offset = #'(0 . 1)
dtZero = \property Voice.DynamicText \revert #'extra-offset
dtDownI = \property Voice.DynamicText \override #'extra-offset = #'(0 . -1)
dtDownII = \property Voice.DynamicText \override #'extra-offset = #'(0 . -2)

crescendo = #'(italic "cresc.")

VoiceI = \notes \relative c'' {
  \stemBoth \slurBoth e8^"2" ( f ) e
  
  e4^"3" () d r8 d^"2" ( \grace f e ) d
  d4^"3" () c r8 e^"3"\cr ( dis e^"1"\rc
  \property Voice.TextScript \override #'extra-offset = #'(-1.5 . -1.5) d'4.^"5"_\sf\decr \tsZero c8\rced b a^"1" gis^"3" f
  \tsDownII e_#'(italic "dim. e rall.") \tsZero d^"3" c b ais^"2" b^"1" e^"5" d
  
  \property Voice.tupletSpannerDuration = #(make-moment 1 4) \tsUph \times 2/3 {) c8^#'(italic "a tempo") ( \tsZero a c
    \property Voice.TupletBracket \override #'tuplet-number-visibility = ##f
    \property Voice.TupletBracket \override #'tuplet-bracket-visibility = ##f
    \scriptDown \tsUpI d->^"4" \tsZero e d c d c b c d
  ) e ( c a d-> e d c d c b c d
  ) e ( c a \tsDownIIh f'_\crescendo \tsZero d a e' c a dis c a
  ) e' ( a, b c b a ) e' ( b c d c b
 
  ) c a ( c d-> e d c d c b c d
  ) e ( d a d-> e d c d c b c d
  ) e ( c a \tsDownIIh g'_\crescendo \tsZero e a, f' d a a' fis c
  ) a'^"5" ( e^"2" c^"1" e^"3" dis e ^"1" a^"3" gis a^"1" \tsDownOd c^"3" b c^"3"}
  
  \tsZero \dtDownII ) e8_\f \dtZero r e,,4 ( c' b
  ) a8 r \times 2/3 {f'8^"4"_\sf ( e ) d d^"4" ( c ) b b^"4" ( a gis}
  ) a8^"1" r \times 2/3 {f'8_\sf ( e ) d d ( c ) b b ( a gis
  ) a^"1" c^"3" ( b a c^"2" e^"3"} ) a4 r
  \bar "||"
  
  g4^"2" ( e^"1" \tsUpI c'^"4" \tsZero \tsUpIh a^"2" \tsZero
  \property Voice.Hairpin \override #'extra-offset = #'(0 . -1) g\cr e'\rc\decr c \tsUph ) g^"1"\rced
  \tsZero g^"3"\decr () f\rced f^"3"\decr () e\rced
  d ( g f ) d^"1"
  
  \property Voice.TextScript \override #'extra-offset = #'(-0.5 . -0.5) g^"2" ( \tsZero e^"1" c'^"4" a^"2"
  g\cr \tsUpI \dtDownI g'^"5"\rc_\sf\decr \tsZero \tsUpIh \dtZero e^"4" \property Voice.TextScript \set #'extra-offset = #'(1 . -0.3) ) c^"2"\rced
  \tsZero b^"1" ( \tsUpI \property Voice.Hairpin \revert #'extra-offset as^"3"\decr \tsZero \tsDownOd f^"2"\rced \tsZero \tsUpIh d^"1"
  \tsZero ) c^"2" () e^"4" e^"5" ( d
  
  \times 2/3 {) c8^#'(italic "a tempo") a ( c d-> e d c d c b c d
  ) e ( c a d-> e d c d c b c d
  ) e ( c a \tsDownIIh f'_\crescendo \tsZero d a e' c a dis c a
  ) e' ( a, b c b a ) e' ( b c d c b
  
  ) c a ( c d-> e d c d c b c d
  ) e ( c a d-> e d c d c b c d
  ) e ( c a \tsDownIIh g'_\crescendo \tsZero e a, f' d a a' fis c
  ) a'^"5" ( e^"2" c^"1" e^"3" dis e^"1" a^"3" gis a^"1" \tsDownOd c^"3" b c^"3"}
  
  \tsZero \dtDownII \property Voice.Hairpin \override #'extra-offset = #'(0 . 1) ) e8_\f r e,,4\cr ( c'\rc\decr b\rced
  \dtZero ) a8 r  \times 2/3 {f'8^"4"_\sf ( e ) d  d^"4" ( c ) b b^"4" ( a gis}
  ) a8^"1" r \times 2/3 {f'8_\sf ( e ) d d ( c ) b b ( a gis
  ) a^"1" c^"3" ( b a c^"2" e^"3"} ) a4 r
  
  \scriptUp \times 2/3 {a8^"3" ( c b a c^"2" e^"3"} ) a4-. r
  \times 2/3 {a,,8 ( c b a c^"2" e^"3"} ) a4-. r
  \times 2/3 {a8 ( c b a c^"2" e^"3"} ) a4-. r
  a,, r <c_\f a'-.> r
  
  <c,2 a'-^> r
  \bar "|."
  }

VoiceII = \notes \relative c' {
  \stemBoth \slurBoth \dtUpII r8^\p r4
  
  \Treble r8 <f a> <f a> <f a> <f a> r r4
  r8 <e a> <e a> <e a> <e a> r r4
  \Bass <e,2. gis b d> r4
  r1
  
  a4^\p \Treble f' e d
  c f e d
  c d e f
  e r \Bass <e,2 ( gis d'>
  
  <) a8 c> r \Treble f'4 e d
  c f e d
  c_"4" cis d_"1" dis_"2"
  e2 r
  
  \property Voice.tupletSpannerDuration = #(make-moment 1 4)
    \property Voice.TupletBracket \override #'tuplet-number-visibility = ##f
    \property Voice.TupletBracket \override #'tuplet-bracket-visibility = ##f
    \Bass \times 2/3 {e,8 ( a c e,\cr a c\rc e,\decr gis d' e,\rced gis d'}
  <) a8_"2"_"4" c> r <a2 d f> <a4 d f>
  <a8 c e> r <a2 d f> <a4 d f>
  <a c e> r a, r
  
  \Treble \dtZero \dtDownI \property Voice.TextScript \override #'extra-offset = #'(1.5 . 2.5) \times 2/3 {c'8^\p^#'(italic "espressivo") ( \tsZero e g c, e g c, f a c, f a
  c, e g c, e g c, e g c, e ) g
  b, ( d g b, d g c, e g c, e g
  g, b d g, b d g, b d g, b ) d
   
  c (e g c, e g c, f a c, f a
  c, e g c, e g c, e g c, e ) g
  c, ( f as c, f as c, f as c, f as
  \tsUpIIh c,^#'(italic "dim. e poco rit.") \tsZero e g c, e g b, e gis b, e gis}
  
  \dtUpII ) a,4^\p \dtZero f' e d
  c f e d
  c d e f
  e r \Bass <e,2 ( gis d'>
  
  <) a8 c> r \Treble f'4 e d
  c f e d
  c_"4" cis d_"1" dis_"2"
  e2 r
  
  \Bass \times 2/3 {e,8 ( a c e, a c e, gis d' e, gis d'}
  <) a8_"2"_"4" c> r <a2 d f> <a4 d f>
  <a8 c e> r <a2 d f> <a4 d f>
  <a c e> r r \slurDown <d_"1"_"2" ( f->>
  
  \dtUpI <c2._"1"_"3" e^\p> <b4 d>
  <) a2._"3"_"5" c> <d4_"1"_"2" ( f->>
  <c2._"1"_"3" e> <b4 d>
  <) a c> r <a e'> r 
  <a,2-^ e'> r
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = #'(Large "12. ")
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
\midi {\tempo 4=184}
}

