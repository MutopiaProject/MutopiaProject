\version "2.10.0"
\include "catalan.ly" 
#(set-global-staff-size 16)

\header {
	mutopiatitle = "La Bayadère - Acte II"
 	mutopiacomposer = "MinkusLA"
 	mutopiainstrument = "Piano"
 	source = "New arrangement"
 	style = "Classical"
 	copyright = "Public Domain"
 	maintainer = "Laurence Sardain"
 	lastupdated = "2006/Dec/21"
	title = "La Bayadère"
	subtitle = "Acte II"
	composer = "Ludwig MINKUS"
	arranger = "arr. Laurence Sardain"
 footer = "Mutopia-2006/12/22-892"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


	


upper = \relative do' {
	\clef treble
	\key re \major
	\time 6/8
        \acciaccatura { re'16\p [fad] } \once \override TextScript #'padding =#2.0 si4.(^\markup {\italic Andante } la)  |
	\acciaccatura { la,16 [re] } sol4.( fad) |
	\acciaccatura {fad,16 [la] } mi'4.( re4~re32 dod re mi |
	re4.~re) |
	\acciaccatura { si16 [re ] }sol4.( fad) |
	\acciaccatura {fad,16 [si] } mi4.( re) |
	\acciaccatura {re,16 [sol] } dod4.( si4~si32 lad si dod |
	si4.~si) |
	\acciaccatura {la16\mp [dod] } fad4.( mi4~mi32 red mi fad |
	mi2.) |
	\acciaccatura {re16\mf [fad] } si4.( la4~la32 sold la si |
	la2.) |
	\acciaccatura {mi16\f [la] } re4.( dod) |
	\acciaccatura {re,16 [mi] } dod'4.( si) |
	\acciaccatura {dod,16 [mi] } 
	<< {la2.(\> \startTrillSpan } 
	{s2 s8. \grace {sold16[\stopTrillSpan la]}} >>
	la'2.)\! |
	\acciaccatura { re,,16\p [fad] } si4.( la)  |
	\acciaccatura { la,16 [re] } sol4.( fad) |
	\acciaccatura {fad,16 [la] } mi'4.( re4~re32 dod re mi |
	re4.~re) |
	\acciaccatura { si16 [re ] }sol4.( fad) |
	\acciaccatura {fad,16 [si] } mi4.( re) |
	\acciaccatura {re,16 [sol] } dod4.( si4~si32 lad si dod |
	si4.~si) |
	\acciaccatura {si16\mp [re] }fad4.( mi4~mi32 red mi fad |
	mi2.) |
	\acciaccatura {re16\mf [fad] } si4.( la4~la32 sold la si |
	la2.) |
	\acciaccatura {re,16[fad] } sib4.( la) |
	\acciaccatura {dod,16[mi]} si'4.( la) |
	<< {re,2.( \startTrillSpan } 
	{s2 s8.\grace {dod16[\stopTrillSpan re]}} >> |
	re'2.) |
	%2ème partie
	re,4.(\mp fad,4~fad16 re'16 |
	dod4. si |
	si4. lad4~lad16 si16 |
	dod2.) |
	re4.( fad,4~fad16 re'16 |
	dod4. si |
	si4. lad4~lad16 sold16 |
	la2.) |
	fad'4.(\mf la,4~la16 fad'16 |
	mi4. re) |
	re4.( dod4~dod16 re16 |
	mi2.) |
	fad4.(\< mi4 fad8 |
	la4.~la8 sol re\! |
	fad4. fad4\>~fad16 mi16\! |
	re2.) |
	<< { \oneVoice re4.(\mf fad,4~fad16 re'16 |
	dod4. si |
	si4. lad4~lad16 si16 |
	\voiceOne dod2.)}\\{s2.*3 | r8 mid, fad sol mid fad}>> |
	<< { \oneVoice re'4.( fad,4~fad16 re'16 |
	dod4. si |
	si4. lad4~lad16 sold16 |
	\voiceOne la2.)}\\{s2.*3 | r8 red, mi fad red mi}>> |
	fad'4.(\f la,4~la16 fad'16 |
	mi4. re |
	re4. dod4~dod16 re16 |
	mi4.\<~mi8 dod la  |
	fad'4. mi4 fad8 |
	la4.\!~la8 sol re |
	fad4. fad4\>~fad16 mi16\! |
	re2.) |
	\acciaccatura { re16\mf [fad] } si4.( la) |
	\acciaccatura { la,16 [do] } sol'4.( fad) |
	\acciaccatura { sol,16 [si] } mi4.( re4~re32 dod re mi |
	re2.) |
	\acciaccatura { la16 [si] } sol'4.( fad) |
	\acciaccatura {fad,16 [la] } mi'4.( red) |
	\acciaccatura {mi,16 [sol] } do4. si4~si32 lad si do |
	si2. |
	\acciaccatura {do16 [mi] } si'4.( la4~la32 sold la si |
	la2.) |
	mi4.(\mp re4~re32 dod re mi |
	re2.) |
	mib4.(\< re) |
	\acciaccatura {fad,16 [la] } mi'4.( re)\! |
	<< { sol,2.\p \startTrillSpan }
	{s2 s8. \grace {fad16 [\stopTrillSpan sol]}} >> |
	<< { si2. \startTrillSpan }
	{s2 s8. \grace {lad16 [\stopTrillSpan si]}} >> |
	<< { re2. \startTrillSpan }
	{s2 s8. \grace {dod16 [\stopTrillSpan re]}} >> |
	<< {sol2.~ <si, sol'>2. \fermata \bar"|."}\\{r4. si,8 re sol }>> |
	
}

lower = \relative do {
	\clef bass
	\key re \major
	\time 6/8
	\dynamicUp
	\grace s8
	<< {r8 la' re fad re la } \\ {re,2.} >> |
	<< {r8 la' re fad re la } \\ {re,2.} >> |
	<< {r8 la' re fad re la } \\ {re,2.} >> |
	<< {r8 la' re fad re la } \\ {re,2.} >> |
	<< {r8 si' re fad re si } \\ {si,2.} >> |
	<< {r8 si' re fad re si } \\ {si,2.} >> |
	<< {r8 si' re mi re si } \\ {sol,2.} >> |
	<< {r8 si' re mi re si } \\ {sol,2.} >> |
	<< {r8 la' dod mi dod la } \\ {la,2.} >> |
	<< {r8 la' dod mi dod la } \\ {sol,2.} >> |
	<< {r8 la' re fad re la } \\ {fad,2.} >> |
	<< {r8 la' re fa re la } \\ {fa,2.} >> |
	<< {r8 mi' la dod la mi } \\ {mi,2.} >> |
	<< {r8 si'' re mi re si } \\ {mi,,2.} >> |
	<< {r8 mi' la dod la mi } \\ {la,2.} >> |
	<< {r8 la' dod mi dod la } \\ {la,2.} >> |
	<< {r8 la' re fad re la } \\ {re,2.} >> |
	<< {r8 la' re fad re la } \\ {re,2.} >> |
	<< {r8 la' re fad re la } \\ {re,2.} >> |
	<< {r8 la' re fad re la } \\ {re,2.} >> |
	<< {r8 si' re fad re si } \\ {si,2.} >> |
	<< {r8 si' re fad re si } \\ {si,2.} >> |
	<< {r8 si' re mi re si } \\ {sol,2.} >> |
	<< {r8 si' re mi re si } \\ {sol,2.} >> |
	<< {r8 si' re mi re si } \\ {mi,,2.} >> |
	<< {r8 si'' re mi re si } \\ {mi,,2.} >> |
	<< {r8 la' re fad re la } \\ {la,2.} >> |
	<< {r8 la' re fad re la } \\ {la,2.} >> |
	<< {r8 re' mi sol mi re} \\ {la,2.} >> |
	<< {r8 dod' mi sol mi dod } \\ {la,2.} >> |
	<< {r8 la' re fad re la } \\ {re,2.} >> |
	<< {r8 la' re fad re la } \\ {re,2.} >> \bar"||"
	%2ème partie
	<< {r8 <fad si re> <fad si re> <fad si re>4. } \\ {si,2. } >> |
	<< {r8 <fad' si fad'> <fad si fad'> <fad si fad'>4.} \\ {re2.}>> |
	<< { r8 <mi fad lad dod> <mi fad lad dod> <mi fad lad dod>4.} \\ {dod2.}>> |
	<<{ r8 <mi fad dod'> <mi fad dod'> <mi fad dod'>4.} \\ {lad,2.}>>|
	<< {r8 <fad' si re> <fad si re> <fad si re>4. } \\ {si,2. } >> |
	<< {r8 <fad' si fad'> <fad si fad'> <fad si fad'>4.} \\ {re2.}>> |
	<< { r8 <mi la> <mi la> <mi la>4.} \\ {dod2.}>> |
	<< {r8 <dod mi la> <dod mi la> <dod mi la>4. } \\ {la2. }>> |
	<< {r8 <la' re fad> <la re fad> <la re fad>4. } \\ {re,2.}>> |
	<< {r8 <la' re la'> <la re la'> <la re la'>4. } \\ {fad2.}>> |	
	<< {r8 <sol la mi'> <sol la mi'> <sol la mi'>4. }\\{mi2.}>> |
	<< {r8 <sol la dod> <sol la dod> <sol la dod>4.}\\{dod,2.}>> |
	<< {r8 <la' do fad> <la do fad> <la do fad>4. }\\{re,2.}>> |
	<< { 
	r8 <si' re sol> <si re sol> <si re sol>4. |
	r8 <la re fad> <la re fad> r8 <la dod mi> <la dod mi> |
	r8 <fad la re> <fad la re> <fad la re>4. | 
	%reprise
	r8 <fad si re> <fad si re> <fad si re>4.
	r8 <fad si fad'> <fad si fad'> <fad si fad'>4.
	r8 <mi fad lad dod> <mi fad lad dod> <mi fad lad dod>4.
	r8 <mi fad dod'> <mi fad dod'> <mi fad dod'>4.
	r8 <fad si re> <fad si re> <fad si re>4.
	r8 <fad si fad'> <fad si fad'> <fad si fad'>4.
	r8 <mi la> <mi la> <mi la>4.
	r8 <dod mi la> <dod mi la> <dod mi la>4.
	r8 <la' re fad> <la re fad> <la re fad>4.
	r8 <la re la'> <la re la'> <la re la'>4. 
	r8 <sol la mi'> <sol la mi'> <sol la mi'>4.
	r8 <sol la dod> <sol la dod> <sol la dod>4.
	r8 <la do fad> <la do fad> <la do fad>4.
	r8 <si re sol> <si re sol> <si re sol>4. 
	r8 <la re fad> <la re fad> r8 <la dod mi> <la dod mi>
	r8 <fad la re> <fad la re> <fad la re>4. |
	\grace s8
	r8 <la do fad> <la do fad> <la do fad>4. |
	r8 <la do fad> <la do fad> <la do fad>4. |
	r8 <sol si re> <sol si re> <sol si re>4. |
	r8 <si re sol> <si re sol> <si re sol>4. |
	r8 <la si red> <la si red> <la si red>4. |
	r8 <la si fad'> <la si fad'> <la si fad'>4. |
	r8 <sol si mi> <sol si mi> <sol si mi>4. |
	r8 <sol si mi> <sol si mi> <sol si mi>4. |
	r8 <la dod mi> <la dod mi> <la dod mi>4. |
	r8 <la dod mi> <la dod mi> <la dod mi>4. |
	r8 <si re sol> <si re sol> <si re sol>4. |
	r8 <si re sol> <si re sol> <si re sol>4. |
	r8 <fad la do> <fad la do> <fad la do>4. |
	r8 <la do fad> <la do fad> <la do fad>4. |
	r8 <si re> <si re> <si re> <si re> <si re> |
	r8 <si re sol> <si re sol> <si re sol>  <si re sol> <si re sol>|
	r8 <si re sol> <si re sol> <si re sol> <si re sol> <si re sol> |
	r8 re, sol r4. |
	} \\ {
	sol,2. |
	la4. la |
	re2. 
	%reprise
	si |
	re |
	dod |
	lad |
	si |
	re |
	dod |
	la |
	re |
	fad |
	mi |
	dod |
	re |
	sol, |
	la4. la |
	re2. |
	re |
	re |
	sol, |
	sol |
	si |
	si |
	mi, |
	mi |
	do' |
	do |
	re |
	re |
	do |
	la |
	sol |
	sol |
	sol |
	sol\>~ |
	sol\! |
	}>>
	
}      


     
\score {<<
	
	\context PianoStaff = prima <<
		\set PianoStaff.instrumentName = "Piano  "
		\context Staff = uppera \upper
		\context Staff = lowera \lower
	>>
	>>
	\layout { }
	\midi { 
		\context {
      			\Score
      			tempoWholesPerMinute = #(ly:make-moment 130 8)
      		}
      	}
}

\paper {
	top-margin = 1.5\cm
	bottom-margin = 1.5\cm
	left-margin = 2.5\cm
	line-width = 16.0\cm
} 
