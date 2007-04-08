\version "2.6.0"
\include "english.ly"
\header {
 title="The Stars and Stripes Forever."
 subtitle="March."
 composer="JOHN PHILIP SOUSA."

 mutopiatitle = "The Stars and Stripes Forever"
 mutopiacomposer = "SousaJP"
 mutopiainstrument = "Piano"
 date = "1896"
 source = "The John Church Company"
 style = "Classical"
 maintainer = "Benjamin Bloomfield"
 maintainerEmail = "bhb123@gmail.com"
 license = "Public Domain"
 lastupdated = "2005/October/30"

 footer = "Mutopia-2005/11/09-626"
 copyright = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 }  \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\paper {
	raggedlastbottom=##f
%	hsize = 8.5\in
%	vsize = 11\in
	betweensystempadding = #0
}

     upper = \relative c'' {
       \clef treble
       \key ef \major
       \time 2/2

	<ef ef,>2^^ <d d,>4. <ef ef,>8 | <c c,>4 <ef ef,>2^^ <f f,>4 | <gf gf,>^^ <g g,>^^ <af af,>^^ <a a,>^^ |
	<bf bf,>^^ r bf,2

	\break

\repeat volta 2
{
	<bf g'>4^^ r8 <bf g'> <b g'>4 <b g'> | <c g'> r8 <c g'>8 <c af'>4 <c af'> | f8[( e) f-. g-.] f4-. ef-. |
	\acciaccatura ef8 d4-. c-. d-. bf-. | <bf bf'>^^ r8 <bf bf'> <bf bf'>4 <bf bf'>

	\break

	<bf bf'> r8 <bf bf'> <b b'>4 <b b'> | <c c'>8^>[( b') c-. ef-.] d4^> <c c,> | <b b,>2. <b b,>4 |
	<bf? bf,?> r8 bf ef4-. r8 c-. | bf4-. a-. bf-. g-. | f^> \stemUp bf,8^>[_( a] bf[ a] bf4)

	\break

	\stemDown f'4^> \stemUp bf,8^>[_( a] bf[ a] bf4) |
	\stemNeutral <bf bf'> r8 bf'-. ef4-. r8 c-. | bf4-. a-. bf-. gf-. | f^^ \phrasingSlurDown a,8^>[\( g] a[ g] a4
}
\alternative
{
	{
		bf4\) r bf2^^
	}
	{
		bf4 r <bf bf'>4.^^( <af af'>8)
	}
}

	\break

\repeat volta 2
{
	<g g'>2 <c c'>4.( <bf bf'>8) | <d d,>2 <c c,> | <bf bf,> <af af'> | <g g'> <f f'>4.( <g g'>8) |
	<af af'>4 <c c'>2 <ef ef'>4 | <f f'>2 <ef ef'> | <g g,>1(

\pageBreak
% begin page 2

	<f f,>2) <bf bf,>4.( <af af,>8) | <g g,>2 <c c,>4.( <bf bf,>8) | <d, d,>2 <c c,> | <bf bf,> <af af'> |
	<g g'> <f f'>4.( <g g'>8) | <af af'>4( <c c'> <f f'>4. <ef ef'>8) | <g g,>4( <bf bf,> <ef, ef,>4. <g g,>8)

	\break

	<f f,>1\(
}
\alternative
{
	{
		<ef ef,>4\) r <bf bf'>4.^^( <af af'>8)
	}
	{
		<ef ef'>4 r ef'2
	}
}
\bar "||"
	\key af \major
	ef2 df4( c) | c2 b4( c) | c1~ | c2 b4^>( c)

	\break

	c2 b4^>( c) | ef2 c4.^>( ef8) | df1^( | bf2) bf | bf \stemUp a4^>_( bf) |
	\stemDown bf2 \stemUp a4^>_( bf) | \stemNeutral df1~

	\break

	df2 c4( bf) | c ef2.^^ | <f df af> f4^( | bf,1)~ | bf2 ef | ef df4( c) | c2 b4( c)

	\break

	c1~ | c2 b4^>( c) | c2 b4( c) | df4^( c bf4. g'8) | bf,1^( | af2) af | af g4^> af

	\break

	cf2^( bf4 af) | <af af'>1~ | <af af'>4 af^( bf c | ef8) r af,4^( bf c | ef8) r ef,4^( f c' | bf1)^( af4) r r2

\pageBreak

% begin page 3

\repeat volta 2
{
	r1 | r2 <f f'>4^^ <e e'>^^ | r2 <f f'>4^^ <g g'>^^ | <e e'>2 r | r1

	\break

	r2 <af af'>4^^ <g g'>^^ | r2 <af af'>4^^ <bf bf'>^^ | <g g'>2
	<< \stemUp {ef8[^( g bf df] | ff4.^^) <ff bf, af>8^. <ff bf, af>4^. <ff bf, af>^. | <ff bf, g>^. ef^. d^. df^.} \\
	 \stemDown {s2 | ff,4._^ ff8_. ff4_. ff_. | ff_. ef_. d_. df_.} >>

	\break

	<< \stemUp {c'4 cf bf a | af gf f8[^( a c ef] | gf4.^^) <gf c, bf>8^. <gf c, bf>4^. <gf c, bf>^. |
		<gf c, a>^. f^. e^. ef^. | d^. df^. c^. cf^.} \\
	 \stemDown {c,4 cf bf a | af gf s2 | gf'4. gf8 gf4 gf | gf f e ef | d df c cf} >>

	\break

	<< \stemUp {bf'4^. af^. g8[^( bf ef g] | bf4.^^) <bf af ff df>8^. <bf af ff df>4^. <bf af ff df>^. |
		<bf g ef df>^^ <bf g ef df>^^ \stemDown g,8[^( bf ef g] |
		\stemUp bf4.^^) <bf af ff df>8^. <bf af ff df>4^. <bf af ff df>^. | <bf g ef df>^^ <bf g ef df>^^} \\
	 \stemDown {bf,,4 af s2 | bf'4._^ bf8 bf4 bf | ef,_^ ef_^ s2 | bf'4._^ bf8 bf4 bf | ef,_^ ef_^} >>
		g8[^( bf ef g]

	\break

	<bf bf,>4.^^) <bf bf,>8( <a a,>4.^^) <a a,>8( | <af? af,?>4.^^) <af af,>8( <g g,>4.^^) <g g,>8( |
	<gf gf,>4.) <gf gf,>8( <f f,>4.^^) <f f,>8( | <ff ff,>4) <ef ef,>^^ <f f,>^^ ef^^
	\bar "||"
	<ef ef'>2 <df df'>4( <c c'>) | <c c'>2 <b b'>4( <c c'>)

\pageBreak

% begin page 4

	<c c'>1~ | <c c'>2 <b b'>4^>( <c c'>) | <c c'>2 <b b'>4^>( <c c'>) | <ef ef'>2 <c c'>4.( <ef ef'>8) |
	<df df'>1( | <bf bf'>2) <bf bf'>

	\break

	<bf bf'>2 <a a'>4^>( <bf bf'>) | <bf bf'>2 <a a'>4^>( <bf bf'>) | <df df'>1~ | <df df'>2 <c c'>4 <bf bf'> |
	<c c'>4 <ef ef'>2. | <f f'>^^ <f f'>4

	\break

	<bf bf,>1~ | <bf bf,>2 <ef ef,> | <ef ef,> <df df,>4( <c c,>) | <c c,>2 <b b,>4( <c c,>) | <c c,>1~ |
	<c c,>2 <b b,>4^>( <c c,>)

	\break

	<c c,>2 <b b,>4^>( <c c,>) | <df df,>( <c c,> <bf bf,>4. <g g'>8) | <bf bf,>1( | <af af,>2) <af af,> |
	<af af,>^( <g g,>4 <af af,>) | <cf cf,>2( <bf bf,>4 <af af,>)

	\break

	<af af'>1~ | <af af'>4 <af af,>( <bf bf,> <c c,> | <ef ef,>8) r <af, af,>4( <bf bf,> <c c,> |
	<ef ef,>8) r <ef, ef,>4^( <f f,> <c c'> | \phrasingSlurUp <bf bf'>1)\(
}
\alternative
{
	{
		<af af'>4\) r r2
	}
	{
		<af af'>4 r <af c ef af>^> r
	}
}
\bar "|."
     }
     
     lower = \relative c {
       \clef bass
       \key ef \major
       \time 2/2

	<ef ef,>2^^ <d d,>4. <ef ef,>8 | <c c,>4 r <c ef c'>2^^ | <cf ef cf'>2^^ <cf ef cf'>^^ | <bf d f bf>4 r r2

	\break

\repeat volta 2
{
	<< \stemUp {c'4\rest <bf g> c\rest <g f> | c\rest <c g ef> c\rest <c af> | c\rest <bf f> a\rest <a f> |
		c\rest <bf f> f'\rest <d bf> | d\rest <ef bf> c\rest <af bf>} \\
	 \stemDown {ef2_> d_> | c f | d_> c_> | bf_> af'_> | g f} >>

	\break

	<< \stemUp {c'4\rest <bf g> c\rest <b g> | c\rest <c g> c\rest <g c>} \\
	 \stemDown {ef2 d | c ef} >> |
	g,4 <g' b d> <g b d> <g b d> | ef <g bf?> bf, <g' bf> | ef <g bf> bf, <g' bf> | d <af' bf> bf, <af' bf>

	\break

	d, <af' bf> bf, <af' bf> | ef <g bf> bf, <g' bf> | ef <g bf> bf, <bf' ef> | f <c' ef> f, <c' ef>
}
\alternative
{
	{
		<bf d>4 r <bf f d bf>2^^
	}
	{
		<bf d>4 r <bf f d bf>2
	}
}

	\break

\repeat volta 2
{
	ef,4 <g bf> bf, <g' bf> | f <af bf> bf, <af' bf> | d, <af' bf> bf, <af' bf> | ef <g bf ef> <g bf ef> <g bf ef> |
	af, <af' c ef> <af c ef> <af c ef> | a, <a' c ef> <a c ef> <a c ef> | bf, <bf' ef> ef,^> <g bf ef>

\pageBreak
% begin page 2 (lower)

	d^> <af' bf d> <bf f d bf>2 | ef,4 <g bf> bf, <g' bf> | f <af bf> bf, <af' bf> | d, <af' bf> bf, <af' bf> |
	<< \stemUp { c4\rest <bf g> c\rest <bf g> | c\rest <af ef> c\rest <af ef>} \\
	 \stemDown { ef2 df | c cf} >> |
	bf4 <g' bf ef> <g bf ef> <g bf ef>

	\break

	bf, <af' bf d> <af bf d> <af bf d>
}
\alternative
{
	{
		<ef g bf>4 r <bf d f bf>2^^
	}
	{
		<ef g bf>4 r r2
	}
}
\bar "||"
	\key af \major
	af,4^> <af' c ef> <af c ef> ef^> | af,^> <af' c ef> <af c ef> ef^> | af,^> <af' c ef> <af c ef> ef^> |
	af,^> <af' c ef> <af c ef> ef^>

	\break

	af,^> <af' c ef> <af c ef> ef^> | af,^> <af' c ef> <af c ef> ef^> | bf^> <g' df' ef> <g df' ef> ef^> |
	bf^> <g' df' ef> <g df' ef> ef^> | bf^> <g' df' ef> <g df' ef> ef^> | bf^> <g' df' ef> <g df' ef> ef^> |
	bf^> <g' df' ef> <g df' ef> ef^>

	\break

	bf^> <g' df' ef> <g df' ef> ef^> | af,^> <af' c ef> <af c ef> <af c ef> | df,^> <af' df f> <af df f> <af df f> |
	ef^> <g bf ef> bf,_> <g' bf ef> | g,_> <g' bf ef> ef^> <g bf ef> | af,^> <af' c ef> <af c ef> ef^> |
	af,^> <af' c ef> <af c ef> ef^>

	\break

	af,^> <af' c ef> <af c ef> ef^> | af,^> <af' c ef> <af c ef> ef^> | <g g,>_> <bf c e> <bf c e> c,^> |
	<g g'>_> <bf' c e> <bf c e> c,^> | f^> <bf c f> <bf c f> c,^> | f^> <af c f> <af c f> c,^> |
	ff <af df> <af df> <af df>

	\break

	ff <af cf> <af cf> <af cf> | ef <c'? ef> af, <c' ef> | c, <c' ef> ef, <c' ef> | c, <c' ef> ef, <c' ef> |
	af <c ef> c <ef af> | g, <df' ef> ef, <df' ef> | <af c ef> r <af af,>^> <af af,>^>

\pageBreak

% begin page 3 (lower)

\repeat volta 2
{
	<af af,>4^^( <g g,>8) r <g g,>4^^( <f f,>8) r | <f f,>4^^ <e e,>^^ r2 | <f f,>4^^ <e e,>^^ <df f bf> <df f bf> |
	<c e g c>2 <c c'>4^^ <c c'>^^ | <c c'>( <bf bf'>8) r <bf bf'>4( <af af'>8) r

	\break

	<af af'>4^^ <g g'>^^ r2 | <af af'>4^^ <g g'>^^ <ff' af df> <ff af df> | <ef g bf ef>2 r | s1 | s1

	\break

	s1 | s2 r4 r4 | s1*3

	\break

	s2 r4 r4 | s1 | s2 r2 | s1 | s2 r

	\break

	<bf bf'>4. <bf bf'>8( <a a'>4.^^) <a a'>8( | <af? af'?>4.^^) <af af'>8( <g g'>4.^^) <g g'>8( |
	<gf gf'>4.^^) <gf gf'>8( <f f'>4.^^) <f f'>8( | <ff ff'>4) <ef ef'>^^ <f f'>^^ <ef ef'>^^
	\bar "||"
	af4 <af' c ef> <af c ef> ef | af, <af' c ef> <af c ef> ef

\pageBreak
% begin page 4 (lower)

	af, <af' c ef> <af c ef> ef | af, <af' c ef> <af c ef> ef | af, <af' c ef> <af c ef> ef |
	af, <af' c ef> <af c ef> ef | bf <g' df' ef> <g df' ef> ef | bf <g' df' ef> <g df' ef> ef

	\break

	bf <g' df' ef> <g df' ef> ef | bf <g' df' ef> <g df' ef> ef | bf <g' df' ef> <g df' ef> ef |
	bf <g' df' ef> <g df' ef> ef | af, <af' c ef> <af c ef> <af c ef> | df, <af' df f> <af df f> <af df f>

	\break

	ef <g bf ef> bf, <g' bf ef> | g, <g' bf ef> ef <g bf ef> | af, <af' c ef> <af c ef> ef |
	af, <af' c ef> <af c ef> ef | af, <af' c ef> <af c ef> ef | af, <af' c ef> <af c ef> ef

	\break

	<g g,> <bf c e> <bf c e> c, | <g g'> <bf' c e> <bf c e> c, | f <bf c f> <bf c f> c, | f <af c f> <af c f> c, |
	ff <af df> <af df> <af df> | ff <af cf> <af cf> <af cf>

	\break

	ef <c' ef> af, <c' ef> | c, <c' ef> ef, <c' ef> | c, <c' ef> ef, <c' ef> | af <c ef> c <ef af> |
	g, <df' ef> ef, <df' ef>
}
\alternative
{
	{
		<af c ef> r <af af,>^> <af af,>^>
	}
	{
		<af c ef> r <af, af,>_> r
	}
}
\bar "|."
     }
     
     dynamics = {
	s1\ff | s1*3

	s4\mf s2\< s4\! | s1*4

	s1*2 | s2 s4.\> s8\! | s1\p | s1 | s1\f

	s1 | s1\p | s1 | s1\f | s1 | s2 s2\ff

	s1\ff | s1*6

% begin page 2

	s1*7

	s1 | s2 s2\ff | s2 s2\p | s1\p | s1*3

	s1*7

	s1*7

	s1*3 | s2\< s2\! | s1*3

	s4. s4.\< s4\! | s1 | s4 s2\< s8 s8\! | s4 s2\< s4\! | s4 s4.\< s4.\! | s1*2

% begin page 3

	s1\f | s1*4

	s1*2 | s2 s4.\< s8\! | s1*2

	s1*5

	s1*5

	s2 s4.\< s8\! | s1*2 | s8 s2\< s4.\! | s32 s32*7\ff \once \override TextScript #'extra-offset = #'( -1 . -1.5 )
		s2.^\markup { \italic \fontsize #0 grandioso. } | s1

% begin page 4

	s1*6

	s1*4 | s8 s2\< s4.\! | s1

	s1*6

	s1*6

	s1*7
     }
     
     pedal = {
     }
     #(set-global-staff-size 19.5)
     \score {
       \context PianoStaff <<
         \context Staff=upper \upper
         \context Dynamics=dynamics \dynamics
         \context Staff=lower <<
           \clef bass
           \lower
         >>
         \context Dynamics=pedal \pedal
       >>
       \layout {
         \context {
           \type "Engraver_group_engraver"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
     
           minimumVerticalExtent = #'(-1 . 1)
           pedalSustainStrings = #'("Ped." "*Ped." "*")
           pedalUnaCordaStrings = #'("una corda" "" "tre corde")
     
           \consists "Piano_pedal_engraver"
           \consists "Script_engraver"
           \consists "Dynamic_engraver"
           \consists "Text_engraver"
     
           \override TextScript #'font-size = #2
           \override TextScript #'font-shape = #'italic
           \override DynamicText #'extra-offset = #'(0 . 2.5)
           \override Hairpin #'extra-offset = #'(0 . 2.5)
     
           \consists "Skip_event_swallow_translator"
     
           \consists "Axis_group_engraver"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
           \override VerticalAlignment #'forced-distance = #6
         }
       }
     }
     \score {
	\unfoldRepeats
       \context PianoStaff <<
         \context Staff=upper << \upper \dynamics >>
         \context Staff=lower << \lower \dynamics >>
         \context Dynamics=pedal \pedal
       >>
       \midi { \tempo 4=240
         \context {
           \type "Performer_group_performer"
           \name Dynamics
           \consists "Piano_pedal_performer"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
         }
       }
     }
