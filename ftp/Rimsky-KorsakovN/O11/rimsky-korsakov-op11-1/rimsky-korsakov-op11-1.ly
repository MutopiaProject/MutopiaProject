\version "2.10.25"

\header {
	title = "Impromptu"
	composer = "N. Rimsky-Korsakov (1844-1908)"
	opus = "Op. 11  N° 1"
	instrument = ""
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	source = "M. P. Belaïeff, Leipzig, 1890"
	style = "Romantic"
	maintainer = "Thomas Amthor"
	maintainerEmail = "thomas.amthor@gmail.com"
        mutopiatitle = "Impromptu"
	mutopiaopus = "Op. 11, Nr. 1"
	mutopiacomposer = "Rimsky-KorsakovN"
        mutopiainstrument = "Piano"
	date = "1878"
 footer = "Mutopia-2008/04/16-1382"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

%
%  NOTES:
%  There were some mistakes and ambiguities in the source edition
%  (Belaieff, 1890) which are commented on in the following:
%
%  a) In bars 33, 45, and 59, I added a stem down at the second note
%     (upper staff, cis / e), which was probably left out by mistake in
%     the source edition.
%  
%  b) In the part labeled "Molto agitato" the ties used to connect the 3rd
%     and 4th notes of each bar (upper staff) are sometimes single, sometimes
%     double ties.
%     This has been copied exactly as it is in the source edition.
%
%  c) Bar 41: the source edition gives an augmented fourth as second chord
%     in the lower staff. Comparing this bar to similar passages (bars 33,37,
%     45,(55),59,63) suggests that a fourth followed by an eighth rest should
%     be used instead. I added a rest in parentheses here. 
%     However, I couldn't manage to parenthesize the augmentation dots.
%
%  d) Bar 55: the source edition writes both augmentation dots and the eighth
%     rest in the lower staff (second chord), which is not possible. I left
%     out the dots and used only the rest (compare to similar passages: 
%     bars 33,37,45,59,63).
%
%  e) Bar 62: There is no tie for the "gis" in the source edition, which 
%     may be a mistake. I have added a dashed tie here.
%
%  f) Bar 77: The source edition gives "e", but "eis" seems to be correct
%     (compare to bar 12). I added a sharp within parentheses.
%
%  g) Bar 83: I added a second double sharp (fisis) for the upper voice of
%     the lower staff. The source edition leaves out this second double sharp
%     here, but does write it in bar 18.
%


%%
%%   Right Hand 
%%

upper = {

	% Part A: Allegro

	\clef treble
	\key b \major
	\time 2/4
	
	r4^\markup { \bold "Allegro." }
	<<
	\relative {
		\override TupletNumber #'transparent = ##t
		\override TupletBracket #'bracket-visibility = ##f
		\times 2/3 {

		% #1-12
		fis'4 fis8 |
		fis4 e8 ais4 gis8 |
		fis4 e8 dis4 cis8 |
		ais4 b8 b4 b8 |
		b4 ais8 fis'4 e8 |
		dis4 cis8 b4 ais8 |
		fisis4 gis8 ais4 b8 |
		bis4 cis8 dis4 e8 |
		b4 ais8 b4 cis8 |
		e4 dis8 fis4 fis8 |
		fis4 eis8 fis4 gis8 |
		dis4 cisis8 dis4 eis8 |

		% #13-24
		gis4 fis8 fis4 fis8 |
		fis4 e8 ais4 gis8 |
		fis4 e8 dis4 cis8 |
		ais4 b8 b4 b8 |
		b4 ais8 fis'4 e8 |
		dis4 cis8 b4 ais8 |
		fisis4 gis8 ais4 bis8 |
		dis4 cis8 dis4 e8 |
		cisis4 dis8 e4 fis8 |
		a4 gis8 ais4 b8 |
		dis4 cis8 b4 ais8 |
		fisis4 gis8 ais4 b8 |

		% #25-28
		dis4 cis8 b4 ais8 |
		fisis4 gis8 cisis,4 dis8 |
		ais4 b8 fisis4 gis8 |
		gis4 s8 b4 s8 |
		}	
	}
	\\
	\relative {
		\override TupletNumber #'transparent = ##t
		\override TupletBracket #'bracket-visibility = ##f
		\times 2/3 {

		% #1-12
		fis'8 fis, b |
		fis' gis, b ais' b, e |
		fis gis, b dis e, gis |
		ais dis, fis b dis, gis |
		b e, ais fis' gis, b |
		dis dis, ais' b cis, e |
		fisis b, dis ais' dis, gis |
		bis e, gis dis' gis, b! |
		b cis, e b' e, gis |
		e' fis, b fis' b, dis |
		fis gis, b fis' b, dis |
		dis eis, gis dis' gis, b |

		% #13-24
		gis' ais, dis fis fis, b |
		fis' gis, b ais' b, e |
		fis gis, b dis e, gis |
		ais dis, fis b dis, gis |
		b e, ais  fis' gis, b |
		dis dis, ais' b cis, ais' |
		fisis bis, dis ais' dis, fisis |
		dis' e, gis dis' gis, cis |
		cisis gis bis e gis, bis |
		a' cis, e ais e gis |
		dis' e, gis b cis, e |
		fisis b, dis ais' dis, gis |

		% #25-28
		dis' e, gis b cis, e |
		fisis b, dis cisis gis b |
		ais dis, gis fisis b, dis |
		gis b, <<dis gis>> b <<dis gis>> b |
		}
	}
	>>
	\relative { 
		\override TupletNumber #'transparent = ##t
		\override TupletBracket #'bracket-visibility = ##f
		\times 2/3 {
		<< dis''8 gis >> r8 r8  r4 << gis,,,8 \\ gis >> 
		}
		\bar "||"
	}


	% part B: Molto agitato

	\key cis \minor

	<<
	\relative {
		\override TupletNumber #'transparent = ##t
		\override TupletBracket #'bracket-visibility = ##f
		\times 2/3 {

		% #30-37
		cis^\markup { \bold "Molto agitato." } e dis dis gis gis, |
		cis e dis~ dis gis gis, |
		cis e dis~ dis gis ais |
		b cis, ais' fisis gis gis, |
		cis e dis~ dis gis gis, |
		cis e dis  dis gis gis, |
		cis e dis~ dis gis ais |
		b cis, ais' fisis gis b, |

		% #38-45
		e gis fis fis b b, |
		e gis fis fis b b, |
		e gis fis fis b cis |
		dis e, cis' ais b b, |
		e gis fis fis b b, |
		e gis fis fis b b, |
		e gis fis fis b cis |
		dis e, cis' a[ b] fis |

		% #46-53, cresc.
		e fis, dis' bis cis gis' |
		fis fis, e' cisis dis a' |
		gis gis, fis' dis e cis' |
		b b, a' gis b, a' |
		gis gis, fis' dis e cis' |
		b b, a' fisis gis fis' |
		e fis, dis' bis cis e |
		dis dis, cis' aisis bis fis' |

		% #54-55
		e fis, dis' bis cis e |
		dis dis, cis' bis gis gis, |

		% #56-63, ff
		cis e dis~ dis gis gis, |
		cis e dis~ dis gis gis, |
		cis e dis~ dis gis ais |
		b cis, ais' fisis gis gis, |
		cis e dis~ dis gis gis, |
		cis e dis  dis gis cis, |
		fis a gis gis cis dis |
		e fis, dis' bis cis d! |

		% #64-65
		cis cis, b' gis a fis |
		e fis, dis' cis[ e,] 
		}
	}
	\\
	\relative {
		\override TupletNumber #'transparent = ##t
		\override TupletBracket #'bracket-visibility = ##f
		\set tieWaitForNote = ##t
		\times 2/3 {
		cis4 dis8~ dis4 gis,8 |
		cis4 dis8~ dis4 gis,8 |
		cis4 dis8~ dis4 e8 |
		\times 1/2 { b'4 cis,4~ } ais'8 cis,8 b gis |
		cis4 dis8~ dis4 gis,8 |
		cis4 dis8~ dis4 gis,8 |
		cis4 dis8~ dis4 e8 |
		\times 1/2 { b'4 cis,4~} ais'8 cis,8[ b] b |		

		e4 fis8~ fis4 b,8 |
		e4 fis8~ fis4 b,8 |
		e4 fis8~ fis4 gis8 |
		\times 1/2 { dis'4 e,~ } cis'8 e,[ dis] b |
		e4 fis8~ fis4 b,8 |
		e4 fis8~ fis4 b,8 |
		e4 fis8~ fis4 gis8 |
		\times 1/2 { dis'4 e,~ } cis'8 e,[ dis] fis |

		% cresc.
		\times 1/2 {e4 fis,} dis'8 \times 1/2 {s4 e,} gis'8 |
		\times 1/2 {fis4 fis,} e'8 \times 1/2 {s4 fis,} a'8 |
		\times 1/2 {gis4 gis,} fis'8 \times 1/2 {s4 e,} cis''8 |
		\times 1/2 {b4 b,} a'8 \times 1/2 {gis4 b,} a'8 |
		\times 1/2 {gis4 gis,} fis'8 \times 1/2 {s4 gis,} cis'8 |
		\times 1/2 {b4 b,} a'8 \times 1/2 {s4 b,} fis''8 |
		\times 1/2 {e4 fis,} dis'8 \times 1/2 {bis4 e,} e'8 |
		\times 1/2 {dis4 dis,} cis'8 \times 1/2 {s4 dis,} fis'8 |

		\times 1/2 {e4 fis,} dis'8 \times 1/2 {bis4 e,} e'8 |
		\times 1/2 {dis4 dis,~} cis'8 dis, gis gis, |

		% ff
		cis4 dis8~ dis4 gis,8 |
		cis4 dis8~ dis4 gis,8 |
		cis4 dis8~ dis4 e8 |
		\times 1/2 { b'4 cis,4~ } ais'8 cis,8[ b] gis |
		cis4 dis8~ dis4 gis,8 |
		cis4 dis8~ dis4 cis8 |
		 % in #62, there is no tie for the "gis" in the source (mistake?), 
		 % 	   a dashed tie is added here.
		 \override Tie #'dash-period = #0.6
		 \override Tie #'dash-fraction = #0.4
			fis4 gis8~ gis4 a8 |
		 \override Tie #'dash-period = #0.6
		 \override Tie #'dash-fraction = #1
		\times 1/2 { e'4 fis,4~} dis'8 fis,8 eis4 |		

		\times 1/2 {cis'4 cis,} b'8 \times 1/2 {gis4 cis,} fis8 |
		\times 1/2 {e4 fis,~} dis'8 fis,[ e]
		}
	}
	>>
	\times 2/3 {r8}  |
	\bar "||"


	% Part C: Tempo I

	\key b \major
	
	\times 2/3 {r4^\markup { \bold "Tempo I." } r8 }
	<<
	\relative {
		\override TupletNumber #'transparent = ##t
		\override TupletBracket #'bracket-visibility = ##f
		\times 2/3 {
		fis'4 fis8 |
		fis4 e8 ais4 gis8 |
		fis4 e8 dis4 cis8 |
		ais4 b8 b4 b8 |
		b4 ais8 fis'4 e8 |
		dis4 cis8 b4 ais8 |
		fisis4 gis8 ais4 b8 |
		bis4 cis8 dis4 e8 |
		b4 ais8 b4 cis8 |
		e4 dis8 fis4 fis8 |
		fis4 eis8 fis4 gis8 |
		dis4 cisis8 dis4 eis8 |

		gis4 fis8 fis4 fis8 |
		fis4 e8 ais4 gis8 |
		fis4 e8 dis4 cis8 |
		ais4 b8 b4 b8 |
		b4 ais8 fis'4 e8 |
		dis4 cis8 b4 ais8 |

		fisis4 gis8 ais4 b8 |
		dis4 cis8 dis4 e8 |
		cisis4 dis8 e4 fis8 |
		a4 gis8 ais4 bis8 |
		dis4 cis8 b4 ais8 |
		ais4 b8 cis4 dis8 |

		fis4 e8 dis4 cis8 |
		ais4 b8 eis,4 fis8 |
		cisis4 dis8 ais4 b8 |
		b4 s8 s8 b'4 |
		}	
	}
	\\
	\relative {
		\override TupletNumber #'transparent = ##t
		\override TupletBracket #'bracket-visibility = ##f
		\times 2/3 {
		fis'8 fis, b |
		fis' gis, b ais' b, e |
		fis gis, b dis e, gis |
		ais dis, fis b dis, gis |
		b e, ais fis' gis, b |
		dis dis, ais' b cis, e |
		fisis b, dis ais' dis, gis |
		bis e, gis dis' gis, b! |
		b cis, e b' e, gis |
		e' fis, b fis' b, dis |
		fis gis, b fis' b, dis |
		dis eis, gis dis' gis, b |

		gis' ais, dis fis fis, b |
		fis' gis, b ais' b, e |
		fis gis, b dis e, gis |
		ais dis, fis b dis, gis |
		b e, ais  fis' gis, b |
		dis dis, ais' b cis, ais' |

		fisis b, gis' ais cis, gis' |
		dis' e, gis dis' gis, cis |
		cisis fis, b e b dis |
		a' bis, dis ais' dis, fis |
		dis' e, gis b cis, e |
		ais dis, fis cis' fis, b |
		fis' gis, b dis e, gis |
		ais dis, fis eis b dis |
		cisis fis, b ais dis, fis |
		b <dis, fis> b' <dis fis> b' <b dis> |
		b'
		}
	}
	>>
	\relative { 
		\override TupletNumber #'transparent = ##t
		\override TupletBracket #'bracket-visibility = ##f
		\times 2/3 {
		r8 r8 r4\fermata r8
		}
		\bar "|."
	}



}



%%
%%   Left Hand
%%

lower = {

	% Part A: Allegro

	\clef bass
	\key b \major
	\time 2/4
	
	<<
	\relative {
		\override TupletNumber #'transparent = ##t
		\override TupletBracket #'bracket-visibility = ##f
		\times 2/3 {
		% #1-12
		s8 dis4 s8 b4 |
		s8 cis4 s8 e4 |
		s8 gis,4 s8 ais4 |
		s8 fis4 s8 gis4 |
		s8 cis4 s8 cis4 |
		s8 cis4 s8 fisis,!4 |
		s8 dis4 s8 b'4 |
		s8 cis4 s8 cis4 |
		s8 gis4 s8 ais 4 |
		s8 fis4 s8 b4 |
		s8 gis4 s8 b4 |
		s8 bis4 s8 cisis 4 |

		% #13-24
		s8 ais4 s8 b!4 |
		s8 cis4 s8 e4 |
		s8 gis,4 s8 ais4 |
		s8 fis4 s8 gis4 |
		s8 cis4 s8 cis4 |
		s8 cis4 s8 fisis,!4 |
		s8 gis4 s8 gis4 |
		s8 gis4 s8 cis4 |
		s8 bis4 s8 dis4 |
		s8 e4 s8 cis4 |
		s8 cis4 s8 cis4 |
		s8 b4 s8 b4 |

		% #25-28
		s8 cis4 s8 cis4 |
		s8 b4 s8 b4 |
		s8 s4 s8 s4 |
		s8 s4 s8 s4 |
		}	
	}
	\\
	\relative {
		\override TupletNumber #'transparent = ##t
		\override TupletBracket #'bracket-visibility = ##f
		\times 2/3 {
		% #1-12
		b,8 dis' fis, dis b' fis |
		e cis' gis cis, e' gis, |
		fis, gis' cis, fis, ais' e |
		b fis' dis gis, gis' dis |
		e cis' gis cis, cis' gis |
		dis cis' fisis, dis,
		fisis' cis |
		gis dis' b gis b' dis, |
		e cis' gis cis, cis' gis |
		fis, gis' cis, fis, ais' e |
		b fis' dis dis b' fis |
		b, gis' dis gis, b' eis, |
		ais, bis' eis, ais, cisis' gis |

		% #13-24
		dis ais' fis dis b' fis |
		e cis' gis cis, e' gis, |
		fis, gis' cis, fis, ais' e |
		b fis' dis gis, gis' dis |
		e cis' gis cis, cis' gis |
		dis cis' fisis, dis, fisis' cis |
		gis gis' dis gis, gis' dis |
		gis, gis' e gis, cis' e, |
		gis, bis' fis gis, dis'' a |
		gis, e'' gis, gis, cis' e, |
		gis, cis' e, gis, cis' fisis, |
		gis, b' dis, gis, b' dis, |

		% #25-28
		gis, cis' e, gis, cis' fisis, |
		gis, b' dis, gis, b' dis, |
		\stemUp dis, gis' b, b, dis' gis, |
		gis, gis'' dis b gis dis |
		}
	}
	>>
	\relative {
		\override TupletNumber #'transparent = ##t
		\override TupletBracket #'bracket-visibility = ##f
		\times 2/3 { 
		gis,,8 r8 r8 r4 r8 
		} |
		\bar "||"
	}

	% part B: Molto agitato

	\key cis \minor

	\relative {
		\set doubleSlurs = ##t
		\times 2/3 {
		% #30-37
		<cis,, cis'>4. <fis fis'> |
		<e e'> <bis bis'> |
		<cis cis'> <b! b'!>4 <cis cis'>8 |
		<dis dis'>4. ( <gis, gis'>4 ) r8 |
		<cis cis'>4. <fis fis'> |
		<e e'> <bis bis'> |
		<cis cis'> <b! b'!>4 <cis cis'>8 |
		<dis dis'>4. <gis, gis'>4 r8 |

		% #38-45
		<e' b' gis'>4-> r8 <a dis b'>4-> r8 |
		<gis e' b'>4-> r8 <dis b' fis'>4-> r8 |
		<e b' gis'>4-> r8 <dis b' fis'>4-> <e e'>8 |
		<fis fis'>4.( \times 2/3 {<b, b'>4.)} 
		  \once \override TextScript #'extra-offset = #'(-1.2 . 3.5)
		  r8_\markup "(   )" |
		<e b' gis'>4 r8 <a dis b'>4 r8 |
		<gis e' b'>4 r8 <dis b' fis'>4 r8 |
		<e b' gis'>4 r8 <dis b' fis'>4 <e e'>8 |
		<fis fis'>4. <b, b'>4 r8 |

		% #46-55, cresc.
		<gis gis'>4. <a a'> |
		<ais ais'> <b b'> |
		<bis bis'> <cis cis'> |
		<dis dis'> <e e'> |
		<bis bis'> <cis cis'> |
		<dis dis'> <e e'> |
		<gis gis'> <a a'> |
		<fisis fisis'> <gis gis'> |
		<gis gis'> <a a'> |
		<fisis fisis'> <gis gis'>4 r8 |

		% #56-65, ff
		<cis, cis'>4. <fis fis'> |
		<e e'> <bis bis'> |
		<cis cis'> <b! b'!>4 <cis cis'>8 |
		<dis dis'>4. ( <gis, gis'>4 ) r8 |
		<cis cis'>4. <fis fis'> |
		<e e'> <b! b'!> |
		<a a'> <e e'>4 <fis fis'>8 |
		<gis gis'>4. ( <cis, cis'>4 ) r8 |
		<cis' cis'>2.->~ |
		<cis cis'>4.~ <cis cis'>8 r8 r8  |
		}
		\bar "||"
	}


	% Part C: Tempo I

	\key b \major
	
	<<
	\relative {
		\override TupletNumber #'transparent = ##t
		\override TupletBracket #'bracket-visibility = ##f
		\times 2/3 {

		% #66-77
		s8 e4 s8 dis4 |
		s8 cis4 s8 e4 |
		s8 gis,4 s8 ais4 |
		s8 fis4 s8 gis4 |
		s8 cis4 s8 cis4 |
		s8 cis4 s8 fisis,!4 |
		s8 dis4 s8 b'4 |
		s8 cis4 s8 cis4 |
		s8 gis4 s8 ais 4 |
		s8 fis4 s8 b4 |
		s8 gis4 s8 b4 |
		s8 bis4 s8 cisis 4 |

		% #78-89
		s8 ais4 s8 b!4 |
		s8 cis4 s8 e4 |
		s8 gis,4 s8 ais4 |
		s8 fis4 s8 gis4 |
		s8 cis4 s8 cis4 |
		s8 cis4 s8 fisis,!4 |
		s8 gis4 s8 gis4 |
		s8 gis4 s8 ais4 |
		s8 b4 s8 b4 |
		s8 gis4 s8 bis4 |
		s8 cis4 s8 e4 |
		s8 dis4 s8 dis4 |

		% #90-93
		s8 e4 s8 e4 |
		s8 dis4 s8 dis4 | 
		fis,,8 b' dis, dis, fis' b, |
		s8 b'4 dis,8 b fis |
		}	
	}
	\\
	\relative {
		\override TupletNumber #'transparent = ##t
		\override TupletBracket #'bracket-visibility = ##f
		\times 2/3 {

		% #66-77
		cis,8 e' ais, dis, dis' b |
		e, cis' gis cis, e' gis, |
		fis, gis' cis, fis, ais' e |
		b fis' dis gis, gis' dis |
		e cis' gis cis, cis' gis |
		dis cis' fisis, dis, fisis' cis |
		gis dis' b gis b' dis, |
		e cis' gis cis, cis' gis |
		fis, gis' cis, fis, ais' e |
		b fis' dis dis b' fis |
		b, gis' dis gis, b' eis, |
		ais, bis' eis,? ais, cisis' gis |

		% #78-89
		dis ais' fis dis b' fis |
		e cis' gis cis, e' gis, |
		fis, gis' cis, fis, ais' e |
		b fis' dis gis, gis' dis |
		e cis' gis cis, cis' gis |
		dis cis' fisis, dis, fisis' cis |
		e, gis' b, eis, gis' cis, |
		fis, gis' e fis, ais' e |
		fis, b' dis, fis, b' dis, |
		fis, gis' dis fis, bis' dis, |
		fis, cis'' e, fis, e'' fis,|
		b, dis' fis, b, dis' fis, |

		% #90-93
		b, e' gis, b, e' ais, |
		b, dis' fis, b, dis' fis, |
		s8 b4 s8 fis4 |
		b,,8 b'' fis s8 b,4 |
		}
	}
	>>
	\relative {
		\override TupletNumber #'transparent = ##t
		\override TupletBracket #'bracket-visibility = ##f
		\times 2/3 { 
		b,,8 r8 r8 r4\fermata r8 
		} |
		\bar "|."
	}


}



dynamics = {

	\time 2/4
	\override DynamicText #'self-alignment-X = #-1
	\override DynamicTextSpanner #'dash-period = #-1

	% Part A: Allegro

	\override TextScript #'extra-offset = #'(0 . 0.2)
	s2\p
	s2*18
	\times 2/3 {s8 s8_\markup{\italic cresc.} s8} s4 |
	s2*3
	s2\f
	s2*5

	% Part B: Molto agitato

	\override TextScript #'extra-offset = #'(0 . -1.0)
	s2\mf
	s2*6
	\override DynamicText #'extra-offset = #'(0 . 1.0)
	\times 2/3 { s4 s8 s8 s16 s16\f s8 } |
	\override DynamicText #'extra-offset = #'(0 . 2.0)
	s2*8
	s2_\markup{\italic cresc.}
	s4 s4_\markup{\italic {poco a poco}}
	s2*8
	s2\ff
	s2*7
	\override Hairpin #'extra-offset = #'(0 . 0.1)
	s2\>
	s4. s32 s16.\! |

	% Part C: Tempo I

	\override TextScript #'extra-offset = #'(0 . 0.5)
	s2\p
	s2*18
	s4 s16 s8._\markup{\italic cresc.} |
	s4 s4_\markup{\italic cresc.} |
	s2 s2
	s2\f
	s2*5

}


%%
%%   PDF, PS
%%

\score {
	\new PianoStaff <<
		\set PianoStaff.instrumentName = \markup{"Piano"\hspace #1 }
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
			\override VerticalAlignment #'forced-distance = #7
			\override SeparationItem #'padding = #1.3
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

