% $Id: dumka.ly,v 1.4 2003/07/17 21:37:39 cve Exp $

#(set! point-and-click line-location)

\include "paper16.ly"
\version "1.6.9"
\header {
    mutopiatitle = "Doumka"
    mutopiacomposer = "TchaikovskyPI"
    mutopiainstrument = "Piano"
    date = "1886"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Vassily Checkin"
    maintainerEmail = "ly@auriga.com"
    lastupdated = "2003/Jun/5"
    
    title="Doumka"
    subtitle="Sc\`ene rustique russe"
    opus="Op. 59"
    composer="P. Tchaikovskiy"

    tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
    footer = "Mutopia-2003/07/24-341"
}

tupletBrOff = \property Voice.TupletBracket \set #'bracket-visibility = ##f
tupletBrOn = \property Voice.TupletBracket \set #'bracket-visibility = ##t
tupletNumOff = \property Voice.TupletBracket \set #'number-visibility = ##f
tupletNumOn = \property Voice.TupletBracket \set #'number-visibility = ##t
stemDownS = \property Voice.Stem \set #'direction = #-1
stemUpS = \property Voice.Stem \set #'direction = #1
stemBothS = \property Voice.Stem \set #'direction = #0
slurHH = \property Voice.Slur \set #'attachment = #'(head . head)
slurSS = \property Voice.Slur \set #'attachment = #'(stem . stem)
slurSH = \property Voice.Slur \set #'attachment = #'(stem . head)
slurHS = \property Voice.Slur \set #'attachment = #'(head . stem)
slurAttAny = \property Voice.Slur \set #'attachment = #'(#f . #f)
portamentoDown = \property Voice.Slur \override #'attachment-offset = 
#'((0 . -1.0) 0 . -1.0)
portamentoUp = \property Voice.Slur \override #'attachment-offset = 
#'((-0.5 . 1.0) -0.5 . 1.0)
portamentoOff = \property Voice.Slur \revert #'attachment-offset

slurUpS = \property Voice.Slur \set #'direction = #1
slurBothS = \property Voice.Slur \set #'direction = #0
slurDownS = \property Voice.Slur \set #'direction = #-1
tieUpS =  \property Voice.Tie \set #'direction = #1
tieBothS =  \property Voice.Tie \set #'direction = #0
tieDownS =  \property Voice.Tie \set #'direction = #-1

\include "dumka_p1.ly"
\include "dumka_p2.ly"
\include "dumka_p3.ly"
\include "dumka_p4.ly"
\include "dumka_p5.ly"

RH = {
    \notes { \key c \minor}
    \PIRH
    \break
    \PIIRH
    \break
    \PIIIRH
    \break
    \PIVRH
    \break
    \PVRH
}
LH = {
    \notes { \key c \minor}
    \PILH
    \PIILH
    \PIIILH
    \PIVLH
    \PVLH
}

\score {
    \context PianoStaff {
	<
	    \context Staff = up {
		\notes { \time 4/4 \clef violin}
		<
		    \notes \context Voice=tempoChanges {
			\property Voice.TextScript \override #'font-shape = #'upright
			\property Voice.TextScript \override #'font-relative-size = #+2
			\property Voice.TextScript \set #'extra-offset = #'(-2 . 4)
			s1^"Andantino cantabile" s2 \repeat unfold 44 {s1}
			s1^"Con anima" \repeat unfold 13 {s1}
			s1^"L'istesso tempo" \repeat unfold 17 {s1}
			\property Voice.TextScript \set #'extra-offset = #'(-2 . 8)
			s1^"Poco meno mosso" \repeat unfold 16 {s1}
			s2 s16
			\property Voice.TextScript \set #'extra-offset = #'(-2 . 5)
			s1^"Moderato con fuoco"
			\repeat unfold 8 {s1}
			\property Voice.TextScript \set #'extra-offset = #'(-2 . 3.5)
			s1^"Andante"
			\property Voice.TextScript \set #'extra-offset = #'(-2 . 5.5)
			s s s s^"Meno mosso"
			\property Voice.TextScript \set #'extra-offset = #'(-2 . 4)
			s s s s s s2 s2^"Adagio"
			\property Voice.TextScript \set #'extra-offset = #'(-2 . 3.5)
			s1 s s s s s^"Tempo I"
		    }
		    \RH
		>
	    }
	    \context Staff = down {
		\notes {	\time 4/4 \clef bass}
		\LH
	    }
	>
    }

    \midi { }
    \paper {
				%interscorelinefill =	\interscoreline
				%indent = 0.0
				%papersize="letter"
	\translator{
	    \ScoreContext
	    BarNumber \override #'padding = #2
	    TextScript \override #'font-shape = #'italic
	    NoteCollision \override #'merge-differently-dotted = ##t
	}
    }
}
