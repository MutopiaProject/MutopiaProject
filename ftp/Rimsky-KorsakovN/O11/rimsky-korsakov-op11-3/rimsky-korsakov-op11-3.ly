\version "2.10.33"

\header {
	title = "Scherzino"
	composer = "N. Rimsky-Korsakov (1844-1908)"
	opus = "Op. 11  N° 3"
	instrument = ""
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	source = "M. P. Belaïeff, Leipzig, 1890"
	style = "Romantic"
	maintainer = "Thomas Amthor"
	maintainerEmail = "thomas.amthor@gmail.com"
        mutopiatitle = "Scherzino"
	mutopiaopus = "Op. 11, Nr. 3"
	mutopiacomposer = "Rimsky-KorsakovN"
        mutopiainstrument = "Piano"
	date = "1878"
 footer = "Mutopia-2008/08/23-1530"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

%
%  NOTES:
%
%  a) Bars 2,10,34,42: I added the augmented eighth's rest of the upper voice which
%     was left out in the source edition (Belaieff, 1890), see bars 4,12,... for comparison.
%     The corresponding rest in bar 44 lacked the augmentation dot in the source.
%
%  b) The weird cross-system note stems in bars 7,8,... have been typeset exactly in the
%     same way as in the source. This causes lilypond warning messages which can be ignored.
%     lilypond 2.11 offsers a way to suppress the warnings
%     (\override NoteColumn #'ignore-collision = ##t), but lacks the 
%     "VerticalAlignment #'forced-distance" option which is needed here for optimum staff placement.
%
%  c) The first rest in bar 53 had been omitted by mistake in the source edition.
%


% definitions:
u = \change Staff = upper
l = \change Staff = lower
nr = {
 \once\override Rest #'extra-offset = #'( 0.0 . 0.0 )
 r8.
}
shiftbeam = \once \override Beam #'positions = #'(-6 . -6)

%%
%%   Right Hand 
%%

upper = {
%	\override NoteColumn #'ignore-collision = ##t

	\clef treble
	\key a \major
	\time 2/4 

	\partial 16

	% Part A: Vivo e leggieramente

	\relative {
		\override Rest #'extra-offset = #'( 0.3 . 3.0 )
		% #1-8
		\stemUp
		\once \override TextScript #'extra-offset = #'(-3.0 . 2.0)
		<eis' cis'>16^\markup { \bold "Vivo e leggieramente." } |
		cis'^( b) r <b, fis'> a'^( gis) r e |
		b'^( a) r8 \nr <eis cis'>16 |
		cis'^( b) r <b, fis'> a'^( gis) r e |
		b'^( a) r8 \nr <gis e'>16 |
		e'^( d) r <b, fis'> a'^( gis) r  <gis e'>|
		e'^( d) r <b, fis'> a'^( gis) r  <gis e'>|
		e'^( d) r <cis a'> a'^( fis) \l d \u b |
		a^( fis) \l d \u cis ais^( b) r <eis cis'> |

		% #9-16
		cis'^( b) r <b, fis'> a'^( gis) r e |
		b'^( a) r8 \nr <eis cis'>16 |
		cis'^( b) r <b, fis'> a'^( gis) r e |
		b'^( a) r8 \nr <gis e'>16 |
		e'^( d) r <b, fis'> a'^( gis) r  <gis e'>|
		e'^( d) r <b, fis'> a'^( gis) r  <gis e'>|
		e'^( d) r <cis a'> a'^( fis) \l d \u b |
		a^( fis) \l d \u <fis, d'> bis^( cis) r \clef bass cis, |
		\break
	}

	% Part B: Appassionato
	<< \relative {
		% #17-24
		\once \override TextScript #'extra-offset = #'(-2.0 . 1.0)
		cis8.^\markup { \bold "Appassionato." } d16 d8. cis16 |
		cis8. fis16 fis8. gis16 \clef treble |
		a8. b16 b8. d16 |
		cis8. gis16 a8. cis16 |
		cis8. d16 d8. cis16 |
		cis8. fis16 fis8. gis16 |
		a8. b16 b8. fis'16 |
		e8. b16 cis8.\noBeam \clef bass cis,,16 |

		% #25-32
		cis8. d16 d8. cis16 |
		cis8. fis16 fis8. gis16 \clef treble |
		a8. b16 b8. d16 |
		cis8. gis16 a8. cis16 |
		cis8. d16 d8. cis16 |
		cis8. fis16 fis8. gis16 |
		a8. b16 << {b8. fis'16} \\ {s8. a,16} >> |
		e'8. gis,16 a8 << r16 \\ s16 >>
			\once \override TextScript #'extra-offset = #'(-2.2 . -2.0)
			<eis cis'>16^\markup {\dynamic "pp"} |
		} \\
	\relative {
		s2*6
		s4 s8. a''16 |
		s8. fis16 s4 |
		}
	>>
	\bar "||"
	\break

	% Part C

	\relative {
		% #33-40
		\stemUp
		cis''16^( b) r <b, fis'> a'^( gis) r e |
		b'^( a) r8 \nr <eis cis'>16 |
		cis'^( b) r <b, fis'> a'^( gis) r e |
		b'^( a) r8 \nr <gis e'>16 |
		e'^( d) r <b, fis'> a'^( gis) r  <gis e'>|
		e'^( d) r <b, fis'> a'^( gis) r  <gis e'>|
		e'^( d) r <cis a'> a'^( fis) \l d \u b |
		a^( fis) \l d \u cis ais^( b) r <eis cis'> |

		% #41-
		cis'^( b) r <b, fis'> a'^( gis) r e |
		b'^( a) r8 \nr <eis cis'>16 |
		cis'^( b) r <b, fis'> a'^( gis) r e |
		b'^( a) r8 \nr <gis e'>16 |
		e'^( d) r <b, fis'> a'^( gis) r  <gis e'>|
		e'^( d) r <b, fis'> a'^( gis) r  <gis e'>|
		e'^( d) r <cis a'> a'^( fis) \l d \u b |
		a^( fis) \l e \u <d gis> b'^( a) r e |

		b'^( a) r <g! cis> e'^( d) r <a, fis'> |
		a'^( gis) r e b'^( a) r e |
		b'^( a) r <g! cis> e'^( d) r <a, fis'> |
		a'^( gis) r e b'^( a) r e |
		d'^( cis) r a fis'^( e) r e |
		#(set-octavation 1)
		 \set Staff.ottavation = #"8"
		 \once\override Staff.OttavaBracket #'extra-offset = #'(-.6 . 0.5)
		s2
		 #(set-octavation 0)
		\stemNeutral
		<a, d>16^([ <e cis'>)] \l a,[ \u cis] e^( a cis e) |
		\override Rest #'extra-offset = #'( 0 . 0 )
		a8-. r8 r4

	}
	\bar "|."


}



%%
%%   Left Hand
%%

lower = {
%	\override NoteColumn #'ignore-collision = ##t

	\clef bass
	\key a \major
	\time 2/4

	\partial 16

	% Part A: Vivo e leggieramente

	\relative {
		% #1-8
		r16 |
		\u fis'16 d \l \clef treble <b fis'>( d,) \u d' b \l <gis d'>( e)  |
		\u e' cis \l <a e'>( cis,)   \u <cis' a'>( <a e'>) \l <e cis'>( a,) |
		\u fis'' d \l \clef treble <b fis'>( d,) \u d' b \l <gis d'>( e)  |
		\u e' cis \l <a e'>( cis,)   \u <cis' a'>( <a e'>) \l <e cis'>( a,) |
		\u a'' fis \l <a, d>( b,)    \u d' b \l <gis d'>( e) |
		\u a'  fis \l <a, d>( b,)    \u d' b \l <gis d'>( e) |
		\u a'  fis \l <a, d>( b,)    \u d'' a \l <fis d'> ( b,) |
		\u d a \l <fis d'>( b,)  \u \once \override Beam #'positions = #'(-4.5 . -5.1)
			\stemDown d8 \l \clef bass \stemUp <gis, e'>16( e!) |
		\stemNeutral

		% #9-16
		\u fis''16 d \l \clef treble <b fis'>( d,) \u d' b \l <gis d'>( e)  |
		\u e' cis \l <a e'>( cis,)   \u <cis' a'>( <a e'>) \l <e cis'>( a,) |
		\u fis'' d \l \clef treble <b fis'>( d,) \u d' b \l <gis d'>( e)  |
		\u e' cis \l <a e'>( cis,)   \u <cis' a'>( <a e'>) \l <e cis'>( a,) |
		\u a'' fis \l <a, d>( b,)    \u d' b \l <gis d'>( e) |
		\u a'  fis \l <a, d>( b,)    \u d' b \l <gis d'>( e) |
		\u a'  fis \l <a, d>( b,)    \u d'' a \l <fis d'> ( b,) |
		\u d a \l <fis d'>( b,)  \u \once \override Beam #'positions = #'(7.5 . 6.5)
			\stemDown eis8 \l \clef bass \stemUp <b gis'>16( cis,) |
		\stemNeutral
	}


	% Part B: Appassionato

	r16
	<< {
	\relative {

		% #17-24
			\stemNeutral
		fis,,16 <cis' a'> \u fis eis \l gis, <cis b'> \u eis |
		fis \l a, <cis a'> \u fis b \l d, <fis d'> \u b |
		\stemDown cis \l \stemUp cis, <a' fis'> \u \stemDown fis'
			fis \l \stemUp d, <b' fis'> b, |
		\u \stemDown cis' \l \stemUp cis, <b' eis> \u \stemDown cis 
			cis \l \stemUp fis, <a fis'> \u \stemDown fis' |

		\stemNeutral \shiftbeam fis \l \clef treble fis, <cis' a'> \u fis
			\shiftbeam eis \l gis, <cis b'> \clef treble \u eis |
		\shiftbeam fis \l a, <cis a'> \u fis b \l d, <fis d'> \u b |
		cis \l cis, <a' fis'> \u fis' {\times 2/3 fis16.} \l d,16 <a' fis'> b, |
		\u {\times 2/3 gis''16.} \l e,16 <gis b> d \u eis' \l cis, <gis' cis>8 \clef bass |
		}
	} \\
	{
	\relative {
		% #17-24
		fis,,8 s16 s gis8 s16 |
		s16 a8 s16 s d8 s16 |
		s16 cis8 s16 s d8 b16 |
		s16 cis8 s16 s fis8 s16 |

		s16 fis8 s16 s gis8 s16 |
		s16 a8 s16 s d8 s16 |
		s16 cis8 s16 s d8 b16 |
		s16 e8[ d] cis s16 |
		}
	} >>
			

	r16
	<< {
	\relative {

		% #25-32
			\stemNeutral
		fis,,16 <cis' a'> \u fis eis \l gis, <cis b'> \u eis |
		fis \l a, <cis a'> \u fis b \l d, <fis d'> \u b |
		\stemDown cis \l \stemUp cis, <a' fis'> \u \stemDown fis'
			fis \l \stemUp d, <b' fis'> b, |
		\u \stemDown cis' \l \stemUp cis, <b' eis> \u \stemDown cis 
			cis \l \stemUp fis, <a fis'> \u \stemDown fis' |

		\stemNeutral \shiftbeam fis \l \clef treble fis, <cis' a'> \u fis
			\shiftbeam eis \l gis, <cis b'> \clef treble \u eis |
		\shiftbeam fis \l a, <cis a'> \u fis b \l d, <fis d'> \u b |
		cis \l cis, <a' fis'> \u fis' {\times 2/3 fis16.} \l d,16 <a' fis'> b, |
		\u gis'' \l e, <b' e> \u d cis \l a, <a' e'>8 |
		}
	} \\
	{
	\relative {
		% #25-32
		fis,,8 s16 s gis8 s16 |
		s16 a8 s16 s d8 s16 |
		s16 cis8 s16 s d8 b16 |
		s16 cis8 s16 s fis8 s16 |

		s16 fis8 s16 s gis8 s16 |
		s16 a8 s16 s d8 s16 |
		s16 cis8 s16 s d8 b16 |
		s16 e8 s16 s a,8 s16 |
		}
	} >>


	% Part C

	\relative {
		% #33-40
		\u fis'16 d \l \clef treble <b fis'>( d,) \u d' b \l <gis d'>( e)  |
		\u e' cis \l <a e'>( cis,)   \u <cis' a'>( <a e'>) \l <e cis'>( a,) |
		\u fis'' d \l \clef treble <b fis'>( d,) \u d' b \l <gis d'>( e)  |
		\u e' cis \l <a e'>( cis,)   \u <cis' a'>( <a e'>) \l <e cis'>( a,) |
		\u a'' fis \l <a, d>( b,)    \u d' b \l <gis d'>( e) |
		\u a'  fis \l <a, d>( b,)    \u d' b \l <gis d'>( e) |
		\u a'  fis \l <a, d>( b,)    \u d'' a \l <fis d'> ( b,) |
		\u d a \l <fis d'>( b,)  \u \once \override Beam #'positions = #'(-4.5 . -5.1)
			\stemDown d8 \l \clef bass \stemUp <gis, e'>16( e!) |
		\stemNeutral

		% #41-48
		\u fis''16 d \l \clef treble <b fis'>( d,) \u d' b \l <gis d'>( e)  |
		\u e' cis \l <a e'>( cis,)   \u <cis' a'>( <a e'>) \l <e cis'>( a,) |
		\u fis'' d \l \clef treble <b fis'>( d,) \u d' b \l <gis d'>( e)  |
		\u e' cis \l <a e'>( cis,)   \u <cis' a'>( <a e'>) \l <e cis'>( a,) |
		\u a'' fis \l <a, d>( b,)    \u d' b \l <gis d'>( e) |
		\u a'  fis \l <a, d>( b,)    \u d' b \l <gis d'>( e) |
		\u a'  fis \l <a, d>( b,)    \u d'' a \l <fis d'> ( b,) |
		\u d a \l <gis! e'>( e)  \u \stemNeutral e' cis \l <a e'>16( a,) |

		% #49-
		\u e'' cis \l <g e'>( a,)  \u a'' fis \l <fis, d'>( a,) |
		\u d' b \l <gis! e'>( a,)  \u e'' cis \l <a e'>( a,) |
		\u e'' cis \l <g e'>( a,)  \u a'' fis \l <fis, d'>( a,) |
		\u d' b \l <gis! e'>( a,)  \u e'' cis \l <a e'>( a,) |
		\u a'' e \l <cis a'>( e,)  \u cis'' a \l <e cis'>( a,) |
		\stemDown \u <e'' b'>( <cis a'>) \l \stemUp <a e'>( <e cis'>)
			\stemDown \u <cis' fis>( <a e'>) \l \stemUp <e cis'>( <cis a'>) |
		s4 a16( cis e a) |
		cis8-. r8 r4 |
		
	}

}



dynamics = {
	\override DynamicText #'extra-offset = #'(0 . 4.0)
	\time 2/4
	s16 \pp
	a2*16
	s2 \f
	s2*7
	s2 \f
	s2*7
	% #33
	\once \override DynamicText #'extra-offset = #'(0 . 1.5)
	s2 \pp
	s2*15
	\once \override TextScript #'extra-offset = #'(0 . -1.0)
	s2_\markup{\italic cresc.}
	\once \override TextScript #'extra-offset = #'(0 . -0.5)
	s2_\markup{\italic dim.}
	\once \override TextScript #'extra-offset = #'(0 . -1.0)
	s2_\markup{\italic cresc.}
	\once \override TextScript #'extra-offset = #'(0 . -0.5)
	s2_\markup{\italic dim.}
	s2
	s2|
	\once \override DynamicText #'extra-offset = #'(3.0 . 2.0)
	s2\pp
	s2|
}


%%
%%   PDF, PS
%%

\score {
	\new PianoStaff <<
		\set PianoStaff.instrumentName = \markup{"Piano"\hspace #1 }
		\set PianoStaff.connectArpeggios = ##t
		\new Staff = "upper" \upper
		\new Dynamics = "dynamics" \dynamics
		\new Staff = "lower" \lower
	>>
	\layout {
		\context {
			\type "Engraver_group"
			\name Dynamics
			\alias Voice
			\consists "Output_property_engraver"

			\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)

			\consists "Script_engraver"
			\consists "Dynamic_engraver"
			\consists "Text_engraver"
     
			\override DynamicText #'extra-offset = #'(0 . 2.0)
			\override Hairpin #'extra-offset = #'(0 . 2.0)
			\override DynamicTextSpanner #'extra-offset = #'(0 . 2.0) 

			\consists "Skip_event_swallow_translator"
     
			\consists "Axis_group_engraver"
		}
		\context {
			\PianoStaff
			\accepts Dynamics
 
			\override VerticalAlignment #'forced-distance = #5.5
			\override SeparationItem #'padding = #0.7
		}
	}
}


%%
%%   MIDI
%%

\score {
	\new PianoStaff <<
		\new Staff = "upper" << \upper \dynamics >>
		\new Staff = "lower" << \lower \dynamics >>
	>>
	\midi {
		\context {
			\type "Performer_group"
			\name Dynamics
		}
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}

