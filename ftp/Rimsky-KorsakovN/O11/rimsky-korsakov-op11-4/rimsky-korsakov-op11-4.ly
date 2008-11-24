\version "2.10.33"

\header {
	title = "Etude"
	composer = "N. Rimsky-Korsakov (1844-1908)"
	opus = "Op. 11  N° 4"
	instrument = ""
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	source = "M. P. Belaïeff, Leipzig, 1890"
	style = "Romantic"
	maintainer = "Thomas Amthor"
	maintainerEmail = "thomas.amthor@gmail.com"
        mutopiatitle = "Etude"
	mutopiaopus = "Op. 11, Nr. 4"
	mutopiacomposer = "Rimsky-KorsakovN"
        mutopiainstrument = "Piano"
	date = "1878"
 footer = "Mutopia-2008/11/24-1600"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}


%
%  NOTES:
%
%  a) Bars 4 & 32: I added a tie between the two "bes", which was left out in the source
%      		   	(compare to bars 1, 6, 8, ...)
%
%  b) Bar 36, left hand, second note: the source gives "as", which I considered a mistake and
%		corrected to "f" (compare to bars 8, 10, 38, and similar voice in 2, 4, etc.)
%


\paper {
	between-system-padding = 1\mm
	between-system-space = 28\mm
}


%%
%%   Right Hand 
%%

upper = {
	\clef treble
	\key des \major
	\time 3/4 

	\override Staff.SeparationItem #'padding = #1.5

	\override Slur #'height-limit = #3
	\override Tie #'minimum-length = #3.8

	\relative {

	% Part A: Allegro

		% #1-8
		\once \override TextScript #'extra-offset = #'(-3.0 . 1.0)
		<as' f'>8([^\markup { \bold "Allegro." } <ges es'> <as f'> <f des'> <as f'> <es c'>)] |
		<des bes'>( <c' as'> <des, bes'~> <bes' ges'> <as f'> <ges es'>) |
		<as f'>([ <ges es'> <as f'> <f des'> <as f'> <es c'>)] |
		<des bes'>( <c' as'> <des, bes'~> <bes' ges'> <as f'> <ges es'>) |

		<as f'>([ <ges es'> <as f'> <f des'> <as f'> <es c'>)] |
		<as f'>( <des, bes'> <as'^~ f'> <des, as'> <g es'> <f des'>) |
		<es c'>( <des bes'> <es c'> <c as'> <es c'> <bes g'>) |
		<as f'>( <g' es'> <as, f'^~> <f' des'> <es c'> <des bes'>) |

		% #9-15
		<es c'>( <des bes'> <es c'> <c as'> <es c'> <bes g'>) |
		<as f'>( <g' es'> <as, f'^~> <f' des'> <es c'> <des bes'>) |
		<es c'>([ <des bes'> <es c'> <c as'>]) <ges' es'>([ <f des'> |
		<ges es'> <es c'>]) <bes' ges'>([ <as f'> <bes ges'> <ges es'>]) |

		<as f'>( <ges es'> <as f'> <f des'> <as f'> <es c'>) |
		<des bes'>( <c' as'> <des, bes'~> <bes' ges'> <as f'> <ges es'>) |
		<as f'>( <ges es'> <as f'> <f des'> <as f'> <eses ces'>) |
		<des bes'>([ <bes' ges'> <as f'> <ges es'>] <f des'>4) | \bar "||"

	\pageBreak
	\override Staff.SeparationItem #'padding = #1

	% Part B:

		% #17-28
		<f des'>8( <es c'> <f des'> <es c'> <f des'> <des bes'>) |
		<f des'>8( <es c'> <f des'> <es c'> <f des'> <des bes'>) |
		<es c'>([ <des bes'> <es c'> <c as'>]) <es c'>([ <des bes'> |
		<es c'> <c as'>]) <es c'>([ <des bes'> <es c'> <c as'>]) |

		<g' es'>( <f d'> <g es'> <f d'> <g es'> <es c'>) | \break
		<g es'>( <f d'> <g es'> <f d'> <g es'> <es c'>) |
		<f des'!>([ <es c'> <f des'> <des bes'>)] <f des'>([ <es c'> |
		<f des'> <des bes'>)] <f des'>([ <es c'> <f des'> <des bes'>)] |

		<c as'>([ <bes g'> <c as'> <as f'>)] <c as'>([ <bes g'> |
		<c as'> <as f'>)] <c as'>([ <bes g'> <ces as'> <as f'>)] |
		<bes ges'>([ <as f'> <bes ges'> <ges es'>)] <bes ges'>[( <as f'> |
		<bes ges'> <ges es'>)] <bes' ges'>([ <as f'> <bes ges'> <ges es'>)] |

	% Part C:
		% #29-36
		<as f'>8([ <ges es'> <as f'> <f des'> <as f'> <es c'>)] |
		<des bes'>( <c' as'> <des, bes'~> <bes' ges'> <as f'> <ges es'>) |
		<as f'>([ <ges es'> <as f'> <f des'> <as f'> <es c'>)] |
		<des bes'>( <c' as'> <des, bes'~> <bes' ges'> <as f'> <ges es'>) |

		<as f'>([ <ges es'> <as f'> <f des'> <as f'> <es c'>)] |
		<as f'>( <des, bes'> <as'^~ f'> <des, as'> <g es'> <f des'>) |
		<es c'>( <des bes'> <es c'> <c as'> <es c'> <bes g'>) |
		<as f'>( <g' es'> <as, f'^~> <f' des'> <es c'> <des bes'>) |

		% #37-44
		<es c'>( <des bes'> <es c'> <c as'> <es c'> <bes g'>) |
		<as f'>( <g' es'> <as, f'^~> <f' des'> <es c'> <des bes'>) |
		<es c'>([ <des bes'> <es c'> <c as'>]) <ges' es'>([ <f des'> |
		<ges es'> <es c'>]) <bes' ges'>([ <as f'> <bes ges'> <ges es'>]) |

		<as f'>( <ges es'> <as f'> <f des'> <as f'> <es c'>) |
		<des bes'>( <c' as'> <des, bes'~> <bes' ges'> <as f'> <ges es'>) |
		<as f'>( <ges es'> <as f'> <f des'> <as f'> <eses ces'>) |
		<des bes'>([ <bes' ges'> <as f'> <ges es'> <as f'> <f des'>)] | \bar "||"

	% Part D:

		% #45-57
		\once \override TextScript #'extra-offset = #'(-1.9 . 0.3)
		<ges eses'>([^\markup { \italic \bigger "a tempo" } <f des'> <ges eses'> <eses ces'>)] <ges eses'>([ <f des'> |
		<ges eses'> <eses ces'>)] <ges eses'>([ <eses ces'> <fes des'> <des beses'>)] |
		<as' fes'>([ <g es'> <as fes'> <fes des'>)] <as fes'>([ <g es'> |
		<as fes'> <fes des'>)] <as fes'>([ <fes des'> <g es'> <des bes'>)] |

		<es c'>([ <des bes'> <es c'> <c as'>)] <ges' es'>([ <f d'> |
		<ges es'>( <es c'>)] <as f'>([ <ges es'> <as f'> <f des'>)] |
		<des bes'>( <bes' ges'> <as f'> <ges es'> <as f'> <eses ces'>) |
		<des bes'>([ <bes' ges'> <as f'> <ges es'>)] 
			\once \override TextScript #'extra-offset = #'(-0.2 . 0.8)
			<as f'>([^\markup { \italic \bigger "Vivo." } <ges es'>)] |

		<as f'>( <f des'>) <des' as'>( <as f'>) <f' des'>( <des as'>) |
		<as' f'>( <f des'>) <f des'>( <des as'>) <des as'>( <as f'>) |
		<f des'>4 r r |
		<f' as f'> r r |
		<f,, as des>2.-> \fermata |

	}
	\bar "|."


}



%%
%%   Left Hand
%%

lower = {
	\clef bass
	\key des \major
	\time 3/4

	\override Slur #'height-limit = #3

	% Part A: Allegro

	\relative {
		% #1-8
		des,8( as' f des' as as') |
		ges( bes, es ges, as as,) |
		des8( as' f des' as as') |
		ges( bes, es ges, as as,) |

		des8( as' f des' as as') |
		\stemDown \once \override Slur #'positions = #'(1.5 . 0.4)
		bes,,( f' des bes' es, es,) |
		as( es' c as' es es') |
		des( f, bes des, es es,) |

		% #9-16
		as( es' c as' es es') |
		des( f, bes des, es es,) |
		as[( es' c as')] c,[( as' |
		es c')] es,[( c' es, as,)] |

		des,-. as''( f des' as as') |
		ges( bes, es ges, as as,) |
		des8( as' f des' as f') |
		ges([ ges, as as,] des4) |


	% Part B:
		% #17-28
		bes8([ ges' f bes]) bes,8([ ges' |
		f bes]) bes,([ f' es g]) |
		as,( fes' es as g es') |
		as,,( fes' es g as es') |

		c,([ as' g c)] c,([ as' | \break
		g c)] c,([ g' f a)] |
		bes,( ges'! f bes a f') |
		bes,,( ges' f a bes f') |

		\stemUp f,,([ des' c f)] f,([ des' |
		c f)] f,([ f' bes, d)] |
		es,([ ces' bes es)] es,([ ces' |
		bes es)] es,([ es' c! as)] \stemNeutral |

	% Part C:
		% #29-36
		des,8( as'' f des' as as') |
		ges( bes, es ges, as as,) |
		des8( as' f des' as as') |
		ges( bes, es ges, as as,) |

		des8( as' f des' as as') |
		\stemDown \once \override Slur #'positions = #'(1.5 . 0.4)
		bes,,( f' des bes' es, es,) |
		as( es' c as' es es') |
		des( f, bes des, es es,) |

		% #37-44
		as( es' c as' es es') |
		des( f, bes des, es es,) |
		as[( es' c as')] c,[( as' |
		es c')] es,[( c' es, as,)] |

		des,-. as''( f des' as as') |
		ges( bes, es ges, as as,) |
		des8( as' f des' as f') |
		ges([ ges, as as,] des4) | \bar "||"

	% Part D:
		% #45-57
		des8([ beses' as ges')] des,([ beses' |
		as ges')] des,([ f fes beses)] |
		des,([ beses' as des)] des,([ beses' |
		as des)] des,([ as' es g)] |

		as,([ fes' es as)] as,([ ges' |
		es c')] des,([ beses' as des)] |
		ges,[ 
			\textSpannerUp
			\override TextSpanner #'edge-text = #(cons (markup #:italic #:bigger "ritard. ") (markup "") )
			\override TextSpanner #'extra-offset = #'(-0.3 . 2.8) 
			\override TextSpanner #'dash-period = #3.8
			\override TextSpanner #'dash-fraction = #0.1
			es]\startTextSpan as4 d,8[ f] \stopTextSpan | \break
		\once \override TextScript #'extra-offset = #'(-0.8 . +0.6)
		\stemNeutral ges[^\markup {
			\postscript #"-2.0 1 moveto -0.8 0 rlineto stroke"
			\italic \bigger "molto"
			}
		  ges,] as4 r |

		des8( f) as,( des) f,( as) |
		des,( f as des f as) |
		des4 r r \clef treble |
		<des as' des>4 r r \clef bass |
		<des,, as' des>2.-> \fermata |
	}

}



dynamics = {
	\time 3/4

   % Part A:
	s2. \p
	s2.*9
	s2. \<
	s8 s8 \! s4. \> s8 \!
	s2.*4

   % Part B:
	s2. \pp
	s2.*7

	s4 \setTextCresc s2\<
	s2. s2. s4 \setHairpinCresc s4 \! \< s8 s16 \! s16

    % Part C:
	s2. \f
	s2.*3
	\once \override TextScript #'extra-offset = #'(0 . +1.3)
	s2._\markup{\italic \bigger dimin.}

	s2. s2. \p
	s2.*3 s2. \< s8 s8\! s4\> s8 s16\! s16
	s2.

	s2. s2.
	\once \override TextScript #'extra-offset = #'(0 . +1.8)
	s4_\markup{\italic \bigger rit.}
	s4.\> s8\!

    % Part D:
	s2. \pp
	s2.*3

	s2.\<
	s2 s8 s8\! |
	\override DynamicText #'extra-offset = #'(+0.7 . +1.9)
	s8 \mf s8 s2

	\override DynamicText #'extra-offset = #'(0 . +1.1)
	s8 s8 s8 s8 \p s4

	\setTextCresc s8\< s8\! s2
	s2.
	\override DynamicText #'extra-offset = #'(0 . +2.5)
	s2. \f
	s2. \sf
	s2.

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
			\override DynamicTextSpanner #'dash-period = #10
			\override DynamicTextSpanner #'dash-fraction = #0.05

			\consists "Skip_event_swallow_translator"

			\consists "Axis_group_engraver"
		}
		\context {
			\PianoStaff
			\accepts Dynamics
 
			\override VerticalAlignment #'forced-distance = #7.0
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

