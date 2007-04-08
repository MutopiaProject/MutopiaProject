\version "2.6.0"
\include "english.ly"
\header {
	title="KING COTTON"
	subtitle="MARCH."
	composer="JOHN PHILIP SOUSA."

 mutopiatitle = "King Cotton"
 mutopiacomposer = "SousaJP"
 mutopiainstrument = "Piano"
 date = "1895/July/28"
 source = "The John Church Company"
 style = "Classical"
 maintainer = "Benjamin Bloomfield"
 maintainerEmail = "bhb123@gmail.com"
 license = "Public Domain"
 lastupdated = "2005/November/20"

 footer = "Mutopia-2005/11/20-634"
 copyright = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\paper {
%	hsize = 8.5\in
%	vsize = 11\in
	betweensystempadding = #0.25
	raggedlastbottom=##f
}

afterGraceFraction = #(cons 7 8)

     upper = \relative c'' {
       \clef treble
       \key ef \major
       \time 6/8
     
	<bf bf'>4^^( <c c'>8) <ef ef'>^.[ <d d'>^. <c c'>^.] | <bf bf'>4^^( <d d'>8) <f f'>^.[ <ef ef'>^. <d d'>^.] |
	<ef ef'>4^^( <f f'>8) <g g'>^.[ <f f'>^. <ef ef'>^.] | <bf bf'>4 r8 r4 bf8

	\break
\repeat volta 2
{
	<c g ef>8^^[ r bf-.] g-.[ f-. ef-.] | g[ r c-.] g-.[ r bf,]_( | g')[ r g] g[ f g] | af4.~ af4 bf8

	\break

	\stemUp <d af d,>^^[ r c] af[ g f] | af[ r d] af[ r bf,]_( | af')[ r af] af[ g af] | \stemNeutral bf4.~ bf4 g8 |

	\break
		\phrasingSlurDown
	\grace {c16\([ ef]} <c ef g>8^^\)[ r ef] ef[ r c] |
	\grace {c16\([ ef]} <c ef g>8^^\)[ r ef] ef[ r c] |
	af^^[ r af] af[ g f] | af^^[ r af] af[ g f] |

\pageBreak

% begin page 2

	\grace {c'16\([ ef]} <c ef g>8^^\)[ r ef] ef[ r c] |
	\grace {c16\([ ef]} <c ef g>8^^\)[ r ef] ef[ r c] |
	<bf d f>[ r d] ef-.[ d-. c-.] | bf4 r8 <bf d f bf>^> r bf
}
	\break

\repeat volta 2
{
	<ef ef,>8-.[ <d d,>-. <ef ef,>-.] <g g,>[ r <f f,>] | <ef ef,>-.[ r <d d,>-.] <ef ef,>-.[ r <g g,>-.] |
	<bf bf,>4^>( <af af,>8) <f f,>[ r <g g,>] | <ef ef,>4.~ <ef ef,>4 <ef ef,>8 |

	\break

	<f f,>[ <e e,> <f f,>] <g g,>[ r <f f,>] | <ef ef,>[ r <g g,>] <ef ef'>([ r <d d'>)] |
	<c c'>4^> <b b'>8 <c c'>([ r <d d'>)] | <bf bf'>4.~ <bf bf'>4 <bf bf'>8 |

	\break

	<ef ef'>^>[ r <ef ef'>]^( <d d'>4^> <c c'>8 | <bf bf'>^>)[ r <bf bf'>-.]^( <af af'>4^> <g g'>8 |
	<f f'>8)[ r <af af'>]^( <g g'>4 <f f'>8 | <ef ef'>4 <d d'>8 <c c'>4 <bf bf'>8) |

	\break

	\stemUp <ef ef'>8[ r ef'] \stemNeutral <ef ef'>4^>^( <c c'>8) | <bf bf'>4^^^( <c c'>8) <af af'>4^^^( <f f'>8) |
	<g g'>4^^^( <ef ef'>8) <f f'>4^^^( <d d'>8) |
}
\alternative
{
	{
		<ef ef'>4 r8 <bf' d f bf>4^> r8
	}
	{
		<ef, ef'>4 ef8_( f4 ff8)
	}
}

\pageBreak

% begin page 3

\key af \major
\repeat volta 2
{
	ef8[ r af] g[ r af] | c4.^( af' | g f | c2.) | af8[ r bf] c[ r af] |

	\break

	f'4.^( df | c2.)^( | bf4) ef,8_( f4 ff8) | ef[ r af] g[ r af] | c4.^( af' |
	g c,) | f4.~ f4 g8 | af4^( g8 af4 f8 | ef4.) c | bf2.\(
}
\alternative
{
	{
		af4\) ef8_( f4 ff8) |
\break
	}
	{
		af4 c8^( ef4 af8) |
	}
}

\repeat volta 2
{
	\acciaccatura fs8 g4^> r8 c,4 r8 | #(set-octavation 1) <c' ef>-.[ <c d>-. c-.] <c ef> r r |
	<c ef>-.[ <c d>-. c-.] <c ef> #(set-octavation 0) r r |
	\clef bass
	\acciaccatura fs,,, g4 r8 c,4 r8

	\break

	\clef treble
	\acciaccatura a''' bf4^> r8 ef,4 r8 | #(set-octavation 1) <ef' gf>-.[ <ef f>-. ef-.] <ef gf>^> r r |
	<ef gf>-.[ <ef f>-. ef-.] <ef gf>^> #(set-octavation 0) r r |
	\clef bass
	\acciaccatura a,,, bf4^> r8 ef,4 r8 |
	\clef treble
	<cf'' ef gf cf>4.~ <cf ef gf cf>4 <df ff gf bf>8

\pageBreak

% begin page 4

	<cf ef gf cf>4 <df ff gf bf>8 <cf ef gf cf> r r |
	<cf ef gf cf>4.^>~ <cf ef gf cf>4 <df ff gf bf>8 |
	<cf ef gf cf>4 <df ff gf bf>8 <cf ef gf cf> r r |
	<cf ef gf cf>4 <df ff gf bf>8 <cf ef gf cf>4 <ef g bf>8 | <ef af cf>4. <df af' df>4.

	\break

	<ef g bf ef>8 r r <ef g bf ef>^> r r |
	r4 <ef ef,>8^( <f f,>4 <ff ff,>8 | <ef ef,>4^>) <af af,>8 <g g,>4^> <af af,>8 |
	<c c,>4.^> <af af'>^> | <g g'>^> <f f'>^>

	\break

	<c c'>2. | <af af'>4^> <bf bf'>8 <c c'>4^> <af af'>8 | <f' f'>4. <df df'> | \afterGrace <c c'>2._\( {df'16[ c]\)}

	\break

	<bf bf,>4 <ef, ef,>8^( <f f,>4^> <ff ff,>8 | <ef ef,>4^>) <af af,>8 <g g,>4 <af af,>8 |
	<c c,>4.^> <af af'>^> | <g g'>^> <c c,>^> | <f f,>4.~ <f f,>4 <g g,>8 |

	\break

	<af af,>4 <g g,>8 <af af,>4 <f f,>8 | <ef ef,>4.^> <c c,>^> | \afterGrace <bf bf,>2.^>\( { c16[ bf]\)}
}
\alternative
{
	{
		<af af,>4 c,8^( ef4 af8)
	}
	{
		<af af,>4 r8 <af ef c af>4^> r8
	}
}
\bar "|."
     }
     
     lower = \relative c {
       \clef bass
       \key ef \major
       \time 6/8
     
	<bf bf'>4^^( <c c'>8) <ef ef'>^.[ <d d'>^. <c c'>^.] | <bf bf'>4^^( <d d'>8) <f f'>^.[ <ef ef'>^. <d d'>^.] |
	<ef ef'>4^^( <f f'>8) <g g'>^.[ <f f'>^. <ef ef'>^.] | <bf bf'>4 r8 r4 r8

	\break

\repeat volta 2
{
	ef8[ r <g bf>] bf,[ r <g' bf>] | ef[ r <g bf>] bf,[ r <g' bf>] | ef[ r <g bf>] g[ r <bf ef>] |
	f[ r <af bf d>] bf,[ r <af' bf d>] |

	\break

	f[ r <af bf>] bf,[ r <af' bf>] | f[ r <af bf>] bf,[ r <af' bf>] | f[ r <af bf>] af[ r <bf d>] |
	g[ r <bf ef>] ef,[ r <g bf ef>] |

	\break

	c,[ r <c' ef g>] <c ef g>[ r <c ef g>] | c,[ r <c' ef g>] <c ef g>[ r <c ef g>] | f,[ r <af c>] <af c>[ r <af c>] |
	f[ r <af c>] <af c>[ r <af c>] |

\pageBreak
% begin page 2 (lower)

	c,[ r <c' ef g>] <c ef g>[ r <c ef g>] | c,[ r <c' ef g>] <c ef g>[ r <c ef g>] |
	f,[ r <bf d f>] f[ r <a ef' f>] | <bf d f> r f^([ bf,]) r r |
}

\break

\repeat volta 2
{
	ef[ r <g bf>] bf,[ r <g' bf>] | ef[ r <g bf>] bf,[ r <g' bf>] |
	f[ r <af bf>] bf,[ r <af' bf>] | ef-.[ f-. fs-.] g-.[ f-. ef-.] |

	\break

	d[ r <af' bf d>] bf,[ r <af' bf d>] | ef[ r <g bf ef>] c,[ r <g' c ef>] |
	f[ r <a c ef>] f[ r <a c ef>] | bf-.[ c-. cs-.] d-.[ c-. bf-.] |

	\break

	<c c,>^>[ r <c c,>]^( <bf bf,>4^> <af af,>8 | <g g,>_>)[ r <g g,>]_( <f f,>4_> <ef ef,>8 |
	<d d,>)[ r <af af'>]_( <g g'>4 <f f'>8 | <ef ef'>4 <d d'>8 <c c'>4 <bf bf'>8) |

	\break

	g'[ r <g' bf>] <af c>[ r <af c>] | e,[ r <e' g>] <f af>[ r <f af>] |
	bf,[ r <g' bf>] bf,[ r <af' bf>] |
}
\alternative
{
	{
		<ef g bf>4 r8 <bf bf,>4_> r8
	}
	{
		<ef g bf>4 r8 r4 r8
	}
}

\pageBreak

% begin page 3 (lower)
\key af \major

\repeat volta 2
{
	af,[ r <af' c ef>] <af c ef>[ r <af c ef>] | af,[ r <af' c ef>] <af c ef>[ r <af c ef>] |
	af,[ r <af' c ef>] <af c ef>[ r <af c ef>] | af,[ r <af' c ef>] <af c ef>[ r <af c ef>] |
	f[ r <af c f>] <af c f>[ r <af c f>] |

	\break

	df,[ r <af' df f>] <af df f>[ r <af df f>] |
\override Staff.NoteCollision
 #'merge-differently-dotted = ##t
	<< \stemUp { ef8[ r <af c>] d,[ r <af' c>] } \\
	 \stemDown { ef4. d } >> |
	ef8[ r <g bf>] <g bf df>[ r <g bf df>] | af,[ r <af' c ef>] <af c ef>[ r <af c ef>] |
	af^>[ r <c ef>] f,^>[ r <af c f>] |

	\break

	c,[ r <g' c e>] <g c e>[ r <g c e>] | df[ r <bf' df f>] <bf df f>[ r <bf df f>] |
	d,[ r <af' b f'>] <af b f'>[ r <af b f'>] | ef[ r <af c ef>] <af c ef>[ r <af c ef>] |
	ef[ r <g df' ef>] ef[ r <g df' ef>]
}
\alternative
{
	{
		<af c ef>4 r8 r4 r8
	\break
	}
	{
		<af c ef>4 r8 r4 r8
	}
}
\repeat volta 2
{
	\clef treble
	\acciaccatura fs' g4^> r8 c,4 r8 | af''[ af af] <g c,> r r af[ af af] <g c,> r r
	\clef bass
	\acciaccatura fs,,, g4 r8 c,4 r8

	\break

	\clef treble
	\acciaccatura a''' bf4^> r8 ef,4 r8 | cf''-.[ cf-. cf-.] <bf ef,>^> r r | cf-.[ cf-. cf-.] <bf ef,>^> r r
	\clef bass
	\acciaccatura a,,, bf4^> r8 ef,4 r8 | <cf' cf'>4.^>~ <cf cf'>4 <gf gf'>8

\pageBreak

% begin page 4

	<cf cf'>4 <gf gf'>8 <cf cf'> r r | <cf cf'>4.~ <cf cf'>4 <gf gf'>8 | <cf cf'>4 <gf gf'>8 <cf cf'> r r |
	<cf cf'>4 <gf gf'>8 <cf cf'>4 <ef ef,>8 | <af af,>4. <ff ff,> |

	\break

	<ef ef,>8 r r <ef ef,>^> r r | r2. |
	<af, af,>8[ r <af' c ef>] <af c ef>[ r <af c ef>] | <af, af,>[ r <af' c ef>] <af c ef>[ r <af c ef>] |
	<af, af,>[ r <af' c ef>] <af c ef>[ r <af c ef>] |

	\break

	<af af,>4^> <bf bf,>8 <c c,>4^> <af af,>8 | <f f,>8[ r <af c f>] <af c f>[ r <af c f>] |
	df,[ r <af' df f>] <af df f>[ r <af df f>] | <ef ef,>4_> <f f,>8_> <ef ef,>4_> <d d,>8_> |

	\break

	<ef ef,>4 <ef ef,>8_( <f f,>4^> <g g,>8 | <af af,>8)[ r <af c ef>] <af c ef>[ r <af c ef>] |
	af[ r <c ef>] f,[ r <af c f>] | c,[ r <g' c e>] <g c e>[ r <g c e>] | <df df,>4_> <ef ef,>8 <f f,>4_> <df df,>8 |

	\break

	<d d,>[ r <af' b>] <af b>[ r <af b>] | ef[ r <af c>] <af c>[ r <af c>] | ef,[ r <g' df'>] <g df'>[ r <g df'>] |
}
\alternative
{
	{
		<af c>4 r8 r4 r8 |
	}
	{
		<af c>4 r8 <af, af,>4^> r8
	}
}
\bar "|."
     }
     
     dynamics = {
	s2.\f | s2.*3

	s4\sf s2\p | s2. | s4. s4\< s8\! | s4. s4\< s8\!

	s4\sf s2\p | s2.*3

	s2.*2 | s2.\p | s2.

% begin page 2

	s2.*2 | s4\< s2\! | s4. s4.\f

	s2.\ff | s4. s4 s16\< s16\! | s2.*2 |

	s2. | s2 s8\< s8\! | s2.*2 |

	s2\< s4\! | s4. s4\< s8\! | s2\< s4\! | s2. |

	s2.\ff | s2.*4

% begin page 3

	s2.\p | s2.*4

	s2.*5

	s2.*4 | s4\> s2\! | s2.

	s2. | s2.\f | s2.\ff | s2. | s2.\ff |

	s2.*4 | s2.\ff

% begin page 4

	s2.*5

	s2. | s16 s16*11\ff | s2.*3

	s2.*4

	s2.*5

	s2.*5
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
           \override VerticalAlignment #'forced-distance = #7
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
