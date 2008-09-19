\version "2.10.10"
\include "english.ly"
\header {

 title="THE STRENUOUS LIFE,"
 subtitle=\markup {\italic "A RAGTIME TWO STEP."}
 composer="BY SCOTT JOPLIN."
 
 mutopiatitle = "The Strenuous Life"
 mutopiacomposer = "JoplinS"
 mutopiainstrument = "Piano"
 date = "1902"
 source = "John Stark & Son"
 style = "Jazz"
 maintainer = "Benjamin Bloomfield"
 maintainerEmail = "bhb123@gmail.com"
 license = "Public Domain"
 lastupdated = "2008/September/09"
 copyright="Public Domain"

 footer = "Mutopia-2008/09/19-1542"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\paper {
	ragged-last-bottom=##f
	top-margin = 3\mm
	bottom-margin = 3\mm
}

     upper = \relative c'' {
       \clef treble
       \key c \major
       \time 2/4
	
	\stemUp
\once \override TextScript #'extra-offset = #'( -4 . 1 )
	g'8[^\markup \italic \bold {"Not fast."} g]~ g[ f16 e] |
	d[ c b c] d8[ g,] |
	\stemNeutral
	<d f c'>8 <d f c'>4 <d f c'>8 |
	<d f b> r <g b f' g> r
	\bar "||"
\break
	\repeat volta 2 {
	<< { \stemDown e4 s } \\ { \stemUp g8[ g]~ g16[ e f g] } >> | \stemNeutral
	e'16[ c a g]~ g[ g c e] |
	<d b>16[ <d b>8 <cs as>16] <d b>8[ <ds b>] |
	<e c>2

\break
	<< { \stemDown e,4 s } \\ { \stemUp g8[ g]~ g16[ e f g] } >> | \stemNeutral
	e'16[ c a g]~ g8[ <g as e'>] |
	<g b d>16[ <g b d>8 <g b d>16] <g cs e>8[ <fs c' fs>] |
	<g b g'>2

\break
	<< { \stemDown e4 s } \\ { \stemUp g8[ g]~ g16[ e f g] } >> | \stemNeutral
	e'16[ c a g]~ g[ g c e] |
	<d b>16[ <d b>8 <cs as>16] <d b>8[ <ds b>] |
	<e c>4. <e c>8

\pageBreak
% Page 2
	<< { \stemUp f16[ e f c']~ c[ c8 b16] } \\ { \stemDown c,8.[ <c f>16]~ <c f>[ <c f>8.] } >> |
	\stemNeutral
	<c e c'>16[ g' e c] <g cs f>[ <g cs e>8 <g a>16] |
	<< { \stemUp <fs c'!>16[ <fs c'>8 <fs e'>16] d'[( c) <d f,>8] } \\ { \stemDown s4 f, } >> \stemNeutral |
	} % end repeat
	\alternative {
		{ <e c'>4. r8 }
		{ <e c'>4. b'16[ d] }
	}
%	\bar "||"

\break
	\key g \major
	\repeat volta 2 {
	<c fs,>16[ <c fs,>8 <b fs>16] << { \stemUp c[ c( b a]) } \\ { \stemDown fs4 } >> \stemNeutral |
	g16[ a b d]~ d[ e8 d16] |
	<c fs,>16[ <c fs,>8 <b fs>16] << { \stemUp c[ c( b a]) } \\ { \stemDown fs4 } >> \stemNeutral |
	g8[ d]~ d16[ g8 b16] |

\break
	a16[ a8 gs16] a[ a b a] |
	g[ a b d]~ d[ d8 e16] |
	fs[ d a e']~ e[ a g cs,] |
	d8[ <cs g' a>] <d fs d'> b16[ d]

\break
	<c! fs,>16[ <c fs,>8 <b fs>16] << { \stemUp c[ c( b a]) } \\ { \stemDown fs4 } >> \stemNeutral |
	g16[ a b d]~ d[ e8 d16] |
	<c fs,>16[ <c fs,>8 <b fs>16] << { \stemUp c[ c( b a]) } \\ { \stemDown fs4 } >> \stemNeutral |
	g8[ d]~ d[ d] |

\break
	e16[ g c e]~ e[ g fs e] |
	d[ e d b] g8[ g16( a]) |
	b[ d e d] <a c,>[ <a c,>8 <c, d>16]
	}
	\alternative {
		{ <b g'>8[ d16( e] fs[ g a b]) }
		{ <g b,>8 r <g b g'> r }
	}
	\bar "||"

\pageBreak
% Page Three
	\key c \major
	<< { \stemDown e4 s } \\ { \stemUp g8[ g]~ g16[ e f g] } >> | \stemNeutral
	e'16[ c a g]~ g[ g c e] |
	<d b>16[ <d b>8 <cs as>16] <d b>8[ <ds b>] |
	<e c>2
	<< { \stemDown e,4 s } \\ { \stemUp g8[ g]~ g16[ e f g] } >> | \stemNeutral

%\break
	e'16[ c a g]~ g8[ <g as e'>] |
	<g b d>16[ <g b d>8 <g b d>16] <g cs e>8[ <fs c' fs>] |
	<g b g'>2
	<< { \stemDown e4 s } \\ { \stemUp g8[ g]~ g16[ e f g] } >> | \stemNeutral
	e'16[ c a g]~ g[ g c e] |

%\break
	<d b>16[ <d b>8 <cs as>16] <d b>8[ <ds b>] |
	<e c>4. <e c>8 |
	<< { \stemUp f16[ e f c']~ c[ c8 b16] } \\ { \stemDown c,8.[ <c f>16]~ <c f>[ <c f>8.] } >> |
	\stemNeutral
	<c e c'>16[ g' e c] <g cs f>[ <g cs e>8 <g a>16] |
	<< { \stemUp <fs c'>16[ <fs c'>8 <fs e'>16] d'[( c) <d f,>8] } \\ { \stemDown s4 f, } >> \stemNeutral |

%\break
	<e c'>8 r <c' e c'> r |
	\bar "||"
	\key f \major

	f,8 f4 a8 |
	c16[ a f a] c8[ c,] |
	<g' bf>8[ <g bf>16 <g bf>]~ <g bf>[ <g bf> <g bf>8] |
	<g bf>[ <f bf f'>] <e bf' e>[ <e bf'>]

%\break
	\repeat volta 2 {
	<f a>16[ gs a d]~ d[ c f, g] |
	<a c,>8[ <gs f d b>] <a f c>16[ c, f g] |
	a[ gs a d]~ d[ c g a] |
	<bf e, c>8[ <a ds, c>] <bf e, c>16[ c, e g]

%\break
	bf[ a bf e]~ e[ d g, a] |
	<bf e, c>8[ <a ds, c>] <bf e, c>16[ c, e g] |
	bf[ a bf e]~ e[ d c bf] |
	a4~ a16[ c, f g]

\pageBreak
% Page 4
	
	a[ gs a d]~ d[ c f, g] |
	<a c,>8[ <gs f d b>] <a f c>16[ f' e d] |
	cs[ a cs e] <a a,>8[ <g cs, a>] |
	<f d a>4. ef8 

%\break
	d16[ e! f d]~ d[ e f g] |
	<a c,>8[ <gs b,>] <a c,>16[ f e d] |
	c[ c' bf e,] <c a'>8[ <bf g'>] |
	} % end repeat
	\alternative {
		{ <a f'>8[ c16 c] c8[ c] }
		{ <a f'>4~ <a f'>16[ }
	}
	<f' d' f>8 <e c' e>16]

%\break
	\repeat volta 2 {
	<d bf' d>16[ <cs bf' cs> <d bf' d> <e bf' e>]~ <e bf' e>[ <d bf' d>8 <cs! bf' cs!>16] |
	<d bf' d>4~ <d bf' d>16[ <e bf' e>8 <d bf' d>16] |
	<c a' c>16[ <b b'> <c c'> <d d'>]~ <d d'>[ <c c'>8 <b! b'!>16] |
	<c a' c>4~ <c a' c>16[ <d d'>8 <c c'>16]

%\break
	<bf e bf'>16[ <a a'> <bf bf'> <c e c'>]~ <c e c'>[ <bf bf'>8 <a a'>16] |
	<bf e bf'>4~ <bf e bf'>16[ <a a'>8 <g g'>16] |
	<f f'>16[ <g g'> <a a'> <c c'>]~ <c c'>[ <e gs e'>8 <d gs d'>16] |
	<c a' c>4~ <c a' c>16[ <f d' f>8 <e c' e>16]

%\break
	<d bf' d>16[ <cs bf' cs> <d bf' d> <e bf' e>]~ <e bf' e>[ <d bf' d>8 <cs! bf' cs!>16] |
	<d bf' d>4~ <d bf' d>16[ <e bf' e>8 <d bf' d>16] |
	<c a' c>16[ <b b'> <c c'> <d d'>]~ <d d'>[ <c c'>8 <b! b'!>16] |
	<c a' c>4~ <c a' c>16[ <c c'> <a a'> <g g'>]

%\break
	<fs fs'>[ <a a'> <c c'> <ef ef'>]~ <ef ef'>[ <d d'>8 <c c'>16] |
	<bf bf'>[ <a a'> <bf bf'> <d d'>]~ <d d'>[ <f f'> <e e'> <d d'>] |
	<c c'>[ <a a'>8 <c c'>16] <bf d bf'>[ <a c a'> <g bf g'>8]

	} % end repeat
	\alternative {
		{ <f a f'>4~ <f a f'>16[ <f' f'>8 <e e'>16] }
		{ <f a, f>8 r <f a c f> r }
	}
\bar "|."
     }
     
     lower = \relative c {
       \clef bass
       \key c \major
       \time 2/4
     
	\stemDown \change Staff = "upper"
	g''8[ g]~ g[ f16 e] |
	d[ c b c] d8[ \change Staff = "lower" g,] |
	\stemNeutral
	<af af,>8 <af af,>4 <af af,>8 |
	<g g,> r <g, g,> r
	\bar "||"

\break
	<c c,>8[ <g' c e>] g,[ <g' c e>] |
	c,[ <g' c e>] e[ <g c e>] |
	g[ <b d f>] g,[ <g' b f'>] |
	c,[ <g g'>16 <a' a,>]~ <a a,>[ <g g,> <a a,> <b b,>]

\break
	<c c,>8[ <g c e>] g,[ <g' c e>] |
	c,[ <g' c e>] <g c e>[ <cs cs,>] |
	<d d,>4 <a a,>8[ <d, d,>] |
	<g, g,>[ <a a'>16 <g g'>]~ <g g'>[ <f f'> <e e'> <d d'>]

\break
	<c c'>8[ <g'' c e>] g,[ <g' c e>] |
	c,[ <g' c e>] e[ <g c e>] |
	g[ <b d f>] g,[ <g' b f'>] |
	<c, c,>[ <g g'>] <c c'>[ <bf bf'>]

\pageBreak
% Page 2
	<a a'>[ <a' c f>] <af af,>[ <af c f>] |
	<g g,>[ <g c e>] <a! a,!>[ <a cs>] |
	<c! a d,>[ <c a d,>] <b g>[ <b g>]

	<c c,>8[ <b b,>16 <a a,>] <g g,>[ <f f,> <e e,> <d d,>] |
	<c c'>8[ <g g'>] <c c,> r

\break
	\key g \major
	a8[ <fs' c' d>] d,[ <fs' c' d>] |
	g,[ <g' b d>] b,[ <g' b d>] |
	a,[ <fs' c' d>] d,[ <fs' c' d>] |
	g,[ <g' b>] d[ <g b>] |

\break
	c,[ <d fs a>] c[ <d fs a>] |
	b[ <d g>] bf[ <d g>] |
	a[ <fs' a d>] a,[ <e' g a cs>] |
	<d fs a d>[ <a a'>] <d d,> r

\break
	a[ <fs' c' d>] d,[ <fs' c' d>] |
	g,[ <g' b d>] b,[ <g' b d>] |
	a,[ <fs' c' d>] d,[ <fs' c' d>] |
	g,[ <g' b>] b,[ <f' g b>]

\break
	<c e g c>[ <c e g c>] <cs e g as>[ <cs e g as>] |
	<d g b>[ <d g b>] <ef g bf>4 |
	d8[ <g b!>] d[ <fs a>] |
	<g g,>8 r r4 |
	<g g,>8 r <g, g,> r

\pageBreak
% Page Three
	\key c \major
	<c c,>8[ <g' c e>] g,[ <g' c e>] |
	c,[ <g' c e>] e[ <g c e>] |
	g[ <b d f>] g,[ <g' b f'>] |
	c,[ <g g'>16 <a' a,>]~ <a a,>[ <g g,> <a a,> <b b,>]
	<c c,>8[ <g c e>] g,[ <g' c e>] |

%\break
	c,[ <g' c e>] <g c e>[ <cs cs,>] |
	<d d,>4 <a a,>8[ <d, d,>] |
	<g, g,>[ <a a'>16 <g g'>]~ <g g'>[ <f f'> <e e'> <d d'>]
	<c c'>8[ <g'' c e>] g,[ <g' c e>] |
	c,[ <g' c e>] e[ <g c e>] |

%\break
	g[ <g b f'>] g,[ <g' b f'>] |
	<c, c,>[ <g g'>] <c c'>[ <bf bf'>]
	<a a'>[ <a' c f>] <af af,>[ <af c f>] |
	<g g,>[ <g c e>] <a! a,!>[ <a cs>] |
	<c! a d,>[ <c a d,>] <b g>[ <b g>]

%\break
	<c c,>8 r <c, c,> r |
	\bar "||"
	\key f \major
	f8 f4 a8 |
	c16[ a f a] c8[ c,] |
	e'\([ ef] d[ df] |
	\stemDown c\)[ <df, df,>] \stemNeutral <c c,>[ c,]

%\break
	f8[ <a' c f>] <a c f>[ c,,] |
	f[ f'] f[ c,] |
	f[ <a' c f>] <a c f>[ c,,] |
	g'[ fs] g[ c,]

%\break
	g'[ <g' bf c e>] <g bf c e>[ c,,] |
	g'[ fs] g[ c,] |
	g'[ <g' bf c e>] <g bf c e>[ e,] |
	f[ <a' c f>] <a c f>[ c,,]

\pageBreak
% Page Four

	f[ <a' c f>] <a c f>[ c,,] |
	f[ f'] f[ c,] |
	\stemDown e[ <a' cs g'>] <a cs g'>[ a,,] |
	d[ <a'' d f>] <a d f>[ c,] \stemNeutral

%\break
	bf[ <bf' d f>] <bf d f>[ b,] |
	c[ <d' f>] <c f> r |
	c,[ <bf' c e>] c,[ <c' e>] |

	<f c f,> r r c,, |
	<f' f'>[ <c c'>] <f f,> r

%\break
	bf,[ <g' bf d>] g,[ <g' bf d>] |
	bf,[ <g' bf d>] g,[ gs] |
	a[ <a' c f>] \stemUp c,,[ \stemDown <a'' c f>] | \stemNeutral
	f,[ <a' c f>] c,,[ <fs>]

%\break
	g[ <g' bf c e>] \stemUp c,,[ \stemDown <g'' bf c e>] | \stemNeutral
	g,[ <g' bf c e>] c,,[ e] |
	f[ <a' c f>] f,[ <gs' b f'>] |
	f,[ <a' c f>] <a c f> r

%\break
	bf,[ <g' bf d>] g,[ <g' bf d>] |
	bf,[ <g' bf d>] g,[ gs] |
	a[ <a' c f>] \stemUp c,,[ \stemDown <a'' c f>] | \stemNeutral
	f,[ <a' c f>] \stemUp c,,[ \stemDown <a'' c f>] \stemNeutral

%\break
	d,,[ <fs' c' d>] fs,[ <fs' c' d>] |
	g,[ <g' bf d>] b,[ <gs' b f'>] |
	c,[ <a' c f>] c,[ <bf' c e>] |

	<c a f>[ e,] d[ c] |
	<f a c> r <f, f,> r
\bar "|."
     }
     
     dynamics = {
	s2 * 4 |
	s2\f | s2 * 3 |
	s2 * 4 |
	s2 * 4 |

	s2 * 5 |
	s2 * 4 |
	s2 * 4 |
	s2 * 4 |
	s2 * 5 |

	s2 * 5 |
	s2 * 5 |
	s2 * 5 |
	s2 * 5 |
	s2\p s2 * 3 |
	s2 * 4 |

	s2 * 4 |
	s2 * 5 |
	s2 * 4 |
	s2 * 4 |
	s2 * 4 |
	s2 * 5

%       s2\fff\> s4
%       s\!\pp
     }
     
     pedal = {
%       s2\sustainDown s2\sustainUp
     }
     
     \score {
       \new PianoStaff <<
         \new Staff = "upper" \upper
         \new Dynamics = "dynamics" \dynamics
         \new Staff = "lower" <<
           \clef bass
           \lower
         >>
         \new Dynamics = "pedal" \pedal
       >>
       \layout {
         \context {
           \type "Engraver_group"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
     
           \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
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
           \override VerticalAlignment #'forced-distance = #7
         }
       }
     }
     \score {
       \new PianoStaff <<
         \new Staff = "upper" << \upper \dynamics >>
         \new Staff = "lower" << \lower \dynamics >>
         \new Dynamics = "pedal" \pedal
       >>
       \midi {
         \context {
           \type "Performer_group"
           \name Dynamics
           \consists "Piano_pedal_performer"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
         }
       }
     }
