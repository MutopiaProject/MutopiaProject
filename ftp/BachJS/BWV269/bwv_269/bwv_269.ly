\version "2.0.1"

blanknotes = {
\property Voice.NoteHead \override
	#'transparent = ##t
\property Voice.Stem \override
	#'transparent = ##t 
 }
unblanknotes = {\property Voice.NoteHead \revert #'transparent
\property Voice.Stem \revert #'transparent 
}
\header{
%indication d'entête et bas de page
	title = "Aus meines Herzens Grunde"
	subtitle = "BWV 269"
	composer = "Johann Sebastian Bach"
	poet = "Vierstimmige Choräle"

	maintainer = "Laurent Ducos"
	tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
	footer = "Mutopia-2003/12/31-378"
 	}

	% information exigées par mutopia
 mutopiatitle = "Aus meines Herzens Grunde BWV 269"
 mutopiacomposer = "Johannn Sebastian Bach 1685 1750"
 mutopiainstrument = "Piano"
 date = "1784-1787"
 source = "Editions de J.P Kimberger-C.P.E Bach"
 style = "Classique"
 copyright = "Public Domain"
 maintainer = "Laurent Ducos"
 maintainerEmail = "laurentdany@free.fr"
 lastupdated = "31 decembre 2003"


\include "italiano.ly" % Permet d'entrer les notes en francais
\include "paper20.ly"
Soprane = \notes \context Voice = $Soprane {
%voix principale de la portée en clef de sol
	\property Staff.midiInstrument = "acoustic grand"
	\time 3/4
	\key sol \major
	\clef treble
	\stemUp
	\repeat volta 2
	{\partial 4
	sol'
	sol'2 re''4
	si'4. la'8 sol'4
	sol'4. la'8 si'4
	la'2-\fermata si'4
	re''2 do''4
	si' la'2
	\partial 2 sol'2-\fermata}
% partie b	
	\partial 4 si'4
	si'4 do'' re''
	re''4. do''8 si'4
	la'2-\fermata sol'4
	si'2 do''4
	re''2 do''4
	si'2.
	sol'2-\fermata  si'4
	re''2 do''4
	si'2 la'4
	sol'4. la'8 si'4
	la'2-\fermata si'4
	re''2 do''4
	si' la'2
	sol'2-\fermata
	
	 \bar "|."
}
Alto = \notes \context Voice = $Alto {
%voix secondaire de la portée en clef de sol
	\property Staff.midiInstrument = "acoustic grand"
	\time 3/4
	\key sol\major
	\clef treble
	\stemDown
	\tieDown
	\repeat volta 2
	{\partial 4
	re'4
	re' mi' re'
	re'2 si4
	mi'8 re' mi' fad' sol'4
	fad'2 sol'4
	re' mi' fad'
	sol'2 fad'4
	\partial 2 re'2}
% partie b	
	\partial 4 sol'4~
	sol'8 fad' mi' fad' sol'4~
	sol'8 la' sol' fad' sol'4
	fad'2 mi'4
	mi'4 fad'8 sol' la'4
	la' sol'4. fad'8
	sol'2 fa'4
	mi'2 sol'4
	la'4. sol'8 fad'4
	sol'2 fad'4~
	fad'8 mi' mi' fad' sol'4
	fad'2 sol'4
	la'2 sol'8 fad'
	sol'2 fad'4
	re'2
	 \bar "|."
}
Tenor = \notes \context Voice = $Tenor {
%voix principale de la portée en clef de fa
	\property Staff.midiInstrument = "acoustic grand"
	\time 3/4
	\key sol \major
	\clef bass
	\stemUp
	\repeat volta 2
	{\partial 4
	si4
	si do'8 si la4
	sol fad sol
	do'8 si do'4 re'
	re'2 re'4
	la si do'
	re' mi' [re'8 do']  % [] Work around for bug in Lilypond 2.0.1
	\partial 2 si2}
% partie b	
	\partial 4 re'4
	re'4 do' si8 la
	si do' re'4 re'
	re'2 si4
	sol la mi'
	re'2 re'4
	re'2.
	do'2 re'4
	re'8 do' si4 do'
	re'2 re'8 do'
	si4 do' re'
	re'2 re'4
	re'2 mi'4
	mi'2 re'8 do'
	si2
	\bar "|."
}
Basse = \notes \context Voice = $Basse {
%voix secondaire de la portée en clef de fa
	\property Staff.midiInstrument = "acoustic grand"
	\time 3/4
	\key sol \major
	\clef bass
	\stemDown
	\repeat volta 2
	{\partial 4
	sol,4
	sol mi fad4
	sol re mi
	do si,8 la, sol,4
	re2 sol,4
	fad, sol, la,
	si, do re
	\partial 2 sol,2}
% partie b
	\partial 4 sol,4
	sol,4 la, si,
	si,4. la,8 sol,4
	re2 mi4~
	mi re do
	si,4. do8 re4
	sol,8 la, si,4 sol,
	do2 sol,4
	fad, sol, la,
	si, sol, re
	mi8 re do si, la, sol,
	re2 sol4~
	sol fad mi~
	mi8 re do4 re
	sol,2
	\bar "|."
}

SopraneStaff = \context Staff = SopraneStaff <<
\Soprane 
\Alto
	
>>


TenorStaff = \context Staff = TenorStaff <<
\Tenor 
\Basse 
	
>>

\score { 
	\context PianoStaff <<
	<<
		\SopraneStaff
		\TenorStaff 
		
	>>
>>
	\paper {
	}
	\midi {
%indication d'interprétation midi
		\tempo 4 = 72
	}

}

