\version "2.6.0"
\include "english.ly"
\header {
	title="Hands across the Sea."
	subtitle="MARCH."
	composer="JOHN PHILIP SOUSA."

 mutopiatitle = "Hands across the Sea"
 mutopiacomposer = "SousaJP"
 mutopiainstrument = "Piano"
 date = "1899/Mar"
 source = "The John Church Company"
 style = "Classical"
 copyright = "Public Domain"
 maintainer = "Benjamin Bloomfield"
 maintainerEmail = "bhb123@gmail.com"
 lastupdated = "2005/Oct/12"
 
 footer = "Mutopia-2005/10/17-609"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\paper {
	betweensystempadding = #0
	raggedlastbottom=##f
}

     upper = \relative c'' {
       \clef treble
       \key f \major
       \time 2/2

	f8-.[ e-. d-. df-.] c4-. f-. | <a g a,>-. <a f a,>-. <bf g f bf,>2-^ |
	<f a>8-.[ <f bf>-. <f c'>-.] r <f bf, g>4-.-^ <g bf, g>-.-^ | <e bf g>-^ r <a e cs a>-^ r \bar "||"

	\break

\repeat volta 2
{
	<f d a>4-.-^ r g8-.[ f-. d-. bf-.] | a4^( f'8) r f,[ e f a] | c-. r g-.[ g-.] g-.[ r a-.] r |
	f4 r \acciaccatura g8 f8[_( e) f-. g-.]

	\break

	a8 r a[ a] a[ r a] r | a4^( d8) r d-.[ d-. d-. d-.] | d r d[ d] d r <f f,> r | <e e,>2^( <a e cs a>4^^) r

	\break

	<f d a>-.-^ r g8-.[ f-. d-. bf-.] | a4^( f'8) r f,-.[ e-. f-. a-.] c-. r g-.[ g-.] g-.[ r a-.] r |
	f4 r \acciaccatura g8 f8[_( e) f-. g-.]

	\break

	a8 r a[ a] a[ r a] r | a r <a a'>[ r <g g'>] r <f f'> r | <e e'> r <e e'>[ <e e'>] <e e'>[ r <e b'>] r
}
\alternative
{
	{
		<e bf'? e>4 r <a cs e a>-^ r
	}

	{
		<e bf' e>4 r8 <c' c'>^(  <d d'>4. <bf bf'>8)
	}
}
	\bar "||"
	\break
% begin page 2

	<a' a,>4 r8 <gs gs,>8^( <a a,>2) | <c c,>4-^ <f f,>-^ <c c,>-^ r8 <bf bf,>^( |
	<a a,>4) r8 <gs gs,>8^( <a a,>2) | r4 f4-^ <f a>-^ <f c'>-^ |
	<f f'> r8 <e e'>8^( <f f'>2) | <d d'>4.^( <e e'>8 <f f'>4 <d d'>)

	\break

	#(set-octavation 1)
	<g c g'>1~ | <g c g'>4 r <f f'>-^ <g c g'>-^ | <a c a'> r8 <gs gs'>8^( <a a'>2) |
	d4 <a a'> <a d>-^ <g cs e>-^ | <f d' f> r8 \stemDown <e e'>8^( <f f'>2) | \stemNeutral
	#(set-octavation 0)
	bf4 <f f'> <f bf>-^ <f b>-^

	\break

	<f a c>4.-^ <f f'>8 <c c'>4 <d d'> | <bf bf'>4.-^ <a a'>8 <bf bf'>4 <g g'> |
	<< \stemUp { f'1~ | f4} \\
	 \stemDown { <c a f>4 <c a f> <c a f> <c a f> | <c a f>} >> r8 <c c'>8^( <d d'>4. <bf bf'>8) |
	<a a'>4 r8 <gs gs'>^( <a a'>2) | <c c'>4-^ <f f'>-^ <c c'>-^ r8 <bf bf'>^(

	\break

	<a a'>4) r8 <gs gs'>^( <a a'>2) | r4 f'-^ <f a>-^ <f c'>-^ | <f f'> r8 <e e'>^( <f f'>2) |
	<d d'>4.^( <e e'>8 <f f'>4 <d d'>) |
	#(set-octavation 1)
	<g c g'>1~ | <g c g'>4 r <f f'>-^ <g c g'>-^ | <a c a'> r8 <gs gs'>^( <a a'>2)

	\break

	d4 <a a'> <a d>-^ <g cs e>-^ | <f d' f> r8 \stemDown <e e'>^( <f f'>2) | \stemNeutral
	#(set-octavation 0)
	bf4 <f f'> <f bf>-^ <f b>-^ | <f a c>4.-^ <f f'>8 <c c'>4 <d d'> | <bf bf'>4.-^ <a a'>8 <bf bf'>4 <g g'> |
	<< \stemUp {f'1~ | f4} \\
	 \stemDown {<c a f>4 <c a f> <c a f> <c a f> | <c a f>} >> r4 f,2
	\bar "||"

\pageBreak
% begin page 3

\key bf \major
	bf4.^( c8 d4. c8 | bf2 f) |
	<< \stemUp {\set fontSize = #-4 b'4\rest d8[^( c] bf4) d8[^( c] | bf4) b\rest a2\rest} \\
	 \stemDown {bf,1~ | bf2 f} >> |
	c'4.^( d8 ef4. d8 | c2 f,)

	\break

	<< \stemUp {\set fontSize = #-4 b'4\rest ef8[^( d] c4) ef8[^( d] | c4) b\rest a2\rest} \\
	 \stemDown {c,1~ | c2 f,} >> |
	d'4.^( ef8 f4. e8 | f4. e8 f4. d8) | ef4.^( f8 g4. fs8 | g4. fs8 g4. ef8)

	\break

	<bf f'>4.^( <bf bf'>8 <bf g'>4. ef8) | c2 <c f,> |
	<< \stemUp {bf1~ | bf4} \\
	 \stemDown {<f d>4 <f d> <f d> <f d> | <f d>} >> r4 f2 |
	bf4.^( c8 d4. c8 | bf2 f)

	\break

	<< \stemUp {\set fontSize = #-4 b'4\rest d8[^( c] bf4) d8[^( c] | bf4) b\rest a2\rest} \\
	 \stemDown {bf,1~ | bf2 f} >> |
	c'4.^( d8 ef4. d8 | c2 f,) |
	<< \stemUp {\set fontSize = #-4 b'4\rest ef8[^( d] c4) ef8[^( d] | c4) b\rest a2\rest} \\
	 \stemDown {c,1~ | c2 f,} >> |
	d'4.^( ef8 f4. e8

	\break

	f4. e8 f4. d8) | ef4.^( f8 g4. fs8 | g4. fs8 g4. ef8) | <bf f'>4.^( <bf bf'>8 <bf g'>4. ef8) | c2 <c f,> |
	<< \stemUp {bf1~ | bf4} \\
	 \stemDown {<f d>4 <f d> <f d> <f d> | <f d>} >> r4 r2

	\bar "||"
\pageBreak

% begin page 4

\repeat volta 2
{
	r2 \repeat "tremolo" 4 { <f' af>16^( d16) } |
	\repeat "tremolo" 4 { <ef g>16\( c } \repeat "tremolo" 4 { <ef g>16 c\) } |
	<c ef g>4 r r <b f' g>-.-^ | <c ef c'>-.-^ r r2 | r2 \repeat "tremolo" 4 { <g' bf>16^( e) } |
	\repeat "tremolo" 4 { <f a>16\( d) } \repeat "tremolo" 4 { <f a>16 d\) }

	\break

	<d f a>4 r r <cs g' a>-^ | <d f d'> r r2 | r1 | <ef ef'>2.-^ <d d'>4 | <c c'>2.-^ <d d'>4 | <ef ef'>2. <d d'>4 |
	<c c'>-^ <d d'>-^ <ef ef'>-^ <f f'>-^

	\break

	<gf gf'>-^ <ef ef'>-^ r2 | gf8-.-^[ f-.] ef4-. <c c'> <bf bf'> | <a a'> <f f'>-^ <g g'>-^ <a a'>-^ |
	<bf bf'>4.^( <c c'>8 <d d'>4. <c c'>8 | <bf bf'>2 <f f'>) |
	<< \stemUp { \set fontSize = #-4 e'4\rest d8[ c] bf4 d8[ c] | s64 bf4*15/16 s4} \\
	   \stemUp { bf'1^( | bf2)} \\
	 \stemDown { bf,1_( | bf2)} >> <f f'>2

	\break

	<c' c'>4.^( <d d'>8 <ef ef'>4. <d d'>8 | <c c'>2 <f f,>) |
	<< \stemUp { \set fontSize = #-4 f4\rest ef8[ d] c4 ef8[ d] | s64 c4*15/16 s4} \\
	   \stemUp { c'1^( | c2)} \\
	 \stemDown { c,1_( | c2)} >> <f f,>2 |
	<d d'>4.^( <ef ef'>8 <f f'>4. <e e'>8 | <f f'>4. <e e'>8 <f f'>4. <d d'>8)

	\break

	<ef ef'>4.^( <f f'>8 <g g'>4. <fs fs'>8 | <g g'>4. <fs fs'>8 <g g'>4. <ef ef'>8) |
	<f f'>4.^( <bf bf'>8 <g g'>4. <ef ef'>8) | <c ef c'>2 <c ef c'> |
\phrasingSlurUp
	<< \stemUp {\phrasingSlurUp bf'1\(} \\
	 \stemDown {<f d bf>4 <f d bf> <f d bf> <f d bf>} >>
}
\alternative
{
	{
\phrasingSlurUp
		<< \stemUp {bf4\)} \\
		 \stemDown {<f d bf>4} >> r4 r2
	}

	{
		<< \stemUp {bf4\)} \\
		 \stemDown {<f d bf>4} >> r4 #(set-octavation 1) <bf d f bf>4-^ r
	}
}
	\bar "|."
     }
     
     lower = \relative c {
       \clef bass
       \key f \major
       \time 2/2

	f8-.[ e-. d-. df-.] c4-. f-. | <cs cs,>-. <d d,>-. <df df,>2-^ |
	<c f a>4 <c f a>8-. r <df df,>4-._^ <df df,>-._^ | <c c,>_^ r <a a,>_^ r \bar "||"

	\break

\repeat volta 2
{
	<d d,>4-.-^ <f a>-. bf,-. <d g>-. | c <f a> a, <f' a> | g, <e' bf' c> c <bf' c> | f <a c> c, <a' c>

	\break

	<< \stemUp {d4\rest <a c> c\rest <a f> | c\rest <a f> c\rest <a f>} \\
	 \stemDown {f2 e | d c} >> |
	b4 <f' g> g, <f' g b> | c <e g c> <a a,> r

	\break

	<d, d,>-.-^ <f a> bf, <d g> | c <f a> a, <f' a> | g, <e' bf' c> c <bf' c> | f <a c> c, <a' c>

	\break

	f <a c> f <a d> | e <a c> e <a c> | <e gs d'>8 r <e gs d'> r <e gs d'> r <e gs> r
}
\alternative
{
	{
		<c c'>4 r <a a'> r
	}

	{
		<c c'>4 r r2
	}
}

	\bar "||"
\pageBreak

% begin page 2 (lower)

	<f f,>4 <a c> c, <a' c> | f <a c> c, <a' c> | f <a c> c, <a' c> | f <a c> <f f,>^^ <e e,>^^ |
	<d d,> <f a> d <f a> | g, <f' g b> g, <f' g b>

	\break

	c <e g c> b <e g> bf? <e g> <a a,>^^ <g g,>^^ | <f f,> <a c> e <g a cs> | d <f a d> <f f,>^^ <e e,>^^ |
	<d d,> <f a> c <ef f a> | bf <d f bf> <d d,>^^ <df df,>^^

	\break

	<c c,> <f a> a, <f' a> | g, <e' bf' c> c <e bf' c> | <f a c> r8 <e e,> <d d,>4 <c c,> | <f f,> r r2 |
	<f f,>4 <a c> c, <a' c> | f <a c> c, <a' c>

	\break

	f <a c> c, <a' c> | f <a c> <f f,>^^ <e e,>^^ | <d d,> <f a> d <f a> | g, <f' g b> g, <f' g b> |
	c <e g c> b <e g> | bf? <e g> <a a,>^^ <g g,>^^ | <f f,> <a c> e <g a cs>

	\break

	d <f a d> <f f,>^^ <e e,>^^ | <d d,> <f a> c <ef f a> | bf <d f bf> <d d,>^^ <df df,>^^ |
	<c c,> <f a> a, <f' a> | g, <e' bf' c> c <e bf' c> | <f a c> r8 <e e,> <d d,>4 <c c,> | <f f,> r f2
	\bar "||"

\pageBreak

% begin page 3 (lower)

\key bf \major
	bf,4 <f' bf d> f, <f' bf d> | bf, <f' bf d> f, <f' bf d> | bf, <f' bf d> f, <f' bf d> | bf, <f' bf d> f, <f' bf d> |
	a, <f' c' ef> f, <f' c' ef> | a, <f' c' ef> f, <f' c' ef>

	\break

	a, <f' c' ef> f, <f' c' ef> | a, <f' c' ef> f, <f' c' ef> | bf, <f' bf d> bf, <f' bf d> |
	bf, <f' bf d> bf, <f' bf d> | ef <g bf ef> ef <f bf ef> | ef <g bf ef> ef <g bf ef>

	\break

	<d bf' d>4.^( g8 ef4. c8) | f,4 <ef' bf'> f, <ef' a> | <bf bf,>4._( <c c,>8 <d d,>4. <c c,>8 | <bf bf,>4) r f'2 |
	bf,4 <f' bf d> f, <f' bf d> | bf, <f' bf d> f, <f' bf d>

	\break

	bf, <f' bf d> f, <f' bf d> | bf, <f' bf d> f, <f' bf d> | a, <f' c' ef> f, <f' c' ef> | a, <f' c' ef> f, <f' c' ef> |
	a, <f' c' ef> f, <f' c' ef> | a, <f' c' ef> f, <f' c' ef> | bf, <f' bf d> bf, <f' bf d>

	\break

	bf, <f' bf d> bf, <f' bf d> | ef <g bf ef> ef <f bf ef> | ef <g bf ef> ef <g bf ef> |
	<d bf' d>4.^( g8 ef4. c8) | f,4 <ef' bf'> f, <ef' a> | <bf bf,>4._( <c c,>8 <d d,>4. <c c,>8 |
	<bf bf,>4) r8 <f f'>_^ <d d'>4_^ <c c'>_^

	\bar "||"
\pageBreak

% begin page 4

\repeat volta 2
{
	<b b'>4 r b''2^( | c4) r <g, g,>4. <g g,>8 | <c c,>4. <d d,>8 <ef ef,>4 <d d,>^^ |
	<c c,> r8 <g g'> <ef ef'>4^^ <d d'>^^ | <cs cs'> r cs''2^( d4) r <a, a,>4. <a a,>8

	\break

	<d d,>4. <e e,>8 <f f,>4 <e e,> | <d d,> r8 <a a'> <f f'>4^^ <e e'>^^ | <ef? ef'?>2.^^ <d d'>4 |
	<c c'>2.^^ <d d'>4 | <ef ef'>2. <d d'>4 | <c c'>2. <d d'>4 | <ef ef'>^^ <d d'>^^ <ef ef'>^^ <f f'>^^

	\break

	<gf gf'>^^ <ef ef'>^^ r2 | <gf gf'>8-.-^[ <f f'>-.] <ef ef'>4-. <c c'> <bf bf'> | <a a'> f'^^ g^^ a^^ |
	<bf bf,> <f' bf d> f, <f' bf d> | bf, <f' bf d> f, <f' bf d> | bf, <f' bf d> f, <f' bf d> |
	bf, <f' bf d> f, <f' bf d>

	\break

	a, <f' c' ef> f, <f' c' ef> | a, <f' c' ef> f, <f' c' ef> | a, <f' c' ef> f, <f' c' ef> |
	a, <f' c' ef> f, <f' c' ef> | bf, <f' bf d> bf, <f' bf d> | bf, <f' bf d> bf, <f' bf d>

	\break

	ef <g bf ef> ef <g bf ef> | ef <g bf ef> ef <g bf ef> | <d bf' d> r8 g^( ef4. c8) |
	f,4 <ef' bf'> f, <ef' a> | \phrasingSlurDown <bf bf,>4.\( <c c,>8 <d d,>4. <c c,>8
}
\alternative
{
	{
		<bf bf,>4\) r8 <f f'> <d d'>4^^ <c c'>^^
	}

	{
		<bf bf'>4 r <bf bf'>^^ r
	}
}
	\bar "|."
     }
     
     dynamics = {
	s1*3\ff | s2 s2\sf

	s2\sf s2\mf | s1*2 | s2 s2\<

	s4. s8\! s2 | s1 | s2\< s2\! | s2 s2\sf

	s2\sf s2\mf | s1*3

	s4 s2.\< | s8 s8\! s2. | 
	\once \override DynamicLineSpanner #'direction = #'-1
	\once \override DynamicLineSpanner #'minimum-space = #'0
	\setTextCresc s1\< | s4 s4\! s2\sf | s4. s2\> s8\!

% begin page 2

	s1*6\ff

	s1*6

	s1*6

	s1*7

	s1*6 | s2 s2\p

% begin page 3

	s1*6\p

	s1*2 | s1\< s1\! | s1*2

	s2.\> s8 s8\! | s1*3 | s1*2\p

	s1*6 | s1\<

	s4 s2.\! | s1*2 | s2.\> s8 s8\! | s1*2 | s4. s4.\ff s4

% begin page 4

	s2 s2\ff | s1*5

	s1*2 | s1*2\< | s1\! | s1*2

	s1 | s2 | s2.\< s2.\! | s16 s1*15/16\ff | s1*3

	s1*6

	s1*7
     }
     
     pedal = {
     }
     
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
       \context PianoStaff <<
         \context Staff=upper << \upper \dynamics >>
         \context Staff=lower << \lower \dynamics >>
         \context Dynamics=pedal \pedal
       >>
       \midi { \tempo 4=200
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