#(ly:set-option 'old-relative)
\header{
  title = "Caro Mio Ben"
  subtitle = "(Come once again)"
  filename = "caromioben.ly"
  enteredby = "Peter Chubb"
  composer = \markup { \column {\line {\italic {Attrib. to} Guiseppe Giordiano}
				\line {1748–1798}}}

  mutopiatitle = "Caro Mio Ben (Come Once Again)"
  mutopiacomposer = "GiordanoG"
  mutopiainstrument = "Voice and Piano"
  date="1780s"
  source="Boosey and Hawkes 1903, as corrected from other editions"
  style="Classical"
  copyright="Public Domain"
  maintainer = "Peter Chubb"
  maintainerEmail = "mutopia@chubb.wattle.id.au"
  lastupdated = "2009/Aug/5"

 footer = "Mutopia-2009/08/05-22"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.12.0"
% attempt to fit onto two pages.
#(set-global-staff-size 18)

%{
	Transcribed from a 1903 Boosey & Hawkes arrangement, and
	corrected from various other editions.
%}

global = {
	\time 4/4
	\key d \major
	\override Staff.TimeSignature   #'style = #'C
}

tune = \relative c''{
	\partial 2
	\autoBeamOff
	\dynamicUp
	r2^\markup{\bold {Larghetto.}} | r1 | r1 | r1 |
%5
	r2 d4 cis8. b16 |
	a2 b4  a8. g16 |
	fis2 g4 fis8 e |
	a2 d,4 ( \grace {
\override Stem   #'stroke-style = #"grace"
    e16[  d16)]
  \revert Stem #'stroke-style }

	   cis8 d |
        fis4(  e) r2 |
%10
	r2 b'4 a8. g16 |
	fis2 g4 fis8 e |
	 a8[( d)]  d,[( g)] fis4(  e8.) d16 |
	d2 r2 |
	r1 |
%15
	r2 a'4 b8 cis |
	b2 \< b4 cis8  d\! |
	cis2 e4-> \f d8 cis |
	 b8[( gis)]  a[(  d)] cis4  b8.[(  a16)] |
	a2 b4 a8. g16 |
%20
	fis4 r4 a4 g8 fis |
	fis4(  e)  d' gis,8 gis |
	a2\fermata(\<   d4\!)\sp cis8. b16 |
	a2 \< b4  a8.\! g16 |
	fis2 g4 fis8 e |
%25
	 a8[(  d)]  d,[ (  g)] fis4(  e8.) d16 |
	d2 \grace {
\override Stem   #'stroke-style = #"grace"
    g16[ \p ( a16] 
  \revert Stem #'stroke-style }

		 b4) a8. g16 |
	fis4 r4 \grace {
\override Stem   #'stroke-style = #"grace"
    g16[ ( \<   a16] 
  \revert Stem #'stroke-style }
  b4) 
	 a8.\! g16 |
	fis4 r4 d'4 cis8 b |
	a2( \grace {
\override Stem   #'stroke-style = #"grace"
    b16[ a gis a] 
  \revert Stem #'stroke-style }
  d4)\fermata r4 |
%30
	fis,2 e4. d8 |
	d2 r2 |
	r1 | r2\fermata \bar "|."
}

pianoRH = \relative c' {
%1
	\partial 2
	\context Staff <<
		{\voiceOne % \set slurdirection = UP
			d'4(  cis8.[ b16] | <a d,>2) <b g d>4( 
			 <a fis>8.[ <g e>16] |  fis2)}\\
		{\voiceTwo fis4 g | s2 s4 cis,4 | d2 }
	>> 
	<g e b>4 
	\context Staff <<
		{ \voiceOne  fis8.[ e16] }\\
		{ \voiceTwo <cis a>4 }
	>> |
	\context Staff <<
		{  \voiceOne  a8[(  d)]  d,[(  g)] fis4 \shiftOn  e8.[ d16] }\\
		{  \voiceTwo d4_\markup{\italic {largamente}} b d  d8[ cis] }
	>>
%5
	<d a>2 <fis d>4( <g cis,> |
	<a d,>2) <b g d>4( 
	<<
		{ \voiceOne <a fis>8.[ <g e>16]  }\\
		{ \voiceTwo cis,4}
	>> |
	<fis d>2) <g b,>4(  <<
		{\voiceOne  fis8[ e]}\\
		{\voiceTwo cis4}
	>> |
	<a d, a>2) <d, gis,> |
	<<
		{\voiceOne d4(  cis) }\\
		{\voiceTwo a2} 
	>>
	<<
		{\voiceOne  <d' fis,>4(  cis8.[  b16)] }\\
		{\voiceTwo s4 g4}
	>> |
%10
	a2 \mf <b  d,>4 
	<< 
		{ \voiceOne  a8.[( g16] | <fis d>2) }\\
		{ \voiceTwo cis4 | s2 }
	>>
	<g e b>4( 
	<<
		{\voiceOne  fis8[ e] }\\
		{\voiceTwo cis4}
	>> |
	<a d,>4)  << 
		{\voiceOne  d,8[ g]}\\
		{\voiceTwo b,4}
	>> <fis d a>4 <e cis g> |
	<d fis,>8[ a' d fis] <a d, a>4( 
	 <<
		{ \voiceOne  g8.[ fis16] }\\
		{ \voiceTwo <d b>4 }
	>> |
	<e cis>8[ <cis a e> <d a d,> <g, d>] <fis d a>4 <e cis g> |
%15
	<d fis,>2) <a' e a,  >4\p  <a e cis> |
	<<
		{ \voiceOne a4(  gis)} \\
		{\voiceTwo <e b>2}
	>>
	<b e, b>4 <b gis b,> |
	<a cis, >4.\<  r8 < a e a,>4 <  gis e d>8[ <a e cis>\!] |
	<gis e b \> >4 <a e a,>8[ <a d,>] <a e cis>4 <gis e  d > \! |
	<a e cis>2 <g! e b  >4\pp  <e a,> |
%20
	<fis a,>4.( <g e>8 <a d,>4 <g e>8[ <fis d>] |
	<fis  d>4)  <e cis> <gis e d  >\mf <gis e d> |
	<a e cis>2\fermata 
	<<
		{\voiceOne <fis  d >4(\pp <g cis,> |  a2)}\\
		{\voiceTwo s2 | d,4 (  cis) } 
	>>
	<<
		{\voiceOne b4( <a fis>8.[  <g e>16] | <fis b,>2)}\\
		{\voiceTwo b,4 \p cis | \shiftOn e4 (  d) }
	>>
	<g e b >4(\mf  <fis d a>8.[ <e cis a>16] |
	<d a>4.) <g e b>8 <fis d a>4 <cis a g> |
%25
	<d b fis>2 <g e b>4 <e a> |
	 <<
		{\voiceOne <fis a,>2 <b g b,>4 <a fis>8.[ <g e>16]|
		\shiftOn cis,4 (  b)}\\
		{\voiceTwo e4 (  d) s4 cis | <fis d>2 }
	>>
	<d' fis, d>4 << 
		{\voiceOne <cis fis,>8[ <b g>] }\\
		{\voiceTwo  d,4 }
	>>
	<a d, a>4 r4 r4\fermata <g e b >\f |
%30
	<fis d a>2 <e cis a g> |
	<d a fis> <d' fis, d>4( 
	<<
		{\voiceOne <cis fis,>8[ <b g>] }\\
		{\voiceTwo d,4}
	>> |
	<a d,>8[_\markup{\italic {rit.}} d d, \< <g e b>] <fis d a>4 <e cis   g > \!
	<d fis,>2)\fermata \bar "|."
}

pianoLH = \relative c {
	\dynamicUp
	\partial 2
	<d a'>4 <e a> |
	<fis a>2 g4 a  |
	b2 <e,, e'>4 <a a'>8[ <g g'>] |
	<fis fis'>4 <g g'> <a a'> <a g'> |
%5
	<d fis>2 <d a'>4 <e a> |
	<fis a>2 <g g,>4 <a a,> |
	<b b,>2 e,4(  a8[ g] |
	 fis2) <e b> |
	 <<
		{\voiceOne fis4(  e) }\\
		{\voiceTwo a,2}
	>>
	<d  a'>4\f <e cis'> |
%10
	<fis d'>2 <g, g' >4 <a a'> |
	<b b'>2 e4  a8[ g] |
	fis4 <g, g,> <a a,>2 |
	<d d, > <fis fis,>4 <g g,> |
	<a a,>8[ <g g,> <fis fis,> <b b,>] <a a,>4 <a, a,> |
%15
	<a  d,>2 cis4 a |
	e'2 gis4 e |
	a4. r8 cis,4  b8[ a] |
	 e'8[( d cis  fis)] e4 e, |
	a2 e'4 cis |
%20
	d r <fis a> <g b> |
	a2  b,4  <e, e'> |
	<a a'>2\fermata <d a'>4 <e a> |
	<fis a>2 g,4(  a8.[ ais16] |
	 b2) e4(  fis8.[ g16] |
%25
	 fis4.)  <e e,>8 a,4 a|
	b2 <e e,>4 <cis cis,> |
	<d d,>2 <g, g,>4 <a a,> |
	<b b,>2 <b' b,>4 <a a,>8[ <g g,>] |
	<fis fis,>4 r4 r4\fermata g,4 |
%30
	a2 ~ <a a,> |
	<d d,>2 b'4  a8[ g] |
	fis4. <g g,>8 <a a,>4  <a, a,> |
	<a d,>2\fermata \bar "||"
}


piano = {
	\context PianoStaff <<
	      \context Staff=pianoRH  {\clef "treble" \global\pianoRH}
	      \context Staff=pianoLH {\clef "bass" \global\pianoLH}
	>>
}

ItalianWords = \lyricmode{
	\partial 2
	""2 | ""1 | ""1 | ""1 | 
	""2 Ca-4 ro8. mio16 |  ben2
	cre-4 di-8. mi~al-16 | men2 sen-4 za8 di |
	te2 __ lan-4 __ gui-8 __ sce_il | cor.2 ""2 | ""2 
	Ca-4 ro8. mio16 | ben2 sen-4 za8 di | te4 lan- gui-4. __ sce16 il16 | cor.2
	""2 | ""1 | ""2 Il4 tuo8 fe- | del2 so-4 spir-8 a~o-8| gnor2 ces-4
	sa8 cru-8 | del4 __ tan- to4 ri-4 __ | gor2
	Ces-4 sa8. cru-16 | del4 ""4 tan-4 to8 ri-8 |
	gor,2 tan-4 to8 ri- | gor.2 
	Car-4 ro8. mio16 | ben2 cre-4
	di-8. mi~al-16 | men2 sen-4 za8 di |
	te4 lan- gui-4. __ _16 sce~il16 | cor.2 
	Ca-4 __ ro8. mio16 | ben4 ""4 cre-4 __
	di-8. mi~al-16 | men4 ""4 sen-4 za8 di |
	te2. __  ""4 |
	lan-2 gui-4. sce~il8 | cor.2 ""2 | ""1 | ""2
}

EnglishWords = \lyricmode {
        \partial 2
	""2 | ""1 | ""1 | ""1 | 
	""2 Come4 once8. a-16 | gain,2 
	joy4 of8. my16 | heart,2 
	I4 can-8 not | live2 If4 __ we8 must | part2 __ ""2 | 
	""2 Come4 once8. a-16 | gain,2 I4 can-8 not|  live4 __
	if __ we__ _8 must8 | part2 ""2| ""1 |""2 I4 am8 thine | own,2
	All4 love8 for |
	you,2 To4 thee8. a16 -- | lone4 faith-4 ful4 and | true,2 To4
	thee8. a-16 |
	lone4 ""4 faith4 -- ful8 and |
	true,2 __ faith-4 ful8 and | true.2 Come4 once8. a-16 | gain,2
	joy4 of8. my16 | heart,2 I4 can-8 not |
	live4 __ if __ we4. __ must8 | part2 come4 once8. a-16 | gain4
	"" joy __ of8. my16 | heart4 "" I can-8 not |
	live2. __ ""4 | if2 we4. must8 | part.2 ""2 | ""1 | ""2
}

words = \lyricmode <<
      \context Lyrics = It { 
	\set associatedVoice = #"tune"
	\override Lyrics . LyricText #'font-shape = #'roman
	\ItalianWords }
      \context Lyrics = En { 
	\set associatedVoice = #"tune"
	\override Lyrics . LyricText #'font-shape = #'italic 
	\EnglishWords }
>>

voice = \context Staff = "voice" <<
	      {\global\clef "G" \context Voice = tune \tune}
	     \context Lyrics = "voice" \words
>>

\score{
%     \transpose c' bes  
  <<
    \voice
    \piano
  >>

  \layout {
    indent=0.0\mm
  }
    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
    }
}
