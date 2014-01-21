\version "2.18.0"


% This is the solo voice.
celloSolo = \relative c {
  \clef tenor \key g \major \time 4/4 \tempo "Adagio" 8=63
  % The first part
  \repeat volta 2 { 
    b'~^"con suono"_\markup {\dynamic mf \italic{molto espressivo} } 
    b16 c( d e) a,4~  a16 b( c d) | %1
    g,8\<  g'16( e) c4~\!  c16 a'( fis d) c8 b16( d) | %2
    b8(\>  a16 g)\!  r4 g'4~\p\downbow g16 e( fis g) |	  %3
    a,4~ a16 cis(\<  e g)\! fis4~\>  fis16(\! d  b a) |	  %4
    g4~ g16  b(\< d fis)\! e4~\>  e16\! cis( a g) |	  %5
    fis( g) cis( d) d4~\<  d16 e( g b)\!  cis,8.( d16) | %6
  }
  \alternative{ { d4~\>  d8\!  r8 }  { d4~\> d8\! r8 } } %7
  % The second part
  \repeat volta 2 {
    \set Timing.measurePosition = #(ly:make-moment -1/2)  
    f4~\downbow f16 d( b a) | \crescTextCresc %7
    gis4~ gis16\< a( b c) d( e) f gis b8(\! d,) | %8
    c b16( a) c'4~\f c16 b( a b32 gis) a4~ |    %9
    a16_\markup { \italic {con molta espressione} } 
    g( f e) d( c) b( gis')		     
    a([ b32 a gis) a16.(] \grace{b16[ c]} b8. a16) | %10
    a4. r8 c,4~\mp c16 b( a c) |		     %11
    b4~ b16\< g( a b) c( d) e^\markup { \italic largamente } 
    f g[ f32( e) f8]\! |	%12
    f8(\> e)\! r16( a,\p b c) \tuplet 3/2 {fis,([\< e fis)]} 
    \tuplet 3/2 {g([ fis g)]} \tuplet 3/2 {a([ g a)]} 
    \tuplet 3/2 {b([ a b)]\!} | \crescHairpin %13
    \tuplet 3/2 {c([\f b c)]\<} a'8~\! 
    a16\> b,( c\! a) b(_\markup { \italic {poco rit.} } 
    d) g e d( c) fis( g) | %14
    b,8(\> a)\! r4 b~^\markup { \italic {a tempo} }\pp 
    b16 c( d e) |		  %15
    a,4~ a16 b( c d) g,8 g'16( e) c4~( |	  %16
    c16 a') fis d c8( b16 c) b(\< d b g) 
    \clef bass f8( e16 f)\! | \crescTextCresc %17
    e4~(\< e16 fis) fis( g) g( fis) g e fis8.( g16)\! %18
  }
  \alternative{
    { g4~\f g16 b,( e cis)_\markup { \italic allargando } d( g) c b 
      \grace{\tuplet 3/2 {g16[( a b]}} a8. g16) | %19
      \set Timing.measurePosition = #(ly:make-moment -1/2) 
      g4~\>^\markup { \italic {a tempo} } g8 r8 }
    { g4~\f g16_\markup { \italic {molto rit.} } b,( e cis) e( g) c, b 
      \grace{\tuplet 3/2 {g16[( a b]}} a8.\fermata g16) |
      g1 } 	%20
  }
}

pianorighthand = \relative c'' { 
  \clef treble 
  \key g \major 
  \time 4/4 
  \repeat volta 2 {
    r8\mf <d, g b>8_.( <g b d>_.) r8 r8 <d a'>_.( <fis a d>_.) r8 | %1
    r8 <d g>8_.( <c g' c>8_.) r8 r8 <fis a c>^.( <c' fis a>^.) r8 |  %2
    r8\> <g' d b>^.( <b, g d>^.) r8\! r8\p <e, g b>_.( <g b e>_.) r8 |   %3
    r8 <g a e'>_.( <e g a>_.) r8 r8 <d fis a>_.( <fis a d>_.) r8 | %4
    r8 <d g>_.( <g, d' fis>_.) r8 r8 <e' a>_.( <a, e' g>_.) r8 |	 %5
    r8 <g' a>_.( <fis a d>_. <d a' dis>_. \< <d g b>^. <g b e g>^.)
    << { c4\! } \\ { <fis, a>8( <e g>) } >> | %6
  }
  \alternative{
    { r8\> << {<g a>8(\! <fis d'> <c' a>)} \\ {d,4 d8} >> }
    { r8\> <a' g d>([ <d fis, d>)] r8\! } %7
  }
  \repeat volta 2 {
    \set Timing.measurePosition = #(ly:make-moment -1/2)
    r8\mf <f d a>8^.( <d a f>^.) r8 | \crescTextCresc
    r8 <b f d>_.( <d b f>_.) r8\< r8 <d b f>_.( <e, d b>_.) r8\! | %8
    r8\f <c' a e>_._- <a e c>4~ <a e c>8[ <e' c a>] <a, e c>4~ |   %9
    <a e c>8 <a' d, b>_._- <b, a f>_.[\( <d gis, d>_.] 
    <c a e>_.[ <b f>_.]\) << {e,4} \\ {<b a>8( <d gis,>)} >> | %10
    r8\> <e c g>_.( <c e a>_.) r8\! r8\p <e a c>_.( <d c g>_.) r8 | %11
    r8 <d b>_.( <g d b>_.) r8 r8\< <g c, g>_.( <a g c,> <b g d>_.)\! |%12
    r8\> <c g e>_.( <e c g>_.)\! r8\p r8 <g,\< c, g>_.( 
    <fis c a>_. <e c b>_.\! | %13
    <d c a>_. <e' a, c,>_. <d a d,>_. <c a fis>_. 
    <b g d>_._\markup { \italic { poco rit.} } 
    <g' d g,>_. <g c, g>_. <g, e g,>_.) | %14
    r8\> <g d a>_.( <fis d a>_.)\! r8 \crescHairpin
    r8^\markup{ \italic {a tempo} }\pp <b g d>_.( <d b g>_.) r8 | %15
    r8 <a d,>_.( <d a fis>_.) r8 r8 <g, d>_.( <c g c,>_.) r8 |	 %16
    r8 <c a fis>_.( <a' fis c>_.) r8 r8 <b, g d>_.(\< <f d b>_.) r8\! | %17
    \crescTextCresc r8\< <e c g>_.( <a e a,>_.) r8 r8 <g a,> 
    << { <f d>4\! } \\ { b,8( c) } >> | } %18
    \alternative{
      { r8\f <g' b,>_.(_\markup { \italic alargando } 
	<d' g, d>_. <cis g e>_. <d g, d>_. <g, e>_.)
	<< { d4 } \\ { <c g>8( fis,) } >> 
	\set Timing.measurePosition = #(ly:make-moment -1/2) 
	r8^\markup{ \italic{a tempo} } <d' b g>_.( <g d b>_.) r8 }
      { r8\f <g b,> <d' g, d>_\markup{ \italic{molto rit.} } 
	<cis g e> <d g, d> <g, e>
	<< { d4\fermata } \\ { <c! g>8( a)\fermata } >> | %19
	r8 << { <e' c>16( <d b> <c a> <d b> <e c>8 <d b>2) } \\ 
	      { g,4.( g2) } >> } %20
    }
}
    
pianolefthand = \relative c {
  \clef bass
  \key g \major
  \time 4/4
  \repeat volta 2 {
    <g g'>4. <g g'>8_._- <fis fis'>4. <fis fis'>8_._- | %1
    <e e'>4. <e e'>8_._- <d d'>4. <d d'>8_._- | %2
    <g g'>4. <fis fis'>8_._- <e e'>4. <d d'>8_._- | %3
    <cis cis'>4. <cis cis'>8_._- <d d'>4. <cis cis'>8_._- | %4
    <b b'>4. <b b'>8_._- <cis cis'>4. <cis cis'>8_._- |	  %5
    <d d'>4. <fis fis'>8_.( <g g'>_. <e e'>_. <a a'>_. <a, a'>_.) | %6
  }
  \alternative{
    { d2 }
    { <d d'>4. <c c'>8 }
  }				%7
  \repeat volta 2 { 
    \set Timing.measurePosition = #(ly:make-moment -1/2)
    <<
      {
	r8 <b'' d>8_.( <a b>_.) r8 | %8
	r8 <gis b>8_.( <b d>_.) r8 r8 <gis b>_.( <gis e>_.) r8 | %9
	r8 <a c> <a e> r8 r8 <c e> <a e> r8 |			 %10
	r8 <b d a'> <a fis b>
	}
      \\
      {
	<b, b,>4. <b b,>8_._- |	
	<e e,>4. <f f,>8_._- <gis, gis,>4. <e e,>8 | %8
	<a a,>4. <a a'>8_._- <g g'>4. <g g'>8 |	     %9
	<f f'>4.
	} >>
    <f f'>8_.\( <e e'>_. <d d'>_. <e e'>_. e_.\) | %10
    << { r8 <c' e>8_.( <e a>_.) r8 } \\ { <a, a,>4. <g g'>8_._- } >>
    <fis fis'>4. <d d'>8_._- |	%11
    <g g'>4. <f f'>8_._- <e e'>4. <g g'>8_._- | %12
    <c, c'>4. <b b'>8_._- <a a'>4. <g g'>8_._- | %13
    <fis fis'>4. d'8_.( <g, g'>_. <b b'>_. <e e'>_. <c c'>_.) | %14
    <d d'>4. <fis fis'>8_._- <g g'>4. <g g'>8_._- |		%15
    <fis fis'>4. <fis fis'>8_._- <e e'>4. <e e'>8_._- |		%16
    <d d'>4. <d d'>8_._- <g g'>4. <g, g'>8_._- |		%17
    <c c'>4. <a a'>8 <d d'>4. <d d'>8 |	}		%18
    \alternative{
      { <e e'>4. <a, a'>8( <b b'>[ <c c'>)] <d d'>_.([ d_.)] 
	\set Timing.measurePosition = #(ly:make-moment -1/2) 
	<g, g'>4. <c c'>8_._- }
      { <e e'>4. <a, a'>8 <b b'>[ <c c'>] <d d'>[ d]\fermata | %19
	<g, g'>1 }					       %20
    }
}


\book{
  \header {
    title = "Arioso"
    composer = \markup{ \caps {Johann Sebastian Bach}}
    arranger = "Arr. Sam Franko"
    mutopiatitle = "Arioso"
    mutopiacomposer = "BachJS"
    mutopiainstrument = "Cello, Piano"
    source = "Schirmer, 1915"
    copyright = "Creative Commons Attribution 3.0"
    maintainer = "Hermógenes Hebert Pereira Oliveira"

    mutopiaopus = "BWV 1056"
    mutopiastyle = "Baroque"

 footer = "Mutopia-2014/01/19-1902"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2014. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } } }
  }
  \bookpart{
    \score{
      <<
	\new Staff = "Violoncello" \with {
	  fontSize = #-3
	  \override StaffSymbol.staff-space = #(magstep -3)
	} 
	\set Staff.instrumentName = Violoncello
	\set Staff.midiInstrument = #"cello"
	{
	  \celloSolo
	}
	\new PianoStaff = "Piano" {
	  \set PianoStaff.instrumentName = #"Piano"
	  <<
	    \new Staff {
	      \pianorighthand
	    }
	    \new Staff {
	      \pianolefthand
	    }
	  >>
	}
      >> 
      \midi{
	\context{
	  \Voice
	  \remove "Dynamic_performer"
	}
      }
      \layout{
	#(layout-set-staff-size 22)
      }
    }
  }

  \bookpart{
    \score{
      \new Staff = Violoncello {
	\set Staff.instrumentName = Violoncello 
	\celloSolo
      }
      \layout{
	#(layout-set-staff-size 22)
      }
    }
  }
}
