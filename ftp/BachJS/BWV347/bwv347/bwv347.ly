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
	title = "Ich dank dir, lieber Herre"
	subtitle = "BWV 347"
	composer = "Johann Sebastian Bach"
	poet = "Vierstimmige Choräle"
	maintainer = "Laurent Ducos"
	tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
	footer = "Mutopia-2004/01/05-379"
 	}

	% information exigées par mutopia
 mutopiatitle = "Ich dank dir, lieber Herre BWV 347"
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
	\time 4/4
	\stemUp
  	\tieUp
 	\key la \major
	\repeat volta 2
	{\partial 4
	la'4
	la' la' la' si'
	sol' fad' mi'-\fermata si'
	dod'' si' la' sold'8 fad'
	\partial 2. sold'4 fad' mi'-\fermata
		
	}
% partie b
	\partial 4 mi''
	re'' dod'' si' la'
	la'8 si' dod''4 si'-\fermata dod''
	re'' dod'' si' lad'
	si'2.-\fermata mi'4
	la' si' dod'' re''
	mi'' re''8 dod'' si'4-\fermata re''
	dod'' si' mi''4. re''8
	dod''8 si' la' si'dod''4 si'
	\partial 2. la'2.-\fermata
	\bar "|."
}
Alto = \notes \context Voice = $Alto {
%voix secondaire de la portée en clef de sol
	\property Staff.midiInstrument = "acoustic grand"
	\time 4/4
	\stemDown
 	\tieDown
	\key la \major
	\repeat volta 2
	{\partial 4
	mi'4
	fad' mi' fad' fad'
	mi' red' si sold'
	la' sold'8fad' mi'2~
	\partial 2. mi'4 red' si
        }		
% partie b
	\partial 4 dod''8 si'
	la'4 la' sold' la'8 sol'
	fad'8 sold' la'4 sold' lad'
	si'8 la' sol'4 fad'8 mi' fad'4
	fad'2. mi'8 re'
	dod'4 re' mi' fad'8 sold'
	la'2 sold'4 si'
	la'8 sold' fad'4 mi' fad'8 sold'
	la'2 la'4 sold'
	\partial 2. mi'2.
	 \bar "|."
}
Tenor = \notes \context Voice = $Tenor {
%voix principale de la portée en clef de fa
	\property Staff.midiInstrument = "acoustic grand"
	\time 4/4
	\clef bass
	\stemUp
  	\tieUp
 	\key la \major
	\repeat volta 2
	{\partial 4
	dod'4
	dod' dod'8 si la sold fad4
	si4. la8 sold4 mi'
	mi' red' dod'2
	\partial 2. si4. la8 sold4
	}
% partie b	
	\partial 4 sold
	la8 si dod' re' mi'4 mi'
	re' mi' mi' mi'
	fad'8 si4 lad8 si4 dod'
	re'2. sold4
	la sold8 fad mi mi' re'4
	#(set-octavation 1)dod''8 re'' mi'' fad'' mi''4 #(set-octavation 0) fad'
	fad'8 mi' re' dod' si4 dod'8 re'
	mi'4. re'8 dod' fad' si mi'16 re'
	\partial 2. dod'2.
	\bar "|."
}
Basse = \notes \context Voice = $Basse {
%voix secondaire de la portée en clef de fa
	\property Staff.midiInstrument = "acoustic grand"
	\time 4/4
	\clef bass
	\stemDown
  	\tieDown
  	\key la \major
	\repeat volta 2
	{\partial 4
	la8 sold
	fad4 dod re red
	mi si, mi, mi
	la si dod' si8 la
	\partial 2. si4 si, mi
	 }
% partie b
	\partial 4 dod
	fad8 sold la4 mi dod8 la,
	re4 dod8 re mi4 dod
	si, dod re8 sol fad4
	si,2. dod4
	fad mi8 re dod4 si,
	la8 si dod' re' mi'4 si,
	fad8 sold la4 sold8 mi la4~
	la8 sold fad4 mi8 re mi4
	\partial 2. la,2.
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


