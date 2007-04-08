\version "2.6.0"

% Updated to LilyPond 2.6 syntax by Chris Sawer, January 2006

\header {
	title = "Morceau de concert"
	subtitle = "Pour cor"
	composer = "C. Saint-Saens"
	opus = "Op. 94"
	source = "D.&F.4605"
	
	mutopiatitle = "Morceau de Concert pour cor"
	mutopiacomposer= "Saint-SaensC"
	mutopiainstrument = "Horn"
	mutopiaopus = "O94"
	style = "Romantic"
	copyright = "Public Domain"
	
	enteredby = "hwn"
	maintainer = "Han-Wen Nienhuys"
	maintainerEmail = "hanwen@cs.uu.nl"
	maintainerWeb = "http://www.cs.uu.nl/~hanwen/"	
	
	lastupdated = "2006/Jan/02"
	footer = "Mutopia-2006/01/02-27"
	tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

adagio =  \relative c'' {
  \tempo 4 = 60
    r16^"Adagio"\p bes( c bes a bes d c  bes2) |
    r16\pp bes( c bes a bes d c  bes2) |
    r16\p \< bes( es d c bes as g c2)\! \>    |
    r16 c( f c  bes as g f  bes2)\! |
    r4_\markup { \italic "espressivo" }
          es,( f des' c as8 bes ces4 bes8 as |
     g4)
    \once \override TextScript #'padding = #2.5
    es4\pp^"sons bouchés"(  f des' c as8 bes ces4 bes8 as |
    % in the original, sons bouchés is accompanied by a bracket.
     g4) r4 r2 |
    r16 bes,(^"ouvert"\p \< c bes a bes d  c\! \>  bes2\!) |
    r16 bes(\p \< c bes a bes d  c\! \>  bes2\!)
    r16 bes( as' g f es d c  bes8) as-> g-> f->
    e4->\f des''4.-> g,16( as bes8 as16 g |
    des'4->  c4.) f,16(_\markup { \italic "dim." } g as8 g16 f
    c'8\p  bes4) es,8( bes'  as4) es8
    g8([ bes, c  es)] g4( f) |
    \mark \default
    es4 r r8 d'([_\markup { \italic "cresc." } es f]
    b,4-> c4) r8 es8([ f g] |
    cis,4->  d4) r2 |
    r2
    \clef bass
    e,,2
    f4.( \<  es8) d2
    es4( \! \mf d c d8  es)
    bes1( \>
     es4) \! r4 r2
    R1*1
    r4
    \clef treble
     es'4\pp( bes' g as4. g8 f[ as bes ces] |
     bes4) r
    d,8([ f g as]  g4) r as8([ f d ces]
     bes4) r \clef bass g2 es1^\fermata
    r1^\fermata
    \bar "||"
    \time 2/2
    \mark \default
    R1 * 16
    \mark \default
    \bar "||"
}

themeAndVarations =  \relative c' {
  \key  c \minor
  \time 3/4
  \tempo 4 = 100
  R2.*4
  g'8.^"Allegro Moderato"\f c16 es8. d16 c8. bes32 as g8. c,16
  es4 r8 es-> |
  d[-> es-> f-> g-> as-> c-> ]
  b4-> g-> r
  es8-. c-. g'2->
  as8-. f-. c'2-> |
  es4->( d->  c)->
  g2.
  g8.\f c16 es8. d16 c8. bes32 as
  g8. c,16 
  es4 r8 es-> |
   d[-> es-> f-> g-> as-> c-> ]
  b4-> g-> r

  g8[( e c g' c  bes])
  a[( d c b]  c4)
  es8-> d-> c4-> b->
  c2.
  R2.*4
  \mark \default
  
  bes8[ c16 d]  es8[ es ~ es es]
  es4( d2)
  g,8[ as16 bes]  c8[ c~c c] |
  c4( bes2)
  bes8[(\p g es bes c d])
  es[( f g as bes c])
  <<  des2.(
     { s4. \<  s4\! \>  s8\! }
  >> 
   c8) b8->( c2)|
  r8 b-> ( c2)
  r8 c4 c d8
  b4 r g4-\markup { \italic "cresc." } ~
  g as a ~
  a bes b
  c8.-^ g16 es'8.-^ d16 c8.-^ bes32 as
  g8. c,16 es4 r8 es-> |
   d[-> es-> f-> g-> as-> c-> ]
  b4-> g-> r
  es8-. c-. g'2->
  as8-. f-. c'2-> |
  es4(-> d->  c)->
  g2. |
  R2. * 11
  \mark \default

  \times 2/3 { 
    g8(\p c) es  es( d) c
    \override TupletBracket #'transparent = ##t
    c( bes) as  as( g) c, } es4
  r8 c |
  \times 2/3 { d\( ( f) es\)  d\( ( f) g\)  as\( ( d) c\) }
  b4( g) r
  
  \times 2/3  { es8( c es) }  g2
  \times 2/3 { as8( f as) } c2
  \times 2/3 { es8( c es)   d( b d) c( a c) }
  g2 r4
  \times 2/3 { 
    g8\f( c es)
    \acciaccatura { f16 } es8 d( c) 
    \acciaccatura { d16 } c8 bes( as) 
    \acciaccatura { bes16 } as8 g( es)
  } c4. c8 |

  \times 2/3 { f,8( as c  f as c  es d c)  }
  b4( g) r
  \times 2/3 { g8( e c g c e g c bes)
  a( d c  b a b }  c4)
  \times 2/3 { c8( es d) } c4 b
  c2 r4 |
  \times 2/3 { bes8\p( c d }  es) es4 es8
  \times 2/3 { es8( d c }  d2) |
  \times 2/3 { g,8 ( as bes } c8) c4 c8
  \times 2/3 { c8( f, c' }  bes2)
  \times 2/3 { bes8( g es   bes g as  bes c d  
  es8 f g as bes c d es bes)   }
  des2.-> (
  \times 2/3 { c8) b[->( c]) } c2
  \times 2/3 { r8 b[->( c]) } c2
  \times 2/3 { es8( c es)  d( b d)  c( a c)}
  g2.
  R2. \bar "||"
  \mark \default
  R2.*10
  \override TupletBracket #'transparent = ##f
  
  \relative c' {
    c16\f( es) g c es8-> d16 c bes( c) bes as
    g( as) g es c4 r8 c16 c d8 es16 es f8 g16 g as8 c16 c
    b4-> g-> r |
    es16( c) g'-. g-. g2->
    as16( f) c'-. c-. c2->
    es8-> c16 es d8-> b16 d c8-> a16 c
    g2.->
    c,16 es g c es8-> f16 es d c bes as
    g c g es c4 r8 c
    d16 es f g as8 f'-> d-> c ->
    b4-> g-> r |
    c,8 e16 g c8-. c,-. c'-. bes-.
    a8 d4-> c16 b c4
    c16 f es d c4->  b-> |
    c->  r r |
    es,8 f16 g as bes c d es8-. es-.
    es4( d2) |
    c,8 d16 es f g as bes c8-. c-. | 
    c4( bes2) |
    bes8 bes,4-> bes8-> ~ bes c16 d
    es d es f g f g as bes as bes c
    des2.
    c8-. b16->( c) c2
    r8 b16->( c) c2
    es8( f16 es)  d8( es16 d)  c8( d16 c)
    g2.
  }
  R2.
  
  \mark \default
  \bar "||"
  R2. * 14
  
  \mark \default
  \time 4/4
}


finale =  \relative c'' {
    \repeat unfold 2
      \relative c {
      \clef bass
       c4\p \< (  g' \clef treble c e g c  d e  \! f1)\f \> ~
       << f1 {s2. \! s4 } >> 
       e4 ( c g e' es!1)-> ~ es4( des es f c2 b4) r |
    }
  \mark \default
  r2 g2( a c b4 f'2-> d4-> ~ d a2-> g4) |
  g2 a4( b8 c)
  g2.( f4 e) r
  g2( a c b4 f'2-> d4-> ~ d a2-> g4)
  g2 a4( b8 c) |
  \mark \default
  c2( b4 bes |
  a) r4 r2 |
  r4 d,8-. fis-. a-.[ d-. fis a-.] g4 r r2
  r4 c,,8-. e-. g-.[ c-. e-. g-.] f4 r r2
  r4 c4( ~ c8[ d16 e] f[ g a b]
  c4) g8-. e-. c-.[ g-. e-. c-.] |
  g4 r c'2 \> ~
  c8\p([ \! a b c] b[ d gis, b)]
  a([ \< c b a] b[ d c b)] \!
  g'4->\mf ( e-> c-> g)->
  b( a b c)
  \mark \default
  c2->( g4) r
  \slurUp
  r g->( \< g-> g->) \!
  \slurNeutral
  g'1-^( g,4) r r2 

  r4 \times 2/3 { c,8\f( e g)  c( d) c  b( c) b |
    \override TupletBracket #'transparent = ##t
    a( b) a g( a) g f( g) f e( f) e |
    d( fis) a c( b) a }  d2
  \times 2/3 { g,8( b) d f( e) d } g2
  r4 \times 2/3 { e,8 g c  e( f) e d( e) d |
    c( d) c b( c) b a( b) a g( a) g |
    fis( a) c d( fis) a } c2
  \times 2/3 { 
    f,,8 ( g) b d( f) g } b2
  \mark \default
  \times 2/3 { g,8 ( c) c  c( b) b b( d) d d( c) c |
    c( e) e e( d) d d( f) f f( e) e } |
  e4 \times 2/3 { e8( d) c e( d) c e( d) c 
    e( \<  d) c e( d) c e( d) c e( d)  c\! 
  }
  e4 r r2 |
  \once \override TextScript #'padding = #4.0
  r2_\ff_"Tutta forza" g,4. e8 c'4 r c4. g8
  e'4 r e4. c8
  g'1-^ ~
  g4^"rit." fis-^ f-^ e-^
  d1\trill^"A tempo" ~ d \acciaccatura { c16[ d] } c4 r r2
  r4 g,8-. c-. e-. g-. c-. e-.
  g4 c,,8-. e-. g-. c-. e-. g-. c4 r r2
  R1
  \bar "|."
}


\score {
   \relative c' \context Voice = "horn" 
    {
	\set Score.midiInstrument = "french horn"
	\set Score.skipBars = ##t
	\set Score.markFormatter = #format-mark-numbers
        \set tupletSpannerDuration = #(ly:make-moment 1 4)
	
	\override Score.MetronomeMark #'transparent = ##t
	\override Staff.TimeSignature #'style = #'()
	\override TextScript #'padding = #1.0
	\override DynamicLineSpanner #'padding = #1.0
        
        #(override-auto-beam-setting '(end * * * *) 1 4)
        #(override-auto-beam-setting '(end * * * *) 1 2)
        #(override-auto-beam-setting '(end * * * *) 3 4)
        
	\themeAndVarations
	\bar "||"
	\adagio
	  \key c \major
	    \tempo 2 = 70
	\finale
    }
  \layout {
  \context {
     \Staff \consists Mark_engraver
    % \consists Line_number_engraver
    }
  
  }
  \midi {
  }
}
