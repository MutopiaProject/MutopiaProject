\version "2.6.0"
\include "english.ly"
\header {

 title="MARCH: THE GLADIATOR."
 composer="JOHN PHILIP SOUSA."
 
 mutopiatitle = "The Gladiator"
 mutopiacomposer = "SousaJP"
 mutopiainstrument = "Piano"
 date = "1886"
 source = "Harry Coleman"
 style = "Classical"
 maintainer = "Benjamin Bloomfield"
 maintainerEmail = "bhb123@gmail.com"
 license = "Public Domain"
 lastupdated = "2005/October/30"
 copyright = "Public Domain"

 footer = "Mutopia-2005/11/19-623"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 }  \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\paper {
%	hsize=8.5\in
%	vsize=11\in
	betweensystempadding = #0
	raggedlastbottom=##f
}

     upper = \relative c' {
       \clef treble
       \key f \major
       \time 2/2
     
	r2 r4 <f d' f>-> | r2 r4 <f d' f>-> | r <f d' f>->
		<< \stemDown {<e' g>2^>^( | f4) } \\
		 \stemDown {g,2_( f4) } \\
		\stemUp {s64 d'4*15/16 cs4 | \stemDown d} >> d4^( a4. d8)

	\break

\repeat volta 2
{
	bf1~ | bf4 g_( e4. a8) | d,1^(~ | d4 f a d) | ef2. ef4

	\break

	e?2. e4 | a,1~ | a4 d^( a4. d8) | bf1~

	\break

	bf4 g_( e4. a8) | d,1^(~ | d4 f a d) | <f f,>2.^> <e e,>4

	\break

	<f f,>2.^> <e e,>4 | <a a,> r <a e cs a>^> r
}
\alternative
{
	{
		r4 d, a4.^( d8)
	}

	{
		r4 <a a'>-. <gs gs'>-. <a a'>-.
	}
}

\pageBreak

%begin page 2

\repeat volta 2
{
	<bf bf'>2.^> <c c'>4^. | <d d'>-. <c c'>-. <d d'>-. <e e'>-. | <a a,>2.^> <bf bf,>4-. |
	<c c,>-. <b b,>-. <c c,>-. <d d,>-. | <g, g,>2.^> <a a,>4-. | <bf bf,>-. <c c,>-. <d d,>-. <e e,>-.

	\break

	<g g,>4.^>( <f f,>8) <e e,>4.^>( <f f,>8) | <c c,>4 <c c,> <d d,>4.^> <a a,>8 | <bf bf,>2.^> <c c,>4-. |
	<d d,>-. <c c,>-. <d d,>-. <e e,>-. | <a, a,>2.^> <bf bf,>4-. | <c c,>-. <b b,>-. <c c,>-. <d d,>-.

	\break

	<g, g,>2.^> <a a,>4-. | <bf bf,>-. <c c,>-. <d d,>-. <e e,>-.
}
\alternative
{
	{
		<f f,>1~ | <f f,>4. <e e,>8 <d d,>4. <c c,>8
	}
	{
		<f f,>1~ | <f f,>4 d,,_( ef e)
	}
}

\break

\key bf \major
\repeat volta 2
{
	f2 g4._( a8) | bf2 d | <f ef a,>1^>^(~ | <f ef a,>4 ef b4. c8) | <d f,>1^>^(~ | <d f,>4 c g4. a8)

	\break

	g1~ | g2 f | f g4._( a8) | bf2 d | <bf ef g>1~^( | <bf ef g>4 f' ef gf,)

	\break

	bf4.^( f8 d'4. c8) | <ef a, f>2\( <a, f ef>
}
\alternative
{
	{
		bf4\) r r2 | r4 d,_( ef e)
	}
	{
		bf'4 r r2 | r4 ef8[^( d)] d[^( c)] c[^( bf)]
	}
}

\pageBreak

%begin page 3 (final page)

\repeat volta 2
{
	a1~ | a4 d8[( c)] c[( bf)] bf[( a)] | g1~ | g4 ef'8[( d)] d[( c)] c[( bf)] | a1~

	\break

	a4 d8[( c)] c[( bf)] bf[( a)] | g1~ | g4 <g g'>8-.[ <fs fs'>-.] <g g'>-.[<a a'>-. <bf bf'>-. <c c'>-.] |
	<d d'>1~ | <d d'>4 <g g,>8-.[ <fs fs,>-.] <g g,>-.[ <a a,>-. <bf bf,>-. <c c,>-.]

	\break

	<d d,>1~ | <d d,>4 d,8-.[ d-.] d4-. d8-.[ d-.] | d4 d8[ d] d4 d8[ d] |
	\repeat tremolo 4 {d,16[( d')]} \repeat tremolo 4 {d,16[( d')]} | <d d,>4 <d d,>-> <ef ef,>-> <e e,>->

	\break

	<f f,>2^\markup {\column {\bold "Grandioso." " "}} <g g,>4.( <a a,>8) | <bf bf,>2 <d d,> | <f f,>1~ | <f f,>4 <ef ef,> <b b,>4.( <c c,>8) ||
	<d d,>1~ | <d d,>4 <c c,> <g g,>4.( <a a,>8)

	\break

	<g g,>1^>~ | <g g,>2 <f f,> | <f f,> <g g,>4.( <a a,>8) | <bf bf,>2 <d d,> | <g g,>1~ | <g g,>4 <f f,> <ef ef,> <gf, gf,>

	\break

	<bf bf,>4. <f f,>8 <d d'>4. <c c'>8 | <ef ef'>2 <a a,>
}
\alternative
{
	{
		<bf bf,>4 r r2 | r4 ef,8[( d)] d[( c)] c[( bf)]
	}
	{
		<< \stemDown { bf'1^( | bf4) } \\
		   \stemDown { bf,1_( | bf4) } \\
		   \stemDown { e4\rest <d f> <d f> <d f> | <d f> } >> r4 r2
	}
}
\bar "|."
     }
     
     lower = \relative c {
       \clef bass
       \key f \major
       \time 2/2
     
	<a a,>4.^> <a a,>8( <bf bf,>2) | <a a,>4.^> <a a,>8( <gs gs,>2) |
	<a a,>4.^> <a a,>8 <bf bf,>4_( <a a,> | <d, d,>) r r2

	\bar "||"
	\break

\repeat volta 2
{
	g4 <g' bf d> <g bf d> <g bf d> | a, <g' a cs> <g a cs> <g a cs> |
	d <f a> a, <f' a> | f, <f' a> d, <f' a d> |
	<g g,>^> <g bf ef>8[ <g bf ef>] <g bf ef>4 <g bf ef>

	\break

	<gs gs,>4^> <gs b e>8[ <gs b e>] <gs b e>4 <gs b e> |
	<a a,> <a cs e>8[ <a cs e>] <a cs e>4 <a cs e> | <d a f d>1^> |
	g,,4 <g' bf d> <g bf d> <g bf d>

	\break

	a, <g' a cs> <g a cs> <g a cs> | d <f a> a, <f' a> |
	f, <f' a> d, <f' a d> | bf,^> <f' gs d'>8[ <f gs d'>] <f gs d'>4 <e gs d'>

	\break

	bf^> <f' gs d'>8[ <f gs d'>] <f gs d'>4 <e gs d'> | <a cs> r <a e cs a>^> r
}
\alternative
{
	{
		r1
	}
	{
		r1
	}
}
\pageBreak

% begin page 2 (lower)

\repeat volta 2
{
	<g g,>4 <bf c e> c, <bf' c e> | <g g,> <bf c e> c, <bf' c e> | <f f,> <a c f> c, <a' c f> | <f f,> <a c f> c, <a' c f> |
	<e e,> <bf' c e> c, <bf' c e> | <e, e,> <bf' c e> c, <bf' c e>

	\break

	<f f,> <a c f> <f gs b f'>2^>~ | <f a c f>4 <c' c,>^> <a a,>^> <f f,>^> | <g g,> <bf c e> c, <bf' c e> |
	<g g,> <bf c e> c, <bf' c e> | <f f,> <a c f> c, <a' c f> | <f f,> <a c f> c, <a' c f>

	\break

	<e e,> <bf' c e> c, <bf' c e> | <e, e,> <bf' c e> c, <bf' c e>
}
\alternative
{
	{
		f4 <f a c f> <f a c f> <f a c f> | <f a c f> r r2
	}
	{
		f4 <f a c f> <f a c f> <f a c f> | <f a c f> r r2
	}
}

\break

\key bf \major
\repeat volta 2
{
	bf,4 <f'bf d> f, <f' bf d> | bf, <f' bf d> f, <f' bf d> | c <f a ef'> f, <f' a ef'> | c <f a ef'> f, <f' a ef'> |
	a, <f' a ef'> f, <f' a ef'> | a, <f' a ef'> f, <f' a ef'>

	\break

	bf, <e bf' df>8[ <e bf' df>] <e bf' df>4 <e bf' df> | bf <f' bf d?> f, <f' bf d> | bf, <f' bf d> f, <f' bf d> |
	bf, <f' bf d> f, <f' bf d> | ef, <g' bf ef> ef <g bf ef> | ef <g bf ef> ef <gf bf ef>

	\break

	f <bf d> f <bf d> | <f f,> <f a c> <f f,> <ef f a>
}
\alternative
{
	{
		<bf d f bf> <d d,>_( <ef ef,> <e e,> | <f f,>) r r2
	}
	{
		<bf f d bf>4 <bf, bf,>_( <c c,> <cs cs,> | <d d,>) r r2
	}
}

\pageBreak

% begin page 3 (lower)

\repeat volta 2
{
	r4 <ef ef,>^> <d d,>^> <cs cs,>^> | <d d,>^> r r2 | r4 <a a,>^> <g g,>^> <fs fs,>^> | <g g,>^> r r2 |
	r4 <ef ef'>^> <d d'>^> <cs cs'>^>

	\break

	<d d'>^> r r2 | r4 <a a'>^> <g g'>^> <fs fs'>^> <g g'>^> r r2 | r4 <g' g'>8->[ <fs fs'>->] <g g'>4-> <bf bf'>-> |
	<d d,>^> r r2

	\break

	r4 <g g,>8[ <fs fs,>] <g g,>4 <bf bf,> | <d, d,> r r2 | r1 |
	\repeat tremolo 4 {d,16[( d')]} \repeat tremolo 4 {d,16[( d')]} | <d d,>4 r r2

	\break

	bf4 <f' bf d> <f f,> <f bf d> | bf, <f' bf d> <f f,> <f bf d> | c <f a ef'> <f f,> <f a ef'> |
	c <f a ef' > <f f,> <f a ef'> | a, <f' a c ef> <f f,> <f a c ef> | a, <f' a c ef> f, <f' a c ef>

	\break

	bf, <e g bf df> bf <e g bf df> | bf <f' bf d> bf, <f' bf d> | bf, <f' bf d> <f f,> <f bf d> | bf, <f' bf d> <f f,> <f bf d> |
	<ef ef,> <g bf ef> <ef ef,> <g bf ef> | <ef ef,> <g bf ef> <ef ef,> <gf bf ef>

	\break

	<f f,> <f bf d> <f f,> <f bf d> | <f f,> <f a c ef> <f f,> <f a c ef>
}
\alternative
{
	{
		<bf d>4 <bf, bf,>_( <c c,> <cs cs,>) | <d d,> r4 r2
	}
	{
		<bf' d>4 <bf bf,>^> <f f,>^> <d d,>^> | <bf bf,>^> r r2
	}
}
\bar "|."
     }
     
     dynamics = {
	s1\ff | s1*2 | s4 s2.\p

	s1\p | s1*2 | s2.\< s8 s8\! | s1

	s1 | s1\f | s4 s2.\p | s1

	s1*2 | s2.\< s4\! | s1\ff

	s1*2 | s4 s2.\p | s4 s2.\ff

% begin page 2

	s1\ff | s1*5

	s1*6

	s1*5 | s4 s2.\p

	s1\p | s1*5

	s1*3 | s2\< s2\! | s1*2

	s1 | s2.\< s4\! | s4 s2\< s4\! | s1*2 | s32 s32*31\ff

% begin page 3

	s1\f | s1*4

	s1*5

	s1 | s1\f | s1*2 | s2.\< s4\!

	s1\ff | s1*5

	s1*6

	s1*6
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
           \override VerticalAlignment #'forced-distance = #5.5
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
