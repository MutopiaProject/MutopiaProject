\version "2.11.32"

%#(set-default-paper-size "letter")

\header {
	title = "Concerto in C for Flute and Harp"
	composer = "W. A. Mozart (1756-1791) "
	mutopiacomposer= "MozartWA"
	mutopiaopus = "K.299"
	mutopiainstrument = "Flute and Harp"
	source = "Breitkopf & Härtel (from complete works edition 1877-1883)"
	style = "Classical"
	copyright = "Public Domain"
	maintainer = "César Penagos"
	maintainerEmail = "penagos.cesar@gmail.com"
	
	
 footer = "Mutopia-2007/10/23-1026"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


\score{
      \relative c'' { 
      \time 4/4
	\set Staff.instrumentName="Flauto Solo"
	\set Staff.midiInstrument="flute"
	\key c \major
	\clef treble
	\tempo 4=120
	\once \override Score.MetronomeMark #' transparent = ##t
	
	

 c'4.^\markup{ \bold "[ I. Allegro ]"}\f g8 e c e g |
c4. g8 e c e g|
c4 r r2 |
\set Score.skipBars=##t 
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
	
\midi {}
\layout {}

}

      %%ANDANTINO
     
\score{
\relative c''{
	\time 3/4
	\key f \major
	\set Staff.midiInstrument ="flute"
	\set Score.skipBars=##t 
	\tempo 4=75
	\once \override Score.MetronomeMark #' transparent = ##t
	%pagina 34
                                R2.*12|
                                
	%pagina 35
                                a'8  \p r a r a r |
                                g4 ~\f ( g8. e16) f8-| r|
                                f2. \p |
                                bes4 ~ (bes8. c32 d c8) r |
                                a4. \f( bes16 c e d c bes) |
                                a8 (g4 a16 bes  d c bes a )|
	
	%pagina 36
                                g8 ( f4 g16 a bes c d bes )|
                                a4 ( g) r|
                                g4. (a16 g) c (b! a g ) |
                                g8. (a16) g4 r |
                                \grace{d16( } d'4) c16 b a g g8-. g-. |
                                g8. (e16) g4 r|
                                R2.|
                                r4 g8. (a16) g4 |
                                R2. |
	
	%pagina 37
                                r4 g8. (e16) g8-. g-. |
                                c4 b16 ( a g fis ) fis8-. fis-. |
                                a16(g) g4 b16 (d) c (a  g fis ) |
                                g8. \trill  fis32 g g,4 r|
                                R2.*3|
                                r4 f'! f'16 (  d b f) |
                                e4 e8. \trill d32 e  f8. \trill e32 f |
                                g8. (e16) c'4. g8|
	
	%pagina38
                                g16 (f) a-. f-.  g(e) g-. e-.  e (d) f-. d-. |
                                c4 r r |
                                R2.*2|
                                r4 f8( f'8)~f16 (d b f)|
                                e4 e8. \trill d32 e f8. \trill e32 f |
                                g8. (e16) g4 r |
                                e4 e8. \trill d32 e f8. \trill e32 f |
                                g16 (e) g-. g-. g4 r|
                                c8 (b! a g f e) |
                                d8. \grace{ e32 [ (d cis d) ]} e16 f8. \grace{g32 [(f e d)]} g16 
                                a8. \grace{b 32 [ (a g a)]} b!16|
                                
	%pagina 39
                                c16 [g] \grace{b!32} a16 g32 f e4 d \trill |
                                c4 r r |
                                R2.*2 |
                                c'2. \p (|
                                \textSpannerDown
                                \override TextSpanner #'edge-text = # ' ("cresc. " . "")
                                b!2.)\startTextSpan|
                                bes!2. (|
                                a2.) \stopTextSpan \f |
	
	%pagina 40
                                bes4 bes4.. \startTrillSpan a32 \stopTrillSpan bes |
                                a8 r a r a r |
                                g4\f~g8. (e16) f8-|  r|
                                    f2. \p |
                                bes4~bes8.(c32 d c8) r |
                                \grace{ a,16(} a'4.) \f bes16 ( c e d c bes )|
                                a8 (g4 a16 bes d c bes a) |
                                    g8 (f4) g16(a bes c d bes)|
                                    
	%pagina41
                                a4( g) r|
                                g4.(a16 g) c(b! a g)|
                                g8. (a16) g4 r|
                                \grace{d16( } d'4) c16(b a g ) g8-. g-. |
                                g8.( e16) g4 r|
                                R2.|
                                r4 c8. (d16) c4 |
                                R2.|
                                r4 c8. (a16) c8-. c-. |
                                c16( b!) b8~b16 (c d c b a g f)|
                                f(e a g)  g4  f'16 (e  c b!)|
                                
	%pagina42 #76
                                c8. \trill b32 c c,4 r |
                                R2.*3|
                                r4 bes!4 ~bes16 e(g bes) |
                                a4 a8. \trill g32 a bes8. a32 bes |
                                c8. (a16) f'4. c8 |
                                c16 bes d-| bes-. bes (a) c-. a-. a(g) bes-. g-.|
                                f4 r r |
                                R2.*2|
                                r4  bes4~bes16 (g e bes) |
                                
	%pagina 43 #88
                                a4~\times 2/3{a16 [c (bes]}\times 2/3 {a16[ bes c)] }\times 2/3 {bes16 [(d c ] }
                                \times 2/3 { bes16 c d) }|
                                c4 r r |
                                \tieDotted
                                \grace {a16(} a'4) ~  a16 a bes32 a g a bes16 bes c32 bes a bes |
                                c8. (a16) f4 r4 |
                                \grace{f32(}f'8) e( d c bes a) |
                                fis16 [(g) ] r g-| a [( bes) ] r bes-| cis [(d)] r d-| |
                                c!16. (a32) d32( bes d bes) a4 g \trill |
                                f4 r r |
                                R2.|
                                \tieSolid
                                
	%pagina 44 #97
                                f2(d'4) |
                                c,, f''8 c a f |
                                g2. \startTrillSpan |
                                 f4 \stopTrillSpan   r r |
                                R2.|
                                r4 f f' |
                                e \fermata  r8. f,16 g4 \trill |
                                f4 r r |
                                g4 \f ~g8.(e16 f8) r8|
                                r4 r r8 r16 f16 \p |
                                bes4 ~bes8. c32 (d c8) r8|
                                
	%pagina 45 #108
                                a4. \f (bes16 c  e d c bes) |
                                a8 (g4) a16 (bes) d( c bes a) |
                                
                                g8 (f4)  \slurDotted g16 ( a) 
                                \slurSolid
                                bes( c d bes) |
                                a8. (g16) g4. (a8) \p |
                                bes8. (c32 d)   f,4 \(\grace{a16(}g4) \) |
                                f8 f'16 ( e)	e (d) d (c) c (b d c) |
                                bes!8. (c32 d)  f,4 \( \grace{a16 (} g4) \)|
                                f8 [(a)]  a8. \trill  g32 a bes8. \trill a32 bes |
                                c4 r r |
                                r4 f,8 \pp r f r |
                                f4  r4 r4 
                                
	
                                \bar"|."
	
	%END ANDANTINO		
	
	
	
	
	}
	
	\header {
	piece= \markup{\bold " [II. Andantino]"}
	}
	\midi {}

	\layout  {}
}
      
      %RONDEU (ALLEGRO)
     
\score{
\relative c''{
   \time 2/2
	\override Score.MetronomeMark #'stencil = ##f
	
	\tempo 4 = 100 
	\set Staff.instrumentName="Flute"
	\set Staff.midiInstrument="flute"
	\key c \major
	\clef treble
	\relative c' { 	
 
 	\set Score.skipBars=##t 
 	\once \override TextScript # ' padding  = #2
 	\partial 2
 	r2|
 	\override BarNumber #'padding = #2 
 	R1*65^\markup{ \italic \bold "Allegro"}|
	
	%pagina 51 #66
                                 c'8 b c b c e g e|
                                 \grace{ d8 (} c4) c8 b c4 r|
                                
	%pagina 52 # 68
                                f8 e f e f a c a |
                                fis2 (g4) r|
                                c8 \trill b c d e c g e |
                                f d b' g d' b g f |
                                f(e) g-. e-. e (d) c-. b-.|
                                c-. d-. e-. f-. g-. a-. b-. c-. |
                                d-. c-. b-. a-. g-. f-. e-. d-. |
                                c-. e-. g-. e-.  e-. d-. c-. b-. |
                                c4 r r2 |
                                r1 |
                                r8 c( b c b c e c) |
                                \grace{ b2 (} a1) \trill |
	
	%page 53 #80
                                g4 c8 e  g( c) g-. e-. |
                                g2 (f) \trill|
                                e8 [g]  g8 \trill fis16 g  f!8 e d c |
                                \grace{b4(} a1) \trill |
                                g8 c e g c e c g |
                                \slurDashed
                                g2 ( f ) \trill |
                                \slurSolid
                                r8 [e] e \trill d16 e f8 [f] f \trill e16 f |
                                g8 [g] g \trill f16 g a8 [a]  a \trill g16 a |
                                b4 ( c) f, e |
                                g4. (e8)  d4 r |
                                d2. b8 c |
                                d4 d d d |
                                
	%pagina 54 #92
                                d4. (b'8) b2~|
                                b2 d,  |
                                c2. a8 b |
                                c4 c c c |
                                c4. (a'8) a2 ~|
                                a2 c,  |
                                b4 r r2 |
	
	%pagina 55 # 104(112)
                                R1*13 |
                                r4 g' g g | #'(2.1 . 0.4 ) 
                                a4.-\turn (b8)  g4 g |
                                a4. \turn (b8) g4 (c) |
                                b2 (a4) r |
                                
	%pagina 56 # 116 
                                r4 a a a |
                                b4.  \turn (c8) a4 a |
                                b4. \turn (c8) a4 (d) |
                                c2 (b4) r |
                                r8 d8 (cis d) c! (b a g) |
                                e'4. (c8) a4-|r |
                                 d4. (b8) g4-| r |
                                 fis4. (a8) c4-. r |
                                 r4 b b b|
                                 b c8 d e4 c8 b |
                                 a1 \startTrillSpan  \grace{g32 \stopTrillSpan [a](} |
                                 g4) r r2 | 
                                 
	%pagina 57 # 128
                                 R1*3 |
                                 r8 d'8 (cis d cis d cis d) |
                                 d,1~|
                                 d1~|
                                 d1 |
                                 r8 g (fis g fis g fis g) |
                                 g,2 d'' |
                                 e4 r4 a, c8 e |
                                 d4 r g,  b8 d |
                                 c4 r c, a8 d, |
                                 
	 %pagina 58 # 140
                                 g1 | 
                                 g'|
                                 d2 d, |
                                 g4 r r2 |
                                 r1 |
                                 r4 g8-. g-. fis ( a) c-. c-. |
                                 g8 (b) d-. d-.  a (d ) fis-. fis-. |
                                 g4 g,8-. g-. fis (a) c-. c-. |
                                 g (b) d-. d-.  a ( d ) fis-. fis-. |
                                 g4 r r2 |
                                R1*9 |
	 
	 %pagina 59 # 151 
                                 g2. a8 ( b |
                                 g4) a8 (b g4) a8 (b |
                                 g4) b d2 ~|
                                 d4 c8 b \grace{b 8 (} a4)  g8  a |
	 
	 %pagina 60 # 163
                              g2~g8 b (a b |
                              g b a b g b a b |
                              g4) b  d2 ~|
                              d4  c8 b \grace{b8(} a4) g8 a |
                              g4 r r2 |
                              r1 |
                              d\p ~|
                              d _\markup {\italic "cresc."}|
                              d' \f ~|
                              d |
                              g,, 4  r r2 | 
	
	%pagina 61 # 174
                            r1 |
                            \grace{ a'8 ( } g4) \p fis8 g fis g a g |
                            \grace{ g8 (} f!4) e8 f e f g f |
                            d \f (f e g f4) r4 |
                            d8 \p ( f e g f4) r |
                            d8 \f (f e g  f g e f) |
                            d8 \p (f e g f4) r |
                            r2 e4 \p e |
                            e2 \grace {g8 ( } f4) e8 f |
                            g8 (e) c4 c'4. b8|
                            \grace {b8 (} a4) g c4. b8 |
                            \grace{ b8 (} a4) g c, c |
                            
	%pagina 62 # 186 
                            c2 \grace{ e8 (} d4) c8 d |
                            e4 e4 \grace{ g8 (} f4) e8 f |
                            g4 g a8 (g) f-. e-. |
                            e4 (d) r2 |
                            R1*17|
	
	%pagina 63 # 198 
                            \grace{c16 (} c' 1 ) |
                            a2 f |
                            c2. (f4) |
	
	%pagina 64 #210 
                            e4 (d) \trill c2 |
                            r8 f (e f e f g a-|) |
                            fis2 g ~|
                            g8 a (bes a c bes a g) |
                            f!8 \acciaccatura {g16} f ([e] f8 )g-| a \grace{ bes16 (} a16) ([g] a8) bes!-||
                            c,8 (c') c-. c-. c-. c-. c-. c-. |
                            a, (a' ) a-. a-.  f, (f') f-. f-. |
                            c4 c~c8 d (e f) |
                            e4 (d) \trill c2 |
                            r8 c'8 (b! c d c bes a )|
                            fis (g) cis (d) a (bes) fis (g) |
        
        %pagina 65 # 221
                            f!2 g2 \trill |
                            \grace{f32 [(g32)]} f4 r r2 |
                            R1|
                            c'1~|
                            c1~|
                            c1|
                            c4. ( a8) f4-. r|
                            R1*6|
	
	%page 66 # 234
                            g,1~|
                            g1|
                            d''8 c b a g f e d |
                            c d e f  g a b c |
                            b a gis  f e d c b |
                            a b c d  e f gis a |
                            g!8 f e d  d bes a g |
                            f4 r r2 |
                            R1|
                            b!8 g a b  c d e fis |
                            g fis g fis  g fis g fis |
                            g1~|
	
	%pagina 67 #246
                            g1~|
                            g1~|
                            g1~|
                            g4  r8 g fis (g fis g) |
                            c4 (bes aes g) |
                            g4. (fis8) fis2~|
                            fis4 ees d c |
                            b8 (d ) g-. g-. g2~|
                            g4 b!8-. d-. c (b) a!-. g-. |
                            g4 (fis) ees'2 ~|
                            ees4 c (ees fis, ) |
                            g4 r c (fis,) |
                            
	%pagina 68 # 258 
                            g4 r c (fis,) |
                            g4 r g r |
                            g8 ( fis g fis g fis g fis) |
                            g2. e8 f! |
                            g4 g g g |
                            g4. (e'8) e2~|
                            e2 g, |
                            f2. d8 e |
                            f4 f f f |
                            f4. (d'8) d2 ~|
                            d f, |
                            e4 r r2 | 
                            
	%pagina 69 # 270 
                            R1*13|
                            r4 c c c |
                            d4. (\turn e8) c4 c |
                            d4. (\turn e8) c4 (f) |
                            e2 (d4) r|
                            r4 d d d |
                            e4. ( \turn f8 ) d4 d |
                            e4. ( \turn f8 ) d4 (g)|
                            f2 (e4) r |
                            r8 g8 (fis g) f! (e d c)|
                            a'4. (f8) d4-.  r |
                            g4. (e8) c4-. r |
                            b4. (d8) f4-. r |
                            r4 e4 e e |
                            e4 f8 g a4 f8 e |
                            d1\startTrillSpan \grace{ c32 \stopTrillSpan [(d)]} |
                            
	%pagina48 Bäreiheiter
                            c4 r r2 |
                            R1*3|
                            r8 g' (fis g)  fis (g fis g) |
                            g,1~|
                            g1~|
                            g1|
                            r8 c' (b c)  b (c b c) |
                            e,,2 g' |
                            a4 r d8 cis d b |
                            g4 r c!8 b c a |
                            f4. e8 d c d b |
                            c1 ~|
                            c4 c' c c |
                            g2 g, |
                            c4 r r2 | 
                            R1*5|
                            
	%pagina 49 
                            g'1 \startTrillSpan ~|
                            g1\stopTrillSpan  |
                            g4 r r2 |
                            r2 g4 (f) |
                            R1 |
                            r2 c4 (b)|
                            R1*3 |
                            r4 g'2 b8. \trill a32 b |
                            c1~|
                            c1 ~| 
                            c1 ~|
                            c1~|
                            c8  (g) g2 f8 e |
                            e8 (d) c2 (b4) |
                            c4 r r2 |
                            R1|
                            r4 c8-. c-. b8 (c) f-. f-. |
                            c(e) g-. g-.  d (g) b-. b-. |
                            c4 c,8-. c-. b (c) f-. f-. |
                            c (e) g-. g-.  d (g) b-. b-. |
                            c4 r r2 |
                            R1*9|
                            c,4 c'2 b8 a |
                            \acciaccatura {a8} g4 f8 e \acciaccatura{e8} d4 c8 b |
                            c4 c'2 b8 a |
                            \acciaccatura{a8} g4 f8 e \acciaccatura{e8} d4 c8 b |
                            c4 r r2 | R1*3 |
                            c'2 \fermata b \startTrillSpan |
                            c4 \stopTrillSpan  r4 r2 |
                            R1*6|
                            c,2 b |
                            c4 g8 e c4 r |
                            c'8 b c b  c4 r |
                            c'8 b c b c4 r |
                            g1~|
                            g2 b, |
                            c4 e f8 e d c |
                            c4 (b) e e |
                            e2 \acciaccatura{g8} f4 e8 f |
                            g8 (e ) c4  c'4. b8 |
                            \acciaccatura{b8} a4 g c4. b8|
                            \acciaccatura{b8} a4 g c, c |
                            c2 \acciaccatura {e8} d4 c8 d |
                            e4 e \acciaccatura{g8} f4 e8 f |
                            g8 e g e g( f) e-. d-. |
                            c4 r r2 | R1 |
                            g'1 \startTrillSpan ~|
                            g1 ~|
                            g1 \stopTrillSpan|
                            g4. e8  c'4  r |
                            R1*4 |
                            \bar "|."
                            
    % END RONDEU
                            }
                }

\header{
      piece = \markup{\bold " [III. RONDEU]"}
      
                              }
\midi {}

\layout  {}
                            
} 
      
\paper{}
