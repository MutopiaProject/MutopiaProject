\version "2.11.43"
#(set-global-staff-size 22)
\include "Misdefiniciones.ly"
#(ly:set-option 'point-and-click #f)

\header{
title= "Concerto in C for Flute and Harp"
composer = " W.A Mozart"
opus = "K.299"
instrument = " "
piece = \markup {\large  \bold "[ I. Allegro] "}

 copyright = "Public Domain"
 maintainer = "César Penagos"
 footer = "Mutopia-2008/06/01-1026"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


flautoNotes= 
      \relative c'' { 
      \time 4/4
	\set Staff.instrumentName="Flauto Solo"
	\set Staff.midiInstrument="flute"
	\key c \major
	\clef treble
	\set Score.skipBars = ##t

 c'4.^\markup{ \bold " Allegro "}\f g8 e c e g |
c4. g8 e c e g|
c4 r r2 |
R1*40

%page 4

      c4. \f g8 e c e g|
      c4. g8 e c e g|
      c4 c,4 \p( b c) |
      d-. \f  d \p (cis  d)|
      e-. \f e \p (dis e )|
      f_\markup{\italic "cresc."} (g a b)|
      c1 \f |
      g1|
      c,1|
      g|
      c8 d16 e f g a b c b c b c b a g|

      %page 5
      a16 c, d e f g a b c b c b  d16 c b16 a|
      g c,d e f g a b c d e d c b a g|
      g (f a f) e2 d4 \trill |
      c4 r r2 |
      R1*3 |
      c8(e'4) d8 a,8 (c'4) b8|
      f,8 (a'4) g8 f-. e-. d-. c-.|
      g' 1(|

      %pagina 6

      g8) g-. a-. b-. c-. d-. e-. fis-. |
      g4 r r2|
      r1|
      \grace{d,16} d'2 b8 \grace{c 32} b16 a b8 c-.|
      e8( d) d2 \grace {c16} b8 a16 g |
      g8(e')  e2. |
      d4 g,4 a4. (b16 c)|
      b4 r r2 |
      d,2( d8) e16 d c b a g |
      g8(e') e4. g8 (fis e) |
      \grace {e16} d4 (c16 b a g) a4.(b16 c)|

      % pagina 7

      b16 d e fis g a b c d8 d4 c16 b|
      b8(a) a4. b16 a a g fis g |
      fis4 r r2 |
      r2 r4 r8 d, |
      d''4(b8) r  b4(g8) r|
      g4(d8) r b4(g8) r |
      d4 r4 r2 |
      r4 d4~d16 d'-. e-. fis-. g-. a-. b-. c-. |
      d4(b8) r b4(g8) r |
      g4 (d8) r b4 (g8) r |

      %página 8
      d4 r r2 |
      R1*2 |
      g'1|
      d1|
      g,4 r d'8-. e-. fis-. g-. |
      g8( fis e d) d16 c b c e8 c|
      \acciaccatura {ais 16} b4  r8 b16-. c-. d8-. e-. fis-. g-. |
      g8 (fis e d) d16 c b c  e8 d |
      b8 g' 4(f e d8~) |
      d8  c4 ( g' f e8)~|
      e8  d4( g f dis8)|
      e32 (fis g8.) g8-. g-. g4 r4 |
      e32 (fis g8.) g8-. g-. g4 r4 |

      %página 9 

      a,2 c'2 |
      g,2 b'2 |
      a16 b a gis a8 c b-. a-. g!-. fis-. |
      g8-. a-. b-. c-. d4-. r|
      a,8 c'16 d e d c b a gis a g! fis e d c|
      b8 b'16 c d c b a g fis g fis e d c b|
      a4. (c'8) b-. a-. g-. fis-. |
      g4 r \grace{c16} b8  a16 b \grace{d16} c8 b16 c |
      d8 (b)  g-. g-.\grace{c16} b8 a16 b \grace{d16} c8 b16 c |
      d8 (b)  g-. g-.\grace{c16} b8 a16 b \grace{d16} c8 b16 c |

      %pagina 10

      d8-. d16(e) c8-. c16(d) b8-. b16(c) a8-. a16(b)|
      g16 d e fis g a b c d2~|
      d1~|
      d1~|
      d1~|
      d4 b, c e'|
      d8 b4( g8) c a4 (fis8) |
      d'16 c b a g fis e d e fis g a b c d e |
      \times 2/3 {d,8 g g} \times 2/3{d g b } d4 \grace {c 16} b8 a16 g|
      a1 \trill  |

      %pagina 11

      g4  r r2|
      R1*12|
      e4. (f16 e b4.) d8|
      c8-. e-. a-. c-. e4.-. e8|

      %pagina 12
      e8(gis,8) gis4. e'8(dis e)|
      e(a,) a4. c8 (gis-. a)|
      \grace{g!16} f8 e16 f  g f e d c4 b \trill |
      a8 c' b, d' c, e'  \grace {d16} c8 b16 a |
      gis16 a gis a \grace{g!16} f8 e16 d c4 b \trill |
      a4 r r2 |
      R1*2|
      a'4. (bes16 a e4.) g8|
      f16 a (gis a gis a gis a gis a gis a) g!f e d |
      d8 (cis) cis4. (bes'8 a c,)|
      d8 e16 f g a b! cis  d8 d d d |
      e,4  \grace{a16} g8 f16 e  d4 cis|
      d,8 f' e, g' f, [a' ]  \grace{g16} f8 e16 d|

      %pagina 13
      g,8 d' '\grace { c 16} bes8 a16 g f4 e \trill |
      d2 d,2 ~|
      d2 _\markup{\italic "cresc."} des2 |
      c1 \f|
      r8 a''-. \p a-. a-. \grace{b!16} a8 gis16 a \grace {b16} a8 gis16 a|
      gis8-._\markup{\italic "cresc."}  gis-. gis-. gis-. gis16 a b a gis a b a |
      gis8  d'-. \f d-. d-.  d16 cis d cis d b a gis |
      a2 a,2~\p|
      a2_\markup{\italic "cresc."} aes2 |
      g! 1 \f ~|
       
      %pagina 14
      g1 \p|
      \grace {g16} g'1\f ~|
      g1 \p |
      r16 g ( fis g aes g fis g) f!( ees d ees d c b c)|
      b-. g' ( fis g aes g fis g) f!( ees d ees ) d( c b c)|
      b4 r \grace{c16(} c'4.) \fp ( ees,8) |
      d4 r \grace{ c16 ( } c'4.) \fp  (ees,8) |
      d2 \trill \acciaccatura{c16 [d] } e!2 \trill \acciaccatura{d16[e] _\markup{\italic "cresc."}}|
      f!2 \trill  \acciaccatura { e16[f] }g2 \trill \acciaccatura{f16  [g]}|
      a2 \trill \acciaccatura{ g 16 [a]} b2 \trill  \f \acciaccatura{a16 [b] } |
      c4 r r2 |

      %pagina 15
      R1*5 |
      r4 c,8 \p (c') b,( b') c, (c') |
      d4 \f d,8 \p (d') cis, (cis') d, (d') 
      e4 \f e,,8 \p (c') dis, (dis') e, (e')|
      f,-._\markup{\italic "cresc."} f'-. g,-. g'-.  a,-. a'-. b,-. b'-. |
      c1 \f|
      g1 |
      c,1| 
      g1|


      %pagina 16
      c8 (e'4) d8 a,(c'4) b8|
      f,8(a'4) g8 f-. e-. d-. c-. |
      g'1~|
      g8 g-. a-. b-. c-. d-. e-. fis-. |
      g4 r r2|
      r1|
      \grace{g,,16} g'2 e8 \grace{ f!32} e16( d  e8) f-. |
      a8(g) g2 \grace {f16} e8 d16 c|
      c8(a') a4. (b16 c b8) a-. |
      g4 c,  d4.( e16 f) |
      e4 r r2 |
      g2~g8 a16 g f e d c |

      % pagina 17
      c8 d16 e f g a b c b c b \grace{d16} c8 b16 a|
      g4 c d4. (e16 f) |
      e c g e  c e g c e8 c, b d' |
      c16 a e c a c e a c8 a, g bes' |
      a16 f c a f a c f a8 f, e g' |
      \grace{g16} f8 e16 f \grace {f16} e8 d16 e \grace{e16} d8 cis16 d \grace {d16} c!8 b16 c|
      b4 r r2 |
      r2 r4 r8 g8 |
      e'' 4(c8) r8 c4(g8) r8|
      g4 (e8) r e4 (c8) r |

      %pagina 18
      g4 r r2 |
      g8 a16 b c d e f  g a b c d8 d |
      e4 (c8) r8 c4 ( g8) r8|
      g4 (e8) r e4 (c8) r |
      g'4 r r2 |
      R1*2 |
      c1 |
      g| 
      c,4 r g'8-. a-. b-. c-. |
      c8 (b a g) \grace{g16} f8 e16 f a8 f |
      \grace{dis 16} e4 r8 e16-. f-. g8-. a-. b-. c-. |
      c( b a g ) \grace{g16} f8 e16 f a8 f|

      %pagina 19
      e8 c'4 ( bes a g8)~|
      g f4( c'4 bes a8) ~|
      a  g4 (c4 bes gis8)|
      a32( b! c8.)  c8-. c-. c4 r|
      a32 (b c8.) c8-. c-. c4 r|
      d,2 f'|
      c, e' |
      d,8 \grace{ g32} f16 e f8 a g-. f-. e-. d-. |
      c-. d-. e-. f-. g4 r4 |
      d8 d'16 e f e d c b c d c b a g f |
      e8 e'16 dis e d! c b a b c b a g f e |
      d4.( f'8) e8-. d-. c-. b-. |

      %pagina 20

      c4 r f,16 e d e g f e f |
      g8(c) g-. g-. f16 e d e g f e f|
      g8(c) g-. g-. f16 e d e g f e f|
      g8-. g16(a) f8-. f16(g) e8-. e16 (f) d8-. d16(e)|
      c16 g a b c d e f g2~|
      g1~|
      g1|
      g'4 f e d |
      c4 e,, f a' |
      g8 e4(c8) f8 d4 (b8)|

      %pagina 21
      c'16 b a g   f e d c   a'g f e  d c b a |
      g4.  a16 b  c d e f  g a b c  |
      d1 \trill  |
      c4   r4 r2 |
      R1*6|
      c4. \fermata a8 b2 \trill |
      c4 r r2 |
      
      %pagina 22
      R1*10|
      c1~|
      c1~|
      c4 c c c |
      c4 r r2|
      
\bar "|."

% END ALLEGRO
	}
\score{
          \new Staff =
          flauto \flautoNotes
          
          \layout{}
          }
          \paper{
           
                  between-system-padding = 5\mm
                 print-page-number = ##t
                 line-width=180\mm
                 ragged-last-bottom = ##t
                 }
