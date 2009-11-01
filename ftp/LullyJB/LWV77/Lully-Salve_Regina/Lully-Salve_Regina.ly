% Created on Fri Oct 30 18:05:43 CET 2009
\version "2.12.0"

\header {
	title = "Salve Regina" 
	subtitle = "Petit motet" 
 	composer = "J.-B. Lully" 
 	mutopiatitle = "Salve Regina"
 	mutopiacomposer = "LullyJB"
 	source = "Philidor, 1703-1706"
 	style = "Baroque"
 	copyright = "Creative Commons Attribution 3.0"
 	maintainer = "A. Roche"

 mutopiaopus = "LWV 77"
 mutopiainstrument = "Voice and Bass"
 footer = "Mutopia-2009/11/01-1720"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

\include "italiano.ly"

verseS= \lyricmode {
	Sal -- ve, Sal -- ve Re -- gi -- na,
	Ma -- ter mi -- se -- ri -- cor -- di -- æ,
	ma -- ter mi -- se -- ri -- cor -- di -- æ,
	Et spes nos -- tra, nos -- tra sal -- ve
	Et spes nos -- tra et spes nos -- tra sal -- ve
	et spes nos -- tra sal -- ve et spes nos -- tra sal -- ve
	E -- ia er -- go, ad -- vo -- ca -- ta nos -- tra,
	ad -- vo -- ca -- ta nos -- tra
	E -- ia er -- go, ad -- vo -- ca -- ta ad -- vo -- ca -- ta nos -- tra.
	Il -- los tu -- os mi -- se -- ri -- cor -- des o -- cu -- los
	ad nos con -- ver -- te, ad nos con -- ver -- te, ad nos con -- ver -- te.
	Et Je -- sum et Je -- sum be -- ne -- dic -- tum fruc -- tum
	ven -- tris tu -- i,
	no -- bis post hoc e -- xi -- li -- um
	os -- ten -- de, os -- ten -- de
	Et Je -- sum be -- ne -- dic -- tum fruc -- tum
	ven -- tris tu -- i,
	no -- bis post hoc e -- xi -- li -- um os -- ten -- de
	no -- bis post hoc e -- xi -- li -- um os -- ten -- de
	no -- bis post hoc e -- xi -- li -- um os -- ten -- de
	O o pi -- a, o dul -- cis o dul -- cis vir -- go Ma -- ri -- a.
	O pi -- a, o dul -- cis vir -- go Ma -- ri -- a.
	O o o dul -- cis vir -- go, vir -- go Ma -- ri -- a.
	O dul -- cis vir -- go Ma -- ri -- a.
	O o o dul -- cis vir -- go, vir -- go Ma -- ri -- a.
	O dul -- cis vir -- go Ma -- ri -- a.
}

verseM= \lyricmode {
	Sal -- ve Re -- gi -- na,
	ma -- ter ma -- ter mi -- se -- ri -- cor -- di -- ae,
	ma -- ter mi -- se -- ri -- cor -- di -- ae,
	Et spes nos -- tra, nos -- tra sal -- ve
	Et spes nos -- tra et spes nos -- tra sal -- ve et spes nos -- tra sal -- ve
	et spes nos -- tra sal -- ve
	E -- ia er -- go, ad -- vo -- ca -- ta nos -- tra,
	ad -- vo -- ca -- ta nos -- tra
	E -- ia er -- go, ad -- vo -- ca -- ta ad -- vo -- ca -- ta nos -- tra.
	Il -- los tu -- os mi -- se -- ri -- cor -- des o -- cu -- los
	ad nos ad nos con -- ver -- te, ad nos con -- ver -- te,
	Il -- los tu -- os mi -- se -- ri -- cor -- des o -- cu -- los
	ad nos ad nos con -- ver -- te.
	O o pi -- a,
	O o cle -- mens
	o pi -- a, O o pi -- a,
	O o dul -- cis vir -- go Ma -- ri -- a.
	O dul -- cis vir -- go Ma -- ri -- a.
	O o dul -- cis vir -- go vir -- go Ma -- ri -- a.
	O dul -- cis vir -- go Ma -- ri -- a.
}

verseA= \lyricmode {
	Sal -- ve Re -- gi -- na,
	ma -- ter ma -- ter mi -- se -- ri -- cor -- di -- ae,
	ma -- ter mi -- se -- ri -- cor -- di -- ae,
	vi -- ta dul -- ce -- do, vi -- ta dul -- ce -- do,
	vi -- ta dul -- ce -- do,
	et spes nos -- tra sal -- ve
	Ad te ad te cla -- ma -- mus
	E -- xu -- les fi -- li -- i E -- vae,
	Ad te sus -- pi -- ra -- mus,
	ge -- men -- tes et flen -- tes
	in hac la -- cri -- ma -- rum val -- le
	Ad te sus -- pi -- ra -- mus,
	ge -- men -- tes et flen -- tes
	in hac la -- cri -- ma -- rum la -- cri -- ma -- rum val -- le
	in hac la -- cri -- ma -- rum val -- le
	E -- ia er -- go, ad -- vo -- ca -- ta nos -- tra,
	ad -- vo -- ca -- ta nos -- tra
	E -- ia er -- go, ad -- vo -- ca -- ta nos -- tra,
	E -- ia er -- go, ad -- vo -- ca -- ta nos -- tra,
	O cle -- mens,
	O o dul -- cis vir -- go Ma -- ri -- a
	dul -- cis vir -- go Ma -- ri -- a.
	O pi -- a, O o cle -- mens
	O pi -- a o dul -- cis vir -- go Ma -- ri -- a.
	O o dul -- cis vir -- go vir -- go Ma -- ri -- a.
	O dul -- cis vir -- go Ma -- ri -- a 
	O dul -- cis vir -- go Ma -- ri -- a
	O dul -- cis vir -- go Ma -- ri -- a.
}
 

staffSoprano = \new Staff {
	\time 2/2
	%\set Staff.instrumentName = "Soprano"
	\set Staff.midiInstrument = "flute"
	\key do \major
	\clef treble
	\relative do' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			R1
			R1
			r2 re'~(
			re dod
			re) la
			r fa'~
			fa mi4 fa
			re( mi8 fa mi4. re8)
			dod2 r
			R1*3
			r2 re~
			re do~
			do4. si8 si2~
			si do
			do( si4.) la8
			la1
			r2 fa'~
			fa mi4. sol8
			dod,2 re
			re( dod4.) re8
			\time 3/2 re1. |
			R1.
			r1 sol4. re8
			mi2 mi r
			r1 fa2
			mi mi( re)
			do1 do4. si8
			la2 la r
			r fa'4 re si2
			do do( si)
			la1 fa'4. mi8
			do2 do mi | 	%doute 2e do
			\time 2/2 dod mi4. mi8 |
			mi2 fa
			fa( mi)
			re1
			R1*39
			r2 fa4. mi8
			re4. re8 mi4. re8
			dod4 la re2
			si mi4. mi8
			re4 do do( si)
			la2 r
			R1
			r2 la4. sol8
			fa4. re8 re'4. la8
			si4 si sol'4. si,8
			dod4 re re( dod)
			re2 r
			R1*3
			r2 si4 si
			dod2 dod4 dod
			re re re4. re8
			mi4. mi8 mi4. mi8
			fa4 fa fa( mi)
			fa2 r4 fa
			re2 r4 sol
			mi2 mi
			r2 r4 fa
			dod2 re
			re( dod)
			re1
			R1
			r2 fa2~
			fa mi4.( re8)
			dod1
			r2 re~
			re dod
			re la4. si8
			do4 do do sib8( la)
			sib2 la
			la( sol)
			la1
			fa'2 fa4 mi
			re4. do8 si4. si8
			si2 r4 sol'
			mi2( re)
			do2 r4 fa
			fa2( mi)
			fa2 r |
			r do
			sib1
			la2 r4 mi'8 mi
			fa4. mi8 re4. do8
			si4 do8( sold) la4.( si8)
			\time 3/2 sold1.
			si2 si si
			do1 re2
			mi2. mi4 mi2
			r4 do do2( si) 
			la1.
			fa2 fa sol
			la1 si2
			dod2. dod4 dod2
			r4 re re2( dod)
			re1.
			la2 la si
			dod1 re2
			mi2. mi4 mi2
			r4 fa4 fa2( mi)
			re1 r2
			R1.*3
			r1 re2~
			re fa1~
			fa2 mi2.( re4)
			dod2 re1
			si2 do do~
			do sib2. sib4
			sib2 la2. sib4
			la2( sol1)
			fa1.
			R1.*2
			r1 re'2~
			re do1
			si1.
			R1.*2
			r2 mi1~
			mi2 re re
			re1 do8( si) do4
			do2( si1)
			la1.
			R1.*2
			r2 mi'1
			r2 fa1
			mi2 mi fa
			re1 re2
			do1 sib4 la
			sib1.
			la1 fa'2~
			fa mi mi
			mi mi fa
			fa( mi1)
			re1.
			R1.*2
			r2 mi1
			r2 fa1
			mi2 mi fa
			re1 re2
			do1 sib4 la
			sib1.
			la1 fa'2~
			fa mi mi
			mi mi fa
			fa( mi1)
			re1. \fermata
		}

	\bar "|."
	}

}
staffMezzosoprano = \new Staff {
	%\set Staff.instrumentName = "Mezzo-soprano"
	\set Staff.midiInstrument = "flute"
	\key do \major
	\clef treble
	\relative do' { 	
		\context Voice = "melodyMez" {
			\dynamicUp	
			R1*8
			r2 re'~(
			re dod
			re) la4. la8
			sib1
			la2. si4
			sold2 la4.( sol8) % doute sur le bécarre
			fa2 r4 fa'
			mi2. mi4
			mi2. re4
			dod1
			r2 la~
			la sol4. sol8
			sol2 fa
			fa( mi4.) re8
			re1.
			R1.*2
			r1 do'4. sol8
			sol2 la si
			do do( si)
			do1 mi4. re8
			do2 do r
			r re4 si sold2
			la la( sold)
			la1 la4. sol8
			fa2 fa sol |
			mi dod'4. dod8
			dod2 re
			re( dod)
			re1
			R1*35
			la4. sol8 fa4 re
			re' do do4. si8
			do4 do sib4. sib8
			sib4 la la( sol)
			la2 r
			R1*3
			r2 mi'4. re8
			dod4 la re4. la8
			sib4 la sol4. fa8
			mi4 fa fa( mi)
			re2 r
			R1
			r2 mi4 mi
			fad2 fad4 fad
			sol4 sol sold4. sold8
			la4. la8 la2
			r4 la si4. do8
			sold2 sold4. sold8
			la2 r
			r4 la si4. si8
			do2 do
			r 	sol4 sol
			la2 la4 la
			si si si4.si8
			dod4. dod8 dod4. mi,8
			la2 r4 la
			sol2 fa
			fa( mi)
			re1
			R1*23
			R1.*17
			r1 re'2~
			re do1~
			do2 sib1
			la1 r2
			R1.*5
			r2 do1
			r2 la2.( sib4)
			sol1( sol4 la)
			fad1 la2~
			la sold1
			la1.
			r1 mi'2~
			mi re1~
			re2 do1
			si1  r2
			R1.*2
			r2 mi1
			dod1.
			r2 re2. la4
			si2 dod re
			re( dod1)
			re1.
			R1.*4
			r1 r4 la
			si1 si2
			dod dod re
			re( dod1)
			re1.
			R1.*2
			r1 la2~
			la r sib~
			sib la la
			la sol1
			sol2 fa2. fa4
			fa2( mi1)
			fa r4 la
			si1 si2
			dod dod re
			re( dod1)
			re1. \fermata
		}

	\bar "|."
	}

}
staffAlto = \new Staff {
	%\set Staff.instrumentName = "Alto"
	\set Staff.midiInstrument = "flute"
	\key do \major
	\clef treble
	\relative do' { 	
		\context Voice = "melodyAlt" {
			\dynamicUp	
			R1*6
			r2 la'~( 
			la sold
			la) re,4 si'
			sol2.( la4)
			fad1
			r2 sol2~(
			sol4 fa8 mi fa2)
			mi mi'~
			mi re4 re
			sold,2 la
			la2( sold4.) la8
			la1
			r2 do
			sib2. sib4
			la2. la4
			la2. sol4
			fad1.
			re'2 re r4 do4
			si2 si r
			R1.*2
			sol2 sol r4 fa
			mi2 re r
			R1.*2
			mi'2 mi r4 re
			dod2 dod r
			R1.
			r2 la4. la8
			sol2 fa4.( sol8)
			la1
			fad
			r2 r4 re
			la'4. la8 re4. mi8
			fa2 re
			r2 do4 sib8( la)
			sib2 sol~
			sol4. fa16 mi fa2
			mi1
			r4 mi'4 mi2~
			mi la,8( sold) la4
			sold2 sold
			r4 do4 do2~
			do sib4. la8
			sib2 la
			r2 r4 do
			re2 re4. re8
			mi2 fa
			la,( sol)
			fa1
			r4 fa do'2~
			do fa,8( mi) fa4
			mi2 mi
			r4 sol sol2~
			sol fad4. sol8
			sol2 sol4. si8
			do2 dod4. re8
			mi2( re8 do si do16 la
			sold4) mi si' si
			si2 do
			do( si)
			la r4 la
			re2 mi4( fa8) mi16( re)
			dod4.( si8 la2~
			la8. si16 sol8 fa16 mi) fa2
			fa( mi)
			re1
			R1*5
			sib'4. la8 sol4 sol
			la4. sol8 fad4 fad
			sol4 mi do4. do8
			re4 re mi2
			la4 la8 sol fad4 fad
			sol4 fa mi4.( re8
			dod4) re la'2
			re,4 la'8 sol fad4 re
			sol2 mi
			la4 re la2
			re, r
			R1*38
			R1.*16
			r1 la'2~
			la fa1
			mi r2
			R1.
			r1 la2~
			la sol1~
			sol2 fa fa
			fa mi2. mi4
			fad2 sol sol4. re8
			mi2 fa2. sol4
			fa2( mi1)
			fa re'2~
			re dod1
			re1.
			R1.
			mi1 la,2~
			la sol1
			fad2 si2.( la4
			sold2) la1
			sold1 r4 mi
			fad1 fad2
			sold sold la
			la( sold1)
			la1.
			R1.*2
			r1 la2~
			la r sib~
			sib la la
			la sol1
			sol2 fa2. mi4
			fa2( mi1)
			fa la2~
			la sol sol
			sol1 fa4 sol
			la1.
			fad1 sib2~
			sib la la
			si dod re
			re( dod1)
			re1.
			R1.*4
			r2 la1~
			la2 sol sol
			sol1 fa4 sol
			la1( sol2)
			fad1. \fermata
		}

	\bar "|."
	}

}
staffVioloncelle = \new Staff {
	% \set Staff.instrumentName = "Violoncelle"
	\set Staff.midiInstrument = "clarinet"
	\key do \major
	\clef bass
	\relative do' { 	
		re,4. mi8 fa4 re
		la'4. si8 dod4 la
		re2 re,
		la'2. sol4
		fa2. mi8 re
		dod2 re8 mi fa4
		do2. re4
		sib1
		la4. sol8 fad4 sol
		mi1
		re2. re'4
		sol2 sol,
		re'1
		mi2 la,4 la'
		re,1
		re2 do4 la
		mi'2 mi,
		la la'4 sol
		fa1
		sol
		la2 re,
		la1
		re,2 re'2. mi4
		fad1.
		sol2. la4 si2
		do do,4 re mi2
		fa2. mi4 re2
		do sol' sol,
		do2. re4 mi do
		fa2. sol4 fa mi
		re1 mi2
		la, mi1
		la2 la' fa
		sib4 do sib4. la8 sol2 |
		la2. sol8 fa
		mi2 re
		la1
		re2 re'4. do8
		si4. la8 sib2
		la4. sol8 fa4. mi8
		re2 sib'4 la8 sol
		fad1
		sol2~ sol8 fa mi re
		dod2 re4 re,
		la' la' sold2
		la sol
		fa1
		mi2. re4
		do4. si8 la4. sol8
		fad2 sol4. fad8
		mi2 fa~
		fa4 sol la2
		sib sib'
		si la4. sib8
		do2 do,4. sib8
		la2. sib4
		fa4. fa'8 mi2
		re1
		do
		do2 sib
		la1
		sol2. fa4
		mi2 la4. si8
		dod2 re
		mi1
		re2 do4. re8
		mi2 mi,
		la4. sol8 fad2
		sol sold
		la r4 si
		dod2 re4. sol,8
		la1
		re2 re'
		dod re
		re,4 mi8 fa sol4 sol,
		do2 re
		mi4 fa sib2
		la8 sol fa mi re2
		sib'4. la8 sol2
		la4. sol8 fad2
		sol8 fa mi re do2
		re mi4 mi,
		la la'8 sol fad2
		sol4( fa) mi( re)
		dod si la2
		re4. mi8 fad2
		sol4 sol8 fa mi2
		la4 re, la2
		re do
		si mi
		fa2. mi4
		re1
		mi
		la,2 la'4. sol8
		fad2 sol4. fad8
		mi re do2 sib4
		la sib do2
		fa,4 fa'8 mi re2
		sol4. fa8 mi2
		la2 sol8 fa mi re
		dod2 re
		mi fa4. sol8
		la2 la,
		re, re'~
		re dod
		re re,
		sol1
		la2 la'4 sol
		fa1
		mi
		re4. mi8 fa4. re8
		la'4. sol8 fad2
		sol la 
		sib1
		la4 si do4. la8
		re2 re,4 mi
		fad2 sol
		sol4 fa mi4. fa8
		sol2 sol,
		do4 sib la sib
		do2 do'4. sib8
		la4. sib8 la4 sol
		fa1~
		fa2 mi
		fa dod
		re1
		mi2 fa
		mi mi, fad
		sold1.
		la2 la si
		do do' sold
		la mi mi,
		la2. si4 dod la
		re1 mi2
		fa fa sol
		la1 sol2
		fa4 re la1
		re,2 re' mi
		fa1 sol2
		la1 si2
		dod2. si4 dod la
		re2 la la,
		re1 re'2
		re dod1
		re re,2
		la'1 la4 sol
		fad2 sol1
		re1 re4 do
		sib2. la4 sol2
		la re, re'
		sol,2 do2. sib4
		la2 sol1
		do1.
		do,1.
		fa2 fa'1
		mi1.
		re1 do2
		si1.
		la2 la'1
		mi1.
		si'2 si,1
		mi2 la la,
		mi'2. re4 dod2
		re2. do4 si2
		mi1 la,2
		mi1.
		la2 la' sol
		fad1.
		sol2 la sib
		la la,1
		re1.
		do
		sib
		la
		sol
		fa
		sol
		la~
		la
		re,2 re'1
		mi2 fa fad
		sol la sib
		la la,1
		re1.
		do
		sib
		la
		sol
		fa
		sol
		la~
		la
		re \fermata
	\bar "|."
	}

}


\score { \new ChoirStaff
	<<
		\staffSoprano
		\context Lyrics = "lmelodySop" \lyricmode { \lyricsto "melodySop" \verseS }
		
		\staffMezzosoprano
		\context Lyrics = "lmelodyMez" \lyricmode { \lyricsto "melodyMez" \verseM }
		
		\staffAlto
		\context Lyrics = "lmelodyAlt" \lyricmode { \lyricsto "melodyAlt" \verseA }
		
		\staffVioloncelle
	>>
	
	\midi {
		\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 60 2)
	    }

	}

  \layout {
  }
}

