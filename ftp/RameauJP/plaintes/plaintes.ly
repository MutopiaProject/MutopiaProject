\include "paper16.ly"
\include "catalan.ly"

\header {
	title = "Les Tendres Plaintes"
	composer = "Jean-Philippe Rameau"
	subtitle = "Pi\`eces de Clavecin"
	mutopiatitle = "Les Tendres Plaintes"
	mutopiacomposer = "J. P. Rameau (1683-1764)"
	mutopiainstrument = "Harpsichord, Piano"
	date = "1724"
	source = "Durand, 1895"
	style = "Baroque"
	copyright = "Public Domain"
	maintainer = "Ludovic Sardain"
	maintainerEmail = "ludovicsardain@hotmail.com"
	lastupdated = "2004/Fev/25"

	tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
	footer = "Mutopia-2004/02/25-414"
}

droite = \notes \relative do''{
	\time 3/4
	\key re \minor
	fa2 la4 |
	re,2 fa4 |
	mi( re)-\prall dod |
	re2 sol4 |
	fa( mi)-\prall re |
	mi dod re |
	mi fa4. sol8 |
	\grace fa8( mi2.)-\trill |
	fa2 la4 |
	re,2 fa4 |
	mi( re)-\prall dod |
	re2 sol4 |
	fa( mi)-\prall re |
	mi dod re~ |
	re8 mi \grace fa8( mi4.)-\trill re8 |
	<<{re2.} \\ {r8 la~ <fa la>2} >> \bar "||"
% mesure 17
	fa'2 la,4 |
	mi'2 la,4 |
	re( do)-\prall si |
	do2 \grace si8( la4) |
	do( fa) la, |
	sold2-\prall la4 |
	si do4. re8 |
	\grace do8( si2.)-\trill |
	mi4. fa8 re r |
	fa2 mi4 |
	la sold-\prall la |
	<< {\grace {la16[( si do]} si2.)-\trill} \\ {s2 s8. \grace {la16[( si])} s16} >> |
	do8 si la sol fa mi |
	fa4-\trill mi la |
	do,4.-\prall si8 la4 |
	<<{la2.} \\ {r8 mi~ <dod mi>2} >> |
% mesure 33
	fa'2 la4 |
	re,2 fa4 |
	mi( re)-\prall dod |
	re2 sol4 |
	fa( mi)-\prall re |
	mi dod re |
	mi fa4. sol8 |
	\grace fa8( mi2.)-\trill |
	fa2 la4 |
	re,2 fa4 |
	mi( re)-\prall dod |
	re2 sol4 |
	fa( mi)-\prall re |
	mi dod re~ |
	re8 mi \grace fa8( mi4.)-\trill re8 |
	<<{re2.} \\ {r8 la~ <fa la>2} >> \bar "||"
% mesure 49
	la2 sib4 |
	sol2-\prall fa4 |
	do' do do |
	\grace re8( do2)-\trill sib8 la |
	<< {	\stemUp re2 mi8 fa |
		do2 mi8 fa |
		sib,2 do8 sol |
		la4. sib8 do la |
		re4 sol, sol |
		\grace la8( sol2.~)-\trill |
		sol4.-\trill la8 sol la |
		sib la sib re sib fa' |
		sib, do sib mi sib sol' |
		la,4.-\prall sib8 do4 }
	\\ {	\stemDown r8 sib la sol~ sol4~ |
		sol8 la sol fa~ fa4~ |
		fa8 la sol fa mi4 |
		fa2.~ |
		fa4 fa fa |
		fa2. |
		mi |
		fa |
		sol |
		fa } >>
	\stemBoth re'4 \grace la8( sol4.)-\trill fa8 |
	<<{fa2.} \\ {r8 do~ <la do>2} >>
% mesure 65
	fa''2 la4 |
	re,2 fa4 |
	mi( re)-\prall dod |
	re2 sol4 |
	fa( mi)-\prall re |
	mi dod re |
	mi fa4. sol8 |
	\grace fa8( mi2.)-\trill |
	fa2 la4 |
	re,2 fa4 |
	mi( re)-\prall dod |
	re2 sol4 |
	fa( mi)-\prall re |
	mi dod re~ |
	re8 mi \grace fa8( mi4.)-\trill re8 |
	<<{re2.} \\ {r8 la~ <fa la>2} >>
	\bar "|."
}

gauche = \notes \relative do' {
	\clef violin
	\key re \minor
	re8([ la' fa re)] la([ sol')] |
	sib,([ fa' re sib)] fa([ la')] |
	sol,([ sol')] la,([ fa')] la,([ mi')] |
	<re fa>2 sib8([ mi)] |
	la,([ fa')] sol,([ sol')] fa,([ la')] |
	sol,([ sib')] mi,([ sol)] fa([ la)] |
	\clef bass dod,([ mi)] << re2 \\ {r4 re,4} >> |
	la'8 sib la sol fa-\prall mi |
	re8([ la' fa re)] la([ sol')] |
	sib,([ fa' re sib)] fa([ la')] |
	sol,([ sol')] la,([ fa')] la,([ mi')] |
	<re fa>2 sib8([ mi)] |
	la,([ fa')] sol,([ sol')] fa,([ la')] |
	sol,([ sib')] mi,([ sol)] fa([ la)] |
	sol([ sib)] << la2 \\ {r4 la,4} >> |
	<< re2. \\ {r4 mi,8\rest la8~ <re, la'>4} >> |
% mesure 17
	\clef violin re''8([ la' fa re)] fa([ re)] |
	do([ la' mi do)] mi([ do)] |
	si([ la' si, la')] mi([ sold)] |
	\clef bass << la,2. \\ {r4 mi~ <la, mi'>} >> |
	la'8 si do si do la |
	si do re si do la |
	\grace la8( sold4)-\trill << {\grace {fad16[ sold]} la2} \\ {r4 la,} >> |
	mi'4 \clef violin mi' re-\prall |
	<< {	do8 la' sold la si, sold'~ |
		sold4 si4. do8 |
		do mi re do si la |
		sold fad mi re do si }
	\\ {	s2.
		re2 do4 |
		fa8 r8 r4 r4 |
		mi8 r8 s2 } >>
	\clef bass la,8 sol fa mi re do |
	<< {	r8 si'4 do8 fa,4 |
		mi2. }
	\\ {	re4 do fa8 re |
		mi,4\rest mi\rest mi} >>
	la4 la'8 sol fa-\prall mi |
% mesure 33
	re8([ \clef violin la'' fa re)] la([ sol')] |
	sib,([ fa' re sib)] fa([ la')] |
	sol,([ sol')] la,([ fa')] la,([ mi')] |
	<re fa>2 sib8([ mi)] |
	la,([ fa')] sol,([ sol')] fa,([ la')] |
	sol,([ sib')] mi,([ sol)] fa([ la)] |
	\clef bass dod,([ mi)] << re2 \\ {r4 re,4} >> |
	la'8 sib la sol fa-\prall mi |
	re8([ la' fa re)] la([ sol')] |
	sib,([ fa' re sib)] fa([ la')] |
	sol,([ sol')] la,([ fa')] la,([ mi')] |
	<re fa>2 sib8([ mi)] |
	la,([ fa')] sol,([ sol')] fa,([ la')] |
	sol,([ sib')] mi,([ sol)] fa([ la)] |
	sol([ sib)] << la2 \\ {r4 la,4} >> |
	<< re2. \\ {r4 mi,8\rest la8~ <re, la'>4} >> |
% mesure 49
	fa'8([ do' la fa)] sib,([ sol')] |
	do,8([ fa mi do)] re([ fa)] |
	mi([ sol)] re([ fa)] do([ mi)] |
	<< {	fa2. |
		r4 sib2 |
		r4 la2 |
		r4 do,2 }
	\\ { 	fa,4\rest fa\rest fa |
		sib2 sib4 |
		la2 la4 |
		sol r do, } >>
	fa4 fa' la,8 do |
	sib do re mi fa sol |
	si, do si re si sol' |
	do, re do mi do do' |
	<< {	r4 fa,~ <fa re'> |
		r sol~ <sol do~> |
		do do la,8 fa'~ |
		fa fa~ fa4 <mi sib'> }
	\\ {	re2. |
		mi |
		fa2 s4 |
		sib,4 do2 } >>
	<fa, fa'>8 sol' la sol fa-\prall mi |
% mesure 65
	re8([ \clef violin la'' fa re)] la([ sol')] |
	sib,([ fa' re sib)] fa([ la')] |
	sol,([ sol')] la,([ fa')] la,([ mi')] |
	<re fa>2 sib8([ mi)] |
	la,([ fa')] sol,([ sol')] fa,([ la')] |
	sol,([ sib')] mi,([ sol)] fa([ la)] |
	\clef bass dod,([ mi)] << re2 \\ {r4 re,4} >> |
	la'8 sib la sol fa-\prall mi |
	re8([ la' fa re)] la([ sol')] |
	sib,([ fa' re sib)] fa([ la')] |
	sol,([ sol')] la,([ fa')] la,([ mi')] |
	<re fa>2 sib8([ mi)] |
	la,([ fa')] sol,([ sol')] fa,([ la')] |
	sol,([ sib')] mi,([ sol)] fa([ la)] |
	sol([ sib)] << la2 \\ {r4 la,4} >> |
	<< re2. \\ {r4 mi,8\rest la8~ <re, la'>4} >> |
}

\score {
	\context PianoStaff \notes <<
		\context Staff = up <<
			\property Staff.minimumVerticalExtent = #'(-4 . 6)
			\droite
		>>
		\context Staff = down <<
			\property Staff.minimumVerticalExtent = #'(-6 . 4)
			\gauche
		>>
	>>

\paper {
	linewidth = 17.0 \cm
	textheight = 24.0 \cm
	\translator {
		\PianoStaffContext
		VerticalAlignment \override #'forced-distance = #10
	}
}


\midi { \tempo 4 = 80 }

}
