% $Id: ballade.ly,v 1.3 2003/06/05 18:28:04 cve Exp $

#(set! point-and-click line-location)

\include "paper16.ly"
\version "1.6.9"
\header {
    mutopiatitle = "Second Ballade"
    mutopiacomposer = "F. Liszt (1811-1886)"
    mutopiainstrument = "Piano"
    date = "1853"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Vassily Checkin"
    maintainerEmail = "ly@auriga.com"
    lastupdated = "2003/Jun/5"
    
    title="Deuxi\\`eme Ballade"
    composer="F. Liszt"
    date="1853"
    tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
    footer="Mutopia-2003/06/05-236"
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
#'((0 . 1.0) 0 . 1.0)
portamentoOff = \property Voice.Slur \revert #'attachment-offset

slurUpS = \property Voice.Slur \set #'direction = #1
slurBothS = \property Voice.Slur \set #'direction = #0
slurDownS = \property Voice.Slur \set #'direction = #-1
tieUpS =  \property Voice.Tie \set #'direction = #1
tieBothS =  \property Voice.Tie \set #'direction = #0
tieDownS =  \property Voice.Tie \set #'direction = #-1

\include "ballade_p1.ly"
\include "ballade_p2.ly"
\include "ballade_p3.ly"
\include "ballade_p4.ly"
\include "ballade_p5.ly"
\include "ballade_p6.ly"
\include "ballade_p7.ly"
\include "ballade_p8.ly"
\include "ballade_p9.ly"
\include "ballade_p10.ly"
\include "ballade_p11.ly"
\include "ballade_p12.ly"
\include "ballade_p13.ly"
\include "ballade_p14.ly"


RH = {
    \notes { \key b \minor \partial 8 r8 | }
    < \upperVoiceItoXVI \middleVoiceItoIX >
    \PIIRH \notes { R1 }
    \notes { \key bes \minor \break
	     \transpose ces' { \time 6/4
			       < 
				   \upperVoiceItoXVI 
				   \middleVoiceItoIX 
			       > 
			       \PIIRH
			   }
	 }
    \break
    \PIIIRH \break
    \PIVRH
    \PVRH
    \break
    \PVIRH
    \PVIIRH
    \break
    \PVIIIRH
    \PIXRH
    \break
    \PXRH
    \PXIRH
    \PXIIRH
    \PXIIIRH
    \PXIVRH
}
LH = {
    \notes { \key b \minor \partial 8 fis,,8 | }
    \bassoVoiceItoXVI
    \PIILH \notes {r2 r4 r8 f,,_"tre corde" |}
    \notes { \key bes \minor
	     \transpose ces' { \time 6/4
			       \bassoVoiceItoXVI \PIILH
			   }
	 }
    \PIIILH
    \PIVLH
    \PVLH
    \PVILH
    \PVIILH
    \PVIIILH
    \PIXLH
    \PXLH
    \PXILH
    \PXIILH
    \PXIIILH
    \PXIVLH
}

\score {
    \context PianoStaff {
	<
	    \context Staff = up {
		\notes { \time 6/4 \clef violin}
		<
		    \notes \context Voice=tempoChanges {
			\property Voice.TextScript \override #'font-shape = #'upright
			\property Voice.TextScript \override #'font-relative-size = #+2
			\property Voice.TextScript \set #'extra-offset = #'(-2 . 2)
			s8^"Allegro moderato" \repeat unfold 18 {s1.}
			s1 s2. s4 ^"Lento assai"
			\property Voice.TextScript \set #'extra-offset = #'(-2 . 4.5)
			s1 s1 s1 s1^"Allegretto"
			\repeat unfold 11 {s1}
			\property Voice.TextScript \set #'extra-offset = #'(-2 . 2)
			s1.^"Tempo I" \repeat unfold 17 {s1.}
			s1 s1 ^"Lento assai"
			\property Voice.TextScript \set #'extra-offset = #'(-2 . 4.5)
			s1 s1 s1 s1^"Allegretto"
			\property Voice.TextScript \set #'extra-offset = #'(-2 . 2)
			\repeat unfold 10 {s1}
			s1 ^"Allegro deciso"
			\repeat unfold 72 {s1}
			\property Voice.TextScript \set #'extra-offset = #'(-2 . 4)
			s1 ^"Allegretto"
			\repeat unfold 110 {s1}
			\property Voice.TextScript \set #'extra-offset = #'(-2 . 2)
			s1. ^"Allegro moderato"
			\repeat unfold 14 {s1.}
			s1^"un poco pi\\`u mosso"
			\repeat unfold 42 {s1}
			\property Voice.TextScript \set #'extra-offset = #'(-2 . 4.5)
			s1^"Andantino" \repeat unfold 11 {s1}
		    }
		    \RH
		>
	    }
	    \context Staff = down {
		\notes {	\time 6/4 \clef bass}
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
