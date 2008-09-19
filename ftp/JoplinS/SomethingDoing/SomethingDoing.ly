\version "2.10.10"
\include "english.ly"
\header {

 title="Something Doing."
 subtitle="A RAGTIME TWO STEP."
 composer=\markup { \column { \right-align { "SCOTT JOPLIN." "SCOTT HAYDEN."} } }
 
 mutopiatitle = "Something Doing"
 mutopiacomposer = "JoplinS"
 mutopiainstrument = "Piano"
 date = "1903"
 source = "Val. A. Reis Music Co."
 style = "Jazz"
 maintainer = "Benjamin Bloomfield"
 maintainerEmail = "bhb123@gmail.com"
 license = "Public Domain"
 copyright = "Public Domain"
 lastupdated = "2008/September/12"


 footer = "Mutopia-2008/09/19-1541"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\paper {
	print-page-number = ##t
	between-system-padding= #0.1
        %between-system-space = #0.25
	ragged-last-bottom=##f
}

     upper = \relative c' {
       \clef treble
       \key f \major
       \time 2/4

\once \override TextScript #'extra-offset = #'( -4 . 1 )
	\partial 8 f16[(^\markup { \column \bold {"Intro." "Not fast." } } g]) |
	a[ f'8 e16]~ e4 |
	d16[ cs d bf]~ bf4 |
	bf16[ a bf g]~ g[ a bf b] |
	c8 r <c e g c>-^ r

\break
	\repeat volta 2 {
	a16[ c f a]~ a f c a] |
	<c e>8[ <bf d>] <c a>4 |
	<bf bf'>16[ e g <bf bf,>]~ <bf bf,>[ <g e> <b b,> <c c,>]~

%\break
	<c c,>[ c\( a f] d[ df c bf]\) |
	a[ c f a]~ a[ f c a] |
	<c e>8[ <bf d>] <a c>[ <a a'>] |
	<g g'>16[ c e <c d fs a>~] <c d fs a>[ <c d fs a> <d f b>8]

%\break
	<c e c'>4~ <c e c'>8 r |
	a16[ c f a]~ a[ f c a] |
	<c e>8[ <bf d>] <a c>4 |
	<bf bf'>16[ e g <bf bf,>]~ <bf bf,>[ <g e> <b b,> <c c,>]~

%\break
	<c c,>[ c\( a f] d[ df c8]\) |
	<d d'>16[ bf' c <e e,>]~ <e e,>[ bf <d d,>8] |
	<c c,>16[ <a f> <d d,> <c c,>]~ <c c,>[ a f fs,]

\pageBreak
% Begin Page two

	g16[ c8 fs,16] g[ <g bf g'>8 <f a f'!>16]~
	} % end repeat
	\alternative {
		{ <f a f'>4~ <f a f'>8 r }
		{ <f a f'>8\repeatTie c'16[( d] e[ f g a]) }
	}
	\repeat volta 2 {
	<bf bf,>16[ e, g <a e bf>]~ <a e bf> e <g bf,>8]

\break
	g,16[ fs g d']~ d[ c g gs] |
	a[\( c, d ds] e[ f g gs]\) |
	a[ gs a <a c g'>]~ <a c g'> g' g, a] |
	<< { \stemUp r c'[\( bf g] e[ c'8.]\) } \\ { \stemDown bf,2_^ } >> \stemNeutral

\break
	bf16[ a bf <bf e a>]~ <bf e a>[ g' e c] |
	<< { \stemUp r c'[\( a f] d[ c8.]\) } \\ { \stemDown a2_^ } >> \stemNeutral |
	a16[ gs a <a c g'>]~ <a c g'>[ f' c a] |
	d[ fs a <d d,>]~ <d d,>[ c a fs]

\break
	d[ fs a <d d,>]~ <d d,>[ c a fs] |
	d[ cs d ef] d[ c bf a] |
	bf[ g bf d] g8 r |
	d16[ cs d a']~ a[ g f d] |

\break
	a[ gs a d]~ d[ c f, fs] |
	g[ c8 fs,16] g[ <g bf g'>8 <f a f'!>16]~
	} % end repeat
	\alternative {
		{ <f a f'>8 c'16[( d] e[ f g a]) }
		{ <f a, f>4~\repeatTie <f a, f>8 r}
	}
\bar "||"

\pageBreak
% Page Three
	a,16[ c f a]~ a f c a] |
	<c e>8[ <bf d>] <c a>4 |
	<bf bf'>16[ e g <bf bf,>]~ <bf bf,>[ <g e> <b b,> <c c,>]~
	<c c,>[ c\( a f] d[ df c bf]\) |

%\break
	a[ c f a]~ a[ f c a] |
	<c e>8[ <bf d>] <a c>[ <a a'>] |
	<g g'>16[ c e <c d fs a>~] <c d fs a>[ <c d fs a> <d f b>8]
	<c e c'>4~ <c e c'>8 r |

%\break
	a16[ c f a]~ a[ f c a] |
	<c e>8[ <bf d>] <a c>4 |
	<bf bf'>16[ e g <bf bf,>]~ <bf bf,>[ <g e> <b b,> <c c,>]~
	<c c,>[ c\( a f] d[ df c8]\) |

%\break
	<d d'>16[ bf' c <e e,>]~ <e e,>[ bf <d d,>8] |
	<c c,>16[ <a f> <d d,> <c c,>]~ <c c,>[ a f fs,]
	g16[ c8 fs,16] g[ <g bf g'>8 <f a f'!>16]~
	<f a f'>4 <f a f'>8 r |

\break

	\key bf \major
	\repeat volta 2 {
	f'16[ e f g]~ g[ f c d] |
	ef[ d ef a,]~ a4 |
	a16[ gs a d]~ d[ c g a] |
	bf[ a bf g]~ g8[ d'] |

%\break
	c8[ bf] g[ gs] |
	a16[ f' ef c] a8[ ef'] |
	d[ c] g[ a] |
	bf16[ f' d bf] g4 |
	f'16[ e f g]~ g[ f c d] |

\pageBreak

	ef16[ d ef a,]~ a4 |		%64
	a16[ gs a d]~ d[ c g a] |	%65
	bf a bf g]~ g4 |		%66
	<g ef'>8[ <g bf>] <bf c>[ <bf cs>] |	%67
%\break

	<< {\stemDown bf2 } \\ { \stemUp d16[ cs d g]~ g[ f d bf] } >> |	%68
	g16[ gs a <a f'>]~ <a f'>[ ef' g, a] |	%69
	bf4~ bf8[ f'] |				%70
	} % end repeat
	
	\repeat volta 2 {
	<bf d, bf>16[ bf,( c cs]) d[ a'8 g16] |		% 71

%\break
	f8[ a,16 <c ef>]~ <c ef>8.[ <bf d bf'>16]~ |
	<bf d bf'>[ bf c cs] d[ a'8 g16] |
	f8[ a,16 <c ef>]~ <c ef>8.[ <g b d g>16]~ |
	<g b d g>[ g b! d] g[ f8 <ef c g>16]~ |

%\break
	<ef c g>8[ <d b g f>] <c g ef>4 |
	<d bf e,>8[ <c bf e,>] <d bf>[ <c bf>] |
	<a ef'! g>[ <a ef' f>] <ef' a d>[ <ef a c>] |
	<d bf'>16[ bf( c cs] d[) a'8 g16] |

%\break
	f8[ a,16 <c ef>]~ <c ef>8.[ <bf d bf'>16]~ |
	<bf d bf'>[ bf c cs] d[ a'8 g16] |
	f8[ a,16 <c ef>]~ <c ef>8.[ <g b d g>16]~ |
	<g b d g>[ g b! d] g[ f8 <ef c g>16]~ |
	<ef c g>8[ <d b g f>] <c g ef>[ <bf cs g'>] |
	<bf d f>16[ f g gs] a[ f' g, a]
	} % end repeat
	\alternative {
		{ bf4~ bf8[ f'] | }
		{ \partial 8 * 3 bf,4 <bf d bf'>8 }
	}
\bar "|."
     }
     
     lower = \relative c {
       \clef bass
       \key f \major
       \time 2/4
     
	\partial 8 f16[( g]) |
	a[ f'8 e16]~ e4 |
	d16[ cs d bf]~ bf4 |
	bf16[ a bf g]~ g[ f e d] |
	c8 r <c c,>-^ r

\break
	<f f,>8[ <a c f>] c,[ <a' c f>] |
	<< { \stemDown c,[ <bf' c e>] f[ <a c f>] } \\
	   { \stemUp c,4 f } >> |
	\stemNeutral
	<g g,>8[ <bf c e>] <g g,>[ <gs gs,>]

%\break
	<a a,>[ <c c,>] <bf bf,>[ <a a,>] |
	<f f,>[ <a c f>] c,[ <a' c f>] |
	<< { \stemDown c,[ <c' e>] } \\
		{ \stemUp c,4 } >> \stemNeutral f8[ <fs a c ds>] |
	<g c e>4 <d d'>8[ <g g,>]

%\break
	<c c,>[ <bf! bf,!>] <a a,>[ <g g,>] |
	<f f,>[ <a c f>] c,[ <a' c f>] |
	c,[ <bf' c e>] f[ <a c f>] |
	<g g,>[ <bf c e>] <g g,>[ <gs gs,>]

%\break
	<a a,>[ <c c,>] <bf bf,>[ <a a,>] |
	<bf bf,>[ <bf d g>] <bf bf,>[ <gs gs,>] |
	<a a,>[ <a c f>] <a c f> r

\pageBreak
% Begin page 2
	c,8[ <bf' c e>] e,[ <g bf c>] |

	<< { \stemUp <a c>4~ <a c>8 r } \\ { \stemDown f[ <c c,>_^] <d d,>_^[ <e e,>_^] } >> |
	<f a c>8 r r4 |

	g8[ <bf c e>] c,[ <bf' c e>] |

%\break
	e,[ <bf' c e>] c,[ <bf' c e>] |
	f[ <a c>] c,[ <bf' c e>] |
	f[ <a c f>] c,[ <a' c f>] |
	g[ <bf c e>] c,[ <bf' c e>] |

%\break
	g[ <bf c e>] c,[ <bf' c e>] |
	f[ <a c f>] c,[ <a' c f>] |
	f[ <a c f>] c,[ <a' c f>] |
	fs[ <a c d>] d,[ <a' c d>] |

%\break
	fs[ <a c d>] d,[ <a' c d>] |
	fs[ <a c d>] d,[ <a' c d>] |
	g[ <bf d>] <bf d> r |
	<bf bf,>[ <bf d f g>] <bf bf,>[ <b b,>] |

%\break
	<c c,>[ <a c f>] c,[ <a' c>] |
	e[ <bf' c e>] c,[ <bf' c e>] |

	<f a c>] r r4 |
	<< { \stemUp <a c>4~ <a c>8 r } \\ { \stemDown f[ <c c,>] <d d,>[ <e e,>] } >> |

\pageBreak
% Begin Page 3
	<f f,>8[ <a c f>] c,[ <a' c f>] |
	<< { \stemDown c,[ <bf' c e>] f[ <a c f>] } \\
	   { \stemUp c,4 f } >> |
	\stemNeutral
	<g g,>8[ <bf c e>] <g g,>[ <gs gs,>]
	<a a,>[ <c c,>] <bf bf,>[ <a a,>] |

%\break
	<f f,>[ <a c f>] c,[ <a' c f>] |
	<< { \stemDown c,[ <c' e>] } \\
	   { \stemUp c,4 } >> \stemNeutral f8[ <fs a c ds>] |
	<g c e>4 <d d'>8[ <g g,>]
	<c c,>[ <bf! bf,!>] <a a,>[ <g g,>] |

%\break
	<f f,>[ <a c f>] c,[ <a' c f>] |
	c,[ <bf' c e>] f[ <a c f>] |
	<g g,>[ <bf c e>] <g g,>[ <gs gs,>]
	<a a,>[ <c c,>] <bf bf,>[ <a a,>] |

%\break
	<bf bf,>[ <bf d g>] <bf bf,>[ <gs gs,>] |
	<a a,>[ <a c f>] <a c f> r
	c,8[ <bf' c e>] e,[ <e bf' c>] |
	<< { \stemUp <a c>4~ <a c>8 } \\ { \stemDown f[ c_^ f,_^] } >> r

%\break
	\key bf \major
	bf8[ <f' bf d>] f,[ <f' bf d>] |	%55
	c[ <f a ef'>] f,[ <f' a ef'>] |		%56
	c[ <f c' ef>] f,[ <f' a ef'>] |		%57
	bf,[ <f' bf d>] f,[ <f' bf d>] |	%58

%\break
	<bf bf,>[ <f bf d>] <d d'>[ <df df'>] |	%59
	<c c'>[ <f a ef'>] f,[ <f' a ef'>] |	%60
	c[ <f a ef'>] f,[ <f' a ef'>] |		%61
	bf,[ <f' bf d>] f,[ <f' bf d>] |	%62
	bf,[ <f' bf d>] f,[ <f' bf d>] |	%63
%end Page Three

\pageBreak

	c8[ <f a ef'>] f,[ <f' a ef'>] |
	c[ <f c' ef>] f,[ <f' a ef'>] |
	bf,[ <f' bf d>] f,[ <f' bf d>]		%66
	<ef ef,>[ <g bf ef>] <g g,>[ <gf gf,>] |	%67

%\break
	<f f,>[ <f bf d>] f,[ <f' bf d>] |
	c[ <f a ef'>] f,[ <f' a ef'>] |		%69
	bf,[ <f' bf d>] <f bf d> r |		%70
	<bf bf,>[ <f bf d>] <d d'>[ <df df'>] |	%71

%\break
	<c c'>[ <f a ef'>] f,[ <f' a ef'>] |
	<bf bf,>[ <f bf d>] <d d'>[ <df df'>] |	%73
	<c c'>[ <f f,>] <a a,>[ <af af,>] |	%74
	<g g,>[ <g b d f>] b,[ <g' d' f>] |

%\break
	<c, c,>[ <d d,>] <ef ef,>[ <ef g c>] |
	<c c,>[ <g' bf c>] <e e,>[ <g bf c>] |
	<f f,>[ <f c' ef!>] f,[ <f' a ef'>] |
	bf,[ <f' bf d>] <d d'>[ <df df'>] |

%\break
	<c c'>[ <f a ef'>] f,[ <f' a ef'>] |
	<bf bf,>[ <f bf d>] <d d'>[ <df df'>] |
	<c c'>[ <f f,>] <a a,>[ <af af,>] |
	<g g,>[ <g b d f>] b,[ <g' d' f>] |

%\break
	<c, c,>[ <d d,>] <ef ef,>[ <e e,>] |
	<f f,>[ <f bf d>] f,[ <f' a ef'>] |

	bf,[ <f' bf d>] <f bf d> r
	<< {\stemUp d'4 } \\ {\stemDown <bf d>8[ <f f,>] } >>
		<bf, bf,>8
     }
     
     dynamics = {
	s8 | s2 * 4 |
	s2\f | s2 * 2 |
	s2 * 4 |
	s2 * 4 |
	s2 * 3 |

	s2 * 4 |
	s2 * 4 |
	s2 * 4 |
	s2 * 4 |
	s2 * 4 |

	s2\f | s2 * 3 |
	s2 * 4 |
	s2 * 4 |
	s2 * 4 |
	s2\p | s2 * 3 |
	s2 * 5 |

	s2 * 4 |
	s2 * 3 | s2\f |
	s2 * 4 |
	s2 * 4 |
	s2 * 4 |
	s2 * 4
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
