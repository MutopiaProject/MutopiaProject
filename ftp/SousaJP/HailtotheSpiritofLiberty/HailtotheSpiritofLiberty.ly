\version "2.6.0"
\include "english.ly"
\header {
	title="Hail to the Spirit of Liberty"
	subtitle="MARCH."
	composer="JOHN PHILIP SOUSA."

 mutopiatitle = "Hail to the Spirit of Liberty"
 mutopiacomposer = "SousaJP"
 mutopiainstrument = "Piano"
 date = "1900/Mar"
 source = "The John Church Company"
 style = "Classical"
 copyright = "Public Domain"
 maintainer = "Benjamin Bloomfield"
 maintainerEmail = "bhb123@gmail.com"
 lastupdated = "2005/Oct/10"
 
 footer = "Mutopia-2005/10/17-608"
 copyright = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\paper {
	raggedlastbottom=##t
	betweensystempadding = #0
}

     upper = \relative c' {
       \clef treble
       \key f \major
       \time 2/2
     
	<f a c f>4-^ f8-.[ f-.] a-.[ f-. a-. c-.] | f-.[ c-. f-. a-.] c-. r 
		<< \stemDown {d4^^^( | bf) c4^^^( a) bf4^^^( | g)} \\
		   \stemDown {a4 | g g4 f f | e} \\
		   \stemDown {d4_( | d8) b\rest c4_( c8) b\rest bf4_(| bf)} >>
	r r \times 2/3 {c8[^( d e)]}

	\break

	\repeat volta 2
{
	f4 r8 f^( g4) r8 g8^( | a) r <f f'>4^( <e e'> <d d'>) | <c c'> r8 bf'^( g4) r8 a^( |
	f) r <e e,>4^( <d d,> <c c,>) | d r8 g^( e4) r8 c(

	\break

	f4) <g g,> <a a,> <c c,> | <f f,>^^ <e e,>8-.[ <f f,>-.] <g g,>4-^ <f f,>-^ |
	<a a,>-^ <g g,>-^ r \times 2/3 {c,,8[^( d e)]} | f4 r8 f^( g4) r8 g8^( |
	a) r <f f'>4^( <e e'> <d d'>)

	\break

	<c c'> r8 bf'8^( g4) r8 a8^( | f) r <e e,>4_( <d d,> <c c,>) | d r8 g^( e4) r8 c^( |
	f4 a) <a a'>^( <f f'> | <e e'>4. <d d'>8 <e e'>4 <c c'>)

\pageBreak
% begin page 2
}
\alternative
{
	{
		<bf bf'>4^( <a a'> <g g'>) \times 2/3 {c8[^( d e)]}
	}
	{
		<bf bf'>4^( <a a'> <g g'>) <c c'>
	}
}
	\repeat volta 2
{
	<e e'>2-> <d d'>-> | <d d'>->^( e->) | <df df'>->^( e->)

	\break

	<d d'>->^( e->) | <f f,>^( <g g,>4. <a a,>8 | <c c,>2 <f f,>) | <a a,>1 ~ | <a a,>2 a,

	\break

	g4-^ r f-^ r | d-^ r d4.^( f8) | d-.[ e-. f-. e-.] d4-. f-. | d r d4.^( f8 | a4) r c4.^( c,8)

	\break

	\acciaccatura c8 a'4 r \acciaccatura bf,8 g'4 r
}
\alternative
{
	{
		<< \stemUp {f1 ~ | f4 \stemDown f8[^( g] a[ bf c d])} \\
		 \stemDown {g,,4\rest <f a c> <f a c> <f a c> | <f a c> s2.} >>
	}

	{
		<< \stemUp {f'1 ~ | f4} \\
		 \stemDown {g,4\rest <f a c> <f a c> <f a c> | <f a c>} >> r4 \phrasingSlurUp f2\(
	}
}
\pageBreak
%begin page 3

	\key bf \major
	bf1 ~ | bf2 c | d1 ~ | d2 f\) | ef^( c | a'2. g4 | f1)^(

	\break

	d2) f | ef1 ~ | ef2 f | d1 ~ | d2 bf | a4^( a'2.) | g2^( c,)

	\break

	f1 ~ | f2 f, | bf1^( ~ | bf2 c | d1 ~ | d2 f) | ef\(^( c)

	\break

	a'2. g4 | f1\)^( | d2) d2 | ef1^( | f2 g | bf4. a8 bf4.) c8\( | bf4 gf f ef

	\break

	d2 ~ \times 2/3 {d8[ ef e]} \times 2/3 {f8[ ef d\)]} | c2 c | bf1 ~ | bf4 r r2 |
	\repeat volta 2
{
	r2 r4 r8 c16[^( d] | ef8[ d c d] ef4) d-^

	\break

	ef8[^( d c d)] ef4 d-^ | r1 | r2 r4 r8 ef16[^( f] | gf8[) f ef f] gf4 f-^ | gf8[ f ef f] gf4 f-^ |
	r2 r4 r8 ef16[^( f]

\pageBreak

	%begin page 4

	gf8[) f-. ef-. d-.] c2~ | c4 bf^^ a4.^^ ef'16[^( f] | gf8[) f-. ef-. d-.] c2~ | c4 bf^^ a4.^^ ef'16[^( f] |
	gf8[) f-. ef-. d-.] c4 bf | a^> g^> f^> e^>

	\break

	ef^> d^> c^> bf^> | a^> r r <f' f'> | <bf bf'>1~ | <bf bf'>2 <c c'> | <d d'>1~ | <d d'>2 <f f'> |
	<ef ef'> <c c'>

	\break

	<a' a'>2. <g g'>4 |
	<< \stemDown {f'1^( | d2)} \\
	   \stemDown {f,1_( | d2)} >> <f f'>2 | <ef ef'>1~ | <ef ef'>2 <f f'> | <d d'>1~ | <d d'>2 bf'

	\break

	a4^( <a a'>2.) | <g g'>2 <c c,> | <f f,>1~ | <f f,>2 f, | <bf bf,>1~ | <bf bf,>2 <c c,> | <d d,>1~

	\break

	<d d,>2 <f f,> | <ef ef,> <c c,> | <a a'>2. <g g'>4 |
	<< \stemDown {f'1^( | d2)} \\
	   \stemDown {f,1_( | d2)} >> <f f'>2 | <ef ef'>1 | <f f'>2 <g g'>

	\break

	<bf bf'>4.^( <a a'>8 <bf bf'>4. <c c'>8) | <bf bf'>4^> <gf gf'>^> <f f'>^> <ef ef'>^> |
	<< \stemDown {\phrasingSlurUp d'2\( s4 \times 2/3 {f,8[ ef d\)]}} \\
	   \stemDown {d2~ \times 2/3 {d8[ ef e]} s4} >> |
	c2 <c c'> |
}
\alternative
{
	{
		<bf bf'>1~ | <bf bf'>4 r r2
	}

	{
		<bf bf'>1~ | <bf bf'>4 r <bf d f bf>^> r
	}
}
	\bar "|."
     }
     
     lower = \relative c, {
       \clef bass
       \key f \major
       \time 2/2
     
	<f a c f>4 f'8[ f] a[ f a c] | f[ c f a,] c r
		<< \stemUp {fs,4^( | g8) d\rest e4^( f8) d\rest df4^( | c)} \\
		   \stemUp {fs,4_( | g) e_( f) df_( | c)} >> r4 r r

	\break
\repeat volta 2
{
	f4 <f' a c> c <g' bf c> | f, <f' a c> <f a c> <f a c> | g, <g' bf c> c, <g' bf c> |
	f, <f' a c> <f a c> <f a c> | bf, <g' bf> c, <g' bf c>

	\break

	f, <f' a c> <f a c> <f a c> | d <f a d> df <f g bf> | c <c e g c>-^ r \times 2/3 {c,8[_( d e)]} |
	f4 <f' a c> c <g' bf c> | f, <f' a c> <f a c> <f a c>

	\break

	g, <g' bf c> c, <g' bf c> | f, <f' a c> <f a c> <f a c> | bf, <g' bf> c, <g' c e> | f, <f' a c> <f f'>^( <d d'> |
	<c c'>4. <b b'>8 <c c'>4 <a a'>)

\pageBreak
% begin page 2 (lower)


}
\alternative
{
	{
		<g g'>4_( <f f'> <e e'>) r
	}

	{
		<g g'>4_( <f f'> <e e'>) r
	}
}
	\repeat volta 2
{
	g4 <g' bf c> c, <g' bf c> | g, <g' bf c> c, <g' bf c> | g, <g' bf c> c, <g' bf c>

	\break

	g, <g' bf c> c, <g' bf c> | f, <f' a c> c <f a c> | f, <f' a c> c <f a c> | f <a c> e <a c> | d, <a' c> c, <a' c>

	\break

	bf, <f' bf d> bf, <f' bf d> | bf, <f' bf d> <f bf d> <f bf d> | d <f a d> <f a d> <f a d> |
	bf, <f' bf d> <f bf d> <f bf d> | c <f a c> <f a c> <f a c>

	\break

	e <bf' c> c, <bf' c>
}
\alternative
{
	{
		<f f,>4 <e e,> <d d,> <c c,> | f, r r2
	}

	{
		<f' f,>4 <e e,> <d d,> <c c,> | <f f,> r r2
	}
}
\pageBreak

	%begin page 3 (lower)
\key bf \major
	bf,4 <f' bf d> <f bf d> <f bf d> | bf, <f' bf d> f <a c ef> | bf, <f' bf d> <f bf d> <f bf d> |
	bf, <f' bf d> <f bf d> <f bf d> | c <f a c ef> <f a c ef> <f a c ef> | f, <f' a c ef> <f a c ef> <f a c ef> |
	bf, <f' bf d> <f bf d> <f bf d>

	\break

	bf, <f' bf d> <f bf d> <f bf d> | c <f a c ef> <f a c ef> <f a c ef> | f, <f' a c ef> <f a c ef> <f a c ef> |
	bf, <f' bf d> <f bf d> <f bf d> | bf, <f' bf d> <f bf d> <f bf d> | c <f a c> <f a c> <f a c> |
	c <e bf' c> <e bf' c> <e bf' c>

	\break

	f, <f' a c> <f a c> <f a c> | f <b d> <c ef> <a c> | bf, <f' bf d> <f bf d> <f bf d> |
	bf, <f' bf d> f <a c ef> | bf, <f' bf d> <f bf d> <f bf d> | bf, <f' bf d> <f bf d> <f bf d> |
	c <f a c ef> <f a c ef> <f a c ef>

	\break

	f, <f' a c ef> <f a c ef> <f a c ef> | bf, <f' bf d> <f bf d> <f bf d> | bf, <bf' d>
		<< \stemUp {e4\rest <bf d> | d\rest <bf ef> <bf ef> <bf ef> | c\rest <bf d> c\rest <bf ef> |
			c\rest <bf f> <bf f> <bf f> | c\rest <bf gf> <bf gf> <bf gf>} \\
		 \stemDown {af2 | g1_( | f2) ef | d1_( | ef)} >>

	\break

	f,4 <f' bf d> <f bf d> <f bf d> | f, <f' a ef'> <f a ef'> <f a ef'> | bf, <f' bf d> <f bf d> <f bf d> |
	<f bf d> r \phrasingSlurDown <bf, bf,>2\(

	\repeat volta 2
{
	<a a,>4^^\) <d d,>^^ <a a,>^^ r | r2 r4 <d fs a d>

	\break

	r2 r4 <d fs a d> | a <d d,> <a a,>4. a16[_( bf] | c4) <f f,> <c c,> r | r2 r4 <f a c f> |
	r2 r4 <f a c f> | c <f f,> <c c,> r

	\pageBreak
%begin page 4 (lower)


	r2 r4 <bf bf,>^^ | <a a,>^^ <g g,>^^ <f f,>^^ r | r2 r4 <bf bf,>^^ | <a a,>^^ <g g,>^^ <f f,>4.^^ ef'16[^( f] |
	gf8[) f ef d] c4 bf | a <g g'> <f f'> <e e'>

	\break

	<ef ef'> <d d'> <c c'> <bf bf'> | <a a'> <g g'> <a a'> f' | bf <f' bf d> <f bf d> <f bf d> |
	bf, <f' bf d> f <a c ef> | bf, <f' bf d> <f bf d> <f bf d> | bf, <f' bf d> <f bf d> <f bf d> |
	c <f a c ef> <f a c ef> <f a c ef>

	\break

	f, <f' a c ef> <f a c ef> <f a c ef> | bf, <f' bf d> <f bf d> <f bf d> | bf, <f' bf d> <f bf d> <f bf d> |
	c <f a c ef> <f a c ef> <f a c ef> | f, <f' a c ef> <f a c ef> <f a c ef> | bf, <f' bf d> <f bf d> <f bf d> |
	bf, <f' bf d> <f bf d> <f bf d>

	\break

	c <f a c> <f a c> <f a c> | c <e bf' c> <e bf' c> <e bf' c> | f, <f' a c> <f a c> <f a c> |
	f <b d> <c ef> <a c> | bf, <f' bf d> <f bf d> <f bf d> | bf, <f' bf d> f <a c ef> |
	bf, <f' bf d> <f bf d> <f bf d>

	\break

	bf, <f' bf d> <f bf d> <f bf d> | c <f a c ef> <f a c ef> <f a c ef> | f, <f' a c ef> <f a c ef> <f a c ef> |
	bf, <f' bf d> <f bf d> <f bf d> | bf, <bf' d>
		<< \stemUp {e4\rest <bf d> | d\rest <bf ef> <bf ef> <bf ef> | d\rest <bf d> c\rest <g bf ef>} \\
		 \stemDown {af2 | g1 | f2 ef} >>

	\break

	d4 <f bf> <f bf> <f bf> | <ef ef,> <gf bf ef> <gf bf ef> <gf bf ef> | f, <f' bf d> <f bf d> <f bf d> |
	f, <f' a c ef> <f a c ef> <f a c ef>
}
\alternative
{
	{
		bf,4 <f' bf d> <f bf d> <f bf d> | <f bf d> r <bf, bf,>2
	}

	{
		bf4 <f' bf d> <f bf d> <f bf d> | <f bf d> r <bf, bf,>^> r
	}
}
	\bar "|."
     }
     
     dynamics = {
	s1\f | s1*2 | s2. s4*2/3\< s8*2/3\!

	s1\mf | s4 s2\< s4\! | s16 s1*15/16\mf | s4 s2\< s4\! | s1

	s1 | s16 s1*7/16\ff s4\< s4\! | s16 s1*15/16\ff | s1*2

	s1*5

% begin page 2

	s1*2 | s16 s1*15/16\ff | s1*2

	s1*4 | s2 s2\p

	s1*3 | s2 s4.\< s8\! | s1

	s1*4 | s2 s2\p

% begin page 3

	s1*7

	s1*7

	s1*7

	s1*4 | s2.\< s4\! | s1 | s2.\> s4\!

	s2. s4*2/3\< s8*2/3\! | s2 s4\> s4\! | s1*2 | s16 s1*7/16\ff s4. s16\< s16\! | s2. s4\fz

	s2. s4\fz | s1*2 | s2. s4\fz | s2. s4\fz | s1

%begin page 4

	s1*5 | s4 \setTextCresc s4\< s2\!

	s1 | s2. s4\ff | 
	\once \override TextScript #'extra-offset = #'( -0.5 . -1.5 )
	s1^\markup { \italic grandioso. } | s1*4

	s1*7

	s1*7

	s1*6 | s2\< s2\!

	s1*8
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
           \override VerticalAlignment #'forced-distance = #6.2
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


