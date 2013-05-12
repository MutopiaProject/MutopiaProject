\version "2.6.0"
\include "english.ly"
\header {
 title="The Invincible Eagle."
 subtitle="MARCH."
 composer="JOHN PHILIP SOUSA."
 
 mutopiatitle = "The Invincible Eagle"
 mutopiacomposer = "SousaJP"
 mutopiainstrument = "Piano"
 date = "1901"
 source = "The John Church Company"
 style = "Classical"
 maintainer = "Benjamin Bloomfield"
 maintainerEmail = "bhb123@gmail.com"
 license = "Public Domain"
 lastupdated = "2005/October/30"
 copyright = "Public Domain"

 footer = "Mutopia-2005/11/09-624"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 }  \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\paper {
	raggedlastbottom=##f
%	hsize = 8.5\in
%	vsize = 11\in
	betweensystempadding = #0
}

     upper = \relative c'' {
       \clef treble
       \key d \major
       \time 6/8
     
	<d fs a d>4.^^ <d g b>4^^ b8-. | d8-.[ cs-. d-.] b4-. <b b'>8 | <a d a'>4.^^ <b d fs>4^^ fs'8-. |
	a-.[ gs-. a-.] fs4-. fs8^( | g[) d\rest g]^( fs[) d\rest fs]^(

	\break

	e[) b\rest e]^( d[) b\rest d] | <a a'>4 r8 <a cs e a>4^^ r8 | r4 fs'8\( g4 gs8
\repeat volta 2
{
	a4 fs8\) d'-.[ cs-. b-.] | a-.[ d,\rest fs-.] d-.[ b\rest fs'-.] | <e cs g>2.^^(

	\break

	<d a fs>8)[ r fs] d[ r fs] | <d g b>2.^^( | <d fs a>8[) r fs] d[ r fs] | <e cs g>2.^^( |
	<d a fs>4) <d fs>8^( <e g>4 <es gs>8) | a8-.[ g-. fs-.] d'-.[ cs-. b-.] | a-.[ d,\rest fs-.] d-.[ r fs-.]

	\break

	<e cs g>2.^^( | <d a fs>8)[ r fs] d[ r fs] | a[ r fs] a[ r b] | cs[ b a] b[ r b] | a4 r8 <a e cs a>4^^ r8
}
\alternative
{
	{
		r4 fs8^( g4 gs8)
	}
	{
		r4 <a a,>8^( <gs gs,>4 <a a,>8)
	}
}

\pageBreak

% begin page 2

	<b d, b>4.^( <a d, a> | <cs g cs,> <d fs, d>) | d,8^^ r r <fs a,>4.^^~ | <fs a,>8[ d cs] d[ e fs] |
	e^^ r r <cs g'>4.^^~ | <cs g'>8[ e ds] e[ fs g] | fs4^^ r8 \acciaccatura es'8 fs4 r8

	\break

	a,4 <a a,>8^( <gs gs,>4 <a a,>8) | <b d, b>4.^( <a d, a> | <cs g cs,> <d fs, d>) | d,8^^ r r <fs a,>4.^^~ |
	<fs a,>8[ d cs] d[ e fs] | g^^ r r <b g b,>4.^^

	\break

	b8-.[ a-. g-.] bf-.[ a-. g-.] | fs[ e d] e[ r e] | d r <a a'>^( <gs gs'>4 <a a'>8) |
	<b' d, b>4.^( <a d, a> | <cs g cs,> <d fs, d>) | d,8^^ r r <fs a,>4.^^~ | <fs a,>8[ d cs] d[ e fs]

	\break

	e^^ r r <cs g'>4.^^~ | <cs g'>8[ e ds] e[ fs g] | fs4^^ r8 \acciaccatura es'8 fs4 r8 |
	a,4 <a a,>8^( <gs gs,>4 <a a,>8) | <b d, b>4.^( <a d, a> | <cs g cs,> <d fs, d>)

	\break

	d,8^^ r r <fs a,>4.^^~ | <fs a,>8[ d cs] d[ e fs] | g^^ r r <b g b,>4.^^ |
	b8-.[ a-. g-.] bf-.[ a-. g-.] | fs[ e d] e[ r e] | d4 r8 d4^( c8)

\pageBreak

% begin page 3

	\key g \major
	b4.( d | b') \acciaccatura as8 b4.^^ | \acciaccatura as8 b8^^ r r <b d, b>4.~ | <b d, b> a4 g8 |
	fs4.( e | c e) | b2.^(

	\break

	b4.) d4( cs8) | c?4.^( d | c') \acciaccatura b8 c4.^^ | \acciaccatura b8 c8^^ r r <c fs, c>4.~ |
	<c fs, c>^( <b b,>4 <a a,>8) | <g g,>4.^( <fs fs,>4 <g g,>8) | <a a,>4. <e e,>

	\break

	<a a,>2.~ | <a a,>4. d,4^( c8) | b4.( d | b') \acciaccatura as8 b4. | \acciaccatura as8 b8^^ r r <b d, b>4.~ |
	<b d, b> a4^( g8 | fs4. e)

	\break

	f4^^( e8) f4^^( e8) | <c a' c>2.^^~ | <c a' c>4. g'4( ef8) | d4.^( cs4 d8 | ef4. g) | d'8 r r g,4.^( | g) fs4^( g8)

	\break

	<b b,>4.^( d,) | <a a'>^( d) |
	<< \stemDown { b,4\rest <b' d>8 <b d>4 <b d>8 | s4} \\
	    \stemUp  {\tieNeutral <g g'>2.~ | <g g'>4 } >> <b b'>8 <b b'>4 <b b'>8 |

\repeat volta 2
{
	\override Staff.NoteCollision
         #'merge-differently-headed = ##t
	<< \stemUp {b'2.^^ | as2.^^} \\
	 \stemDown { b8[ <g e>^. <g e>^.] <g e>^.[ <g e>^. <g e>^.] | as[ <g e>^. <g e>^.] <g e>^.[ <g e>^. <g e>^.]} >> |
	<b g e>4.^^ <b fs ds>4.^^

	\break

	<b g e>4.^^ <bf g e>^^ |
	<< \stemUp {a2.^^ | gs2.^^} \\
	 \stemDown {a8[ <f d>^. <f d>^.] <f d>^.[ <f d>^. <f d>^.] | gs[ <f d>^. <f d>^.] <f d>^.[ <f d>^. <f d>^.]} >> |
	<a f d>4.^^ <a e cs>^^ | <a f d>^^ <af f d>^^ | <g ef c>^^ <c ef, c>^^ | <bf ef, bf>^^ <af ef af,>^^ |
	<g ef bf>^^ <ef c>^^

\pageBreak

% begin page 4

	<g ef bf>4.^^ <ef c>^^ | <g ef bf>^^ <ef c>^^ | <d bf'>^^ <cs g'>^^ | <d fs d'>8^^ r r <d d'>4.^^~ |
	<d d'>4 <d d'>8 <d d'>4 <d d'>8 | <d d'> r r <d d'>4.^^~ | <d d'>4 <d d'>8 <d d'>4 <d d'>8 |
	<d d'>4^^ r8 <d d'>4^^ r8 <d d'>4^^ r8 <d d'>4^^( <c c'>8 \bar "||"

	\break

	<b b'>4.( <d d'>) | #(set-octavation 1) <b' b'> \acciaccatura <as as'>8 <b b'>4. |
	\acciaccatura <as as'>8 <b b'>8 r r <b b'>4.~ | <b b'> <a a'>4 <g g'>8 | <fs fs'>4. <e e'> | <c c'> <e e'> |
	<b b'>2.~

	\break

	<b b'>4. <d d'>4( <cs cs'>8) | <c? c'?>4. <d d'> | <c' c'> \acciaccatura b'8 <c c,>4.^^ |
	\acciaccatura b8 <c c,>8 r r <c c,>4.~ | <c c,>4. <b b,>4 <a a,>8 | <g g,>4. <fs fs,>4( <g g,>8) |
	<a a,>4. <e e,>

	\break

	<a a,>2.~ | <a a,>4. <d, d,>4 <c c,>8 | <b b,>4. <d d,> | <b b'> \acciaccatura as'8 <b b,>4. |
	\acciaccatura as8 <b b,>8^^ r r <b b,>4.~ | <b b,> <a a,>4 <g g,>8 | <fs fs,>4. <e e,>

	\break

	<f f,>4^^( <e e,>8) <f f,>4^^( <e e,>8) | <c c'>2.~ | <c c'>4. <g g'>4 <ef ef'>8 |
	<d d'>4. <cs cs'>4 <d d'>8 | <ef ef'>4. <g g'> | <d' d'>8 r r <g g,>4.~

	\break

	<g g,>4. <fs fs,>4( <g g,>8) | <b b,>4.^^ d, | <a a'>^^ d
}
\alternative
{
	{
		<g g,>2.~ | <g g,>4 #(set-octavation 0) <b, b,>8 <b b,>4 <b b,>8
	}
	{
		#(set-octavation 1) <g g'>2.~ | <g g'>4 r8 <g b g'>4^^ r8
	}
}
\bar "|."
     }
     
     lower = \relative c {
       \clef bass
       \key d \major
       \time 6/8

% merge the noteheads
	\override Staff.NoteCollision
         #'merge-differently-dotted = ##t

     
	<d d,>4.^^ <g g,>4^^ b,8-. | d-.[ cs-. d-.] b4.-. | <fs fs'>4.^^ <b b'>4^^ fs'8-. |
	a-.[ gs-. a-.] fs4-. fs8^( | g[) r g]^( fs[) r fs]^(

	\break

	e[) r e]^( d[) r d] | a4 r8 <a a,>4^^ r8 | r2.
\repeat volta 2
{
	d8[ r <fs a>] a,[ r <fs' a>] | <d d,>[ r <fs a>] fs,[ r <fs' a>] | a,4_( b8 cs[ b a])

	\break

	d[ r <fs a>] a,[ r <fs' a>] | g,4_( a8 b[ a g]) | d'[ r <fs a>] a,[ r <fs' a>] | a,4_( b8 cs[ b a]) |
	<< \stemUp {d4 d'8^( cs4 b8) } \\
	 \stemDown {d,4 b8\rest b4\rest b8\rest} >> |
	d8[ r <fs a>] a,[ r <fs' a>] | <d d,>[ r <fs a>] fs,[ r <fs' a>]

	\break

	a,4_( b8 cs[ b a]) | d[ r <fs a>]
		<< \stemUp {b,8[ r <fs' b>] | fs[ r <a d>] f[ r <a d>]} \\
		 \stemDown {b,4._( | fs' f)} >> |
	e8[ r <a cs>] e[ r <gs d'>] | <a cs>4 r8 <a a,>4^^ r8
}
\alternative
{
	{
		r2.
	}
	{
		r2.
	}
}

\pageBreak

% begin page 2 (lower)

	<g g,>4._( <fs fs,> | <e e,> <d d,>) | <d d,>8^^[ r <fs a>] a,[ r <fs' a>] |
	<d d,>^^[ r <fs a>] a,[ r <fs' a>] | cs[ r <g' a>] a,[ r <g' a>] |
	e[ r <g a>] a,[ r <g' a>] | d[ r <fs a>] a,[ r <fs' a>]

	\break

	d[ r <fs a>] a,[ r <fs' a>] | <g g,>4._( <fs fs,> | <e e,> <d d,>) |
	<d d,>8[ r <fs a>] a,[ r < fs' a>] | d[ r <fs a>] << \stemUp {c8[ r <fs a>]} \\
		\stemDown { c4.} >> | b8[ r <g' b>] g,[ r <g' b>]

	\break

	g[ r <b e>] e,[ r <g bf e>] | a,[ r <fs' a d>] a,[ r <g' a>] | <d fs a> r r r4 r8 |
	<g g,>4._( <fs fs,> | <e e,> <d d,>) | <d d,>8^^[ r <fs a>] a,[ r <fs' a>] |
	d^^[ r <fs a>] a,[ r <fs' a>]

	\break

	cs[ r <g' a>] a,[ r <g' a>] | e[ r <g a>] a,[ r <g' a>] | d[ r <fs a>] a,[ r <fs' a>] |
	d[ r <fs a>] a,[ r <fs' a>] | <g g,>4._( <fs fs,> | <e e,> <d d,>)

	\break

	<d d,>8[ r <fs a>] a,[ r < fs' a>] | d[ r <fs a>] << \stemUp {c8[ r <fs a>]} \\
		\stemDown { c4.} >> | b8[ r <g' b>] g,[ r <g' b>] |
	g[ r <b e>] e,[ r <g bf e>] | a,[ r <fs' a d>] a,[ r <g' a>] | <d fs a>4 r8 r4 r8

\pageBreak

% begin page 3 (lower)

\key g \major

	g8[ r <b d>] d,[ r <b' d>] | g[ r <b d>] d,[ r <b' d>] | g[ r <b d>] d,[ r <b' d>] | g[ r <b d>] d,[ r <b' d>] |
	a[ r <c d>] d,[ r <c' d>] | a[ r <c d>] d,[ r <c' d>] | g[ r <b d>] d,[ r <b' d>]

	\break

	g[ r <b d>] d,[ r <b' d>] | a[ r <c d>] d,[ r <c' d>] | a[ r <c d>] d,[ r <c' d>] | a[ r <c d>] d,[ r <c' d>] |
	a[ r <c d>] d,[ r <c' d>] | e,[ r <g b e>] e[ r <g b e>] | c,[ r <a' c e>] cs,[ r <a' cs e>]

	\break

	d,[ r <fs a d>] a,[ r <fs' a d>] | fs,[ r <fs' a d>] \stemUp <d d,>[ r <fs a d>] |
	\stemNeutral g[ r <b d>] d,[ r <b' d>] | g[ r <b d>] d,[ r <b' d>] | g[ r <b d>] d,[ r <b' d>] |
	g[ r <b d>] d,[ r <b' d>] |
	<< \stemUp { gs[ c\rest <d e>] b[ c\rest <d e>]
		\break

		gs,[ c\rest <d e>] e,[ r <d' e>]} \\
	 \stemDown { gs,4._( b \break gs e) } >> |

	a8[ r <c e>] a[ r <c e>] |
	<< \stemUp { c8[ e\rest <ef a>] c[ e\rest <ef a>] | b[ c\rest <d g>] b[ c\rest <d g>] |
		c[ c\rest <ef g>] c[ c\rest <ef g>] | b[ c\rest <d g>] g,[ a\rest <b d>] | e,[ a\rest <g c>] ef[ a\rest <g c>]

	\break

		d[ f\rest <g b>] d[ f\rest <g b>] | d[ f\rest <fs a>] d[ f\rest <fs a>]} \\
	 \stemDown {c'4. c | b b | c c | b g | e ef \break d d | d d} >> |

	g,8[ r <g' b>] d[ r <g b>] | <g g,>4 r8 r4 r8

\repeat volta 2
{
	<e e,>4^^ <fs fs,>8 <g g,>4 <e e,>8 | <c c,>4^^ <d d,>8 <e e,>4 <c c,>8 | <b b,>8^^[ e,^. g^.] b4^^ b8

	\break

	<e e,>4.^^ <cs cs,>^^ | <d d,>4^^ <e e,>8 <f f,>4 <d d,>8 | <bf bf,>4^^ <c c,>8 <d d,>4 <bf bf,>8 |
	<a a,>8^^[ d, f] a4^^ a8 | <d d,>4.^^ <b b,>^^ | <c c,>^^ <af af'>^^ | <g g'>^^ <f f'>^^ | <ef ef'>^^ <af af'>^^

\pageBreak

% begin page 4 (lower)

	<ef ef'>^^ <af af'>^^ | <ef ef'>^^ <c c'>^^ | <g' g'>^^ <ef ef'>^^ | <d d'>8^^ r r <d d'>4.~ |
	<d d'>4 <d d'>8 <d d'>4 <d d'>8 | <d d'>8 r r <d d'>4.^^~ | <d d'>4 <d d'>8 <d d'>4 <d d'>8 |
	<d d'>4^^ r8 <d d'>4^^ r8 | <d d'>4^^ r8 <d d'>4^^ r8

	\bar "||"
	\break

	<g g'>8[ r <b' d>] d,[ r <b' d>] | <g g,>[ r <b d>] d,[ r <b' d>] | <g g,>[ r <b d>] d,[ r <b' d>] |
	<g g,>[ r <b d>] d,[ r <b' d>] | <a a,>[ r <c d>] d,[ r <c' d>] | <a a,>[ r <c d>] d,[ r <c' d>] |
	<g g,>[ r <b d>] d,[ r <b' d>]

	\break

	<g g,>[ r <b d>] d,[ r <b' d>] | <a a,>[ r <c d>] d,[ r <c' d>] | <a a,>[ r <c d>] d,[ r <c' d>] |
	<a a,>[ r <c d>] d,[ r <c' d>] | <a a,>[ r <c d>] d,[ r <c' d>] | e,[ r <g b e>] e[ r <g b e>] |
	c,[ r <a' c e>] cs,[ r <a' cs e>]

	\break

	d,^^[ r <fs a d>] a,[ r <fs' a d>] | fs[ r <a d>] d,[ r <fs a d>] | <g g,>[ r <b d>] d,[ r <b' d>] |
	<g g,>[ r <b d>] d,[ r <b' d>] | <g g,>[ r <b d>] d,[ r <b' d>] | <g g,>[ r <b d>] d,[ r <b' d>] |
	<< \stemUp { gs[ c\rest <d e>] b[ c\rest <d e>]
		\break

		gs,[ c\rest <d e>] e,[ r <d' e>]} \\
	 \stemDown { gs,4. b \break gs e } >> |

	a8[ r <c e>] a[ r <c e>] | c[ r <ef a>] c[ r <ef a>] |
	<< \stemUp { b[ e\rest <d g>] b[ d\rest <d g>] | c[ d\rest <ef g>] c[ d\rest <ef g>] |
		b[ c\rest <d g>] g,[ c\rest <b d>]
		\break

		e,[ a\rest <g c>] ef[ a\rest <g c>] d[ a'\rest <g b>] d[ a'\rest <g b>] |
		d[ a'\rest <c d>] d,[ a'\rest <c d>]} \\
	 \stemDown { b4. b | c c | b g \break e ef | d d | d d} >>
}
\alternative
{
	{
		g8[ r <b d>] d,[ r <b' d>] | <g b d>4 r8 r4 r8
	}
	{
		g8[ r <b d>] d,[ r <b' d>] | <g b d>4 r8 <g g,>4^^ r8
	}
}
\bar "|."
     }
     
     dynamics = {
       s2.\ff | s2.*3 | s4\< s2\!

	s2.*2 | s8 s8\< s4. s8\! | s2.\mf | s2.*2

	s2.*4 | s4 s4.\< s8\! | s2.*2

	s2.*5 | s8 s2\< s8\! | s8 s2\f\< s8\!

% begin page 2

	s4.\f\< s8 s4\! | s2.*4 | s4. s4\< s8\! | s4. s4.\sf

	s2.*6

	s2.*3 | s4.\f\< s8 s4\! | s2.*3

	s2. | s4. s4\< s8\! | s4. s4.\sf | s2.*3

	s2.*6

% begin page 3

	s2.\p | s2.*6

	s2.*7

	s2.*7

	s2.*7

	s2.*3 | s4 s4.\f\< s8\! | s2.\f | s2.*2

	s2.*8

% begin page 4

	s2.*9

	s2.\ff | s2.*6

	s2.*7

	s2.*7

	s2.*6

	s2.*7
     }
     
     pedal = {
     }
     #(set-global-staff-size 18.5)
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
           \override VerticalAlignment #'forced-distance = #5.75
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
       \midi { \tempo 4=180
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
