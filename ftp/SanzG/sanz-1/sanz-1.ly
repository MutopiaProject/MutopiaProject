\include "english.ly"
\include "paper20.ly"
\version "2.1.6"

\header {
	instrument = "Classical Guitar"
	copyright = "Public Domain"
	maintainer = "Stan Sanderson"
	maintainerEmail = "physinfoman@ameritech.net"
	lastupdated = "1/5/2004"
	title = "Preludio"
	composer = "Gaspar Sanz"
	opus = "1640-1710"
	mutopiainstrument = "Guitar"
	mutopiacomposer = "SanzG"
	
	tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
	footer = "Mutopia-2004/01/05-380"
	} 


mdd = \property Staff.NoteCollision \override #'merge-differently-dotted = ##t
mddo = \property Staff.NoteCollision \revert #'merge-differently-dotted

mdh = \property Staff.NoteCollision \override #'merge-differently-headed = ##t
mdho = \property Staff.NoteCollision \revert #'merge-differently-headed
hhs = \property Voice.Slur \set #'attachment = #' (head . head)
sss = \property Voice.Slur \set #'attachment = #' (stem . stem)
hss = \property Voice.Slur \set #'attachment = #' (head . stem)
shs = \property Voice.Slur \set #'attachment = #' (stem . head)
pshup = \property Staff.PhrasingSlur \override #'height-limit = #15.0

global = \notes { \time 2/2 \key g\major \clef treble }

up = \notes \relative c' {  \mdh \mdd \stemUp
	e8^\markup{"Andante poco sostenuto"} b' g' d, c8 c' b, a 
	gs8 b' e d a,8 c' e a,,
	b8 d' g b,, cs e' a cs,,
	d8 d' fs c,! b d' \hhs g( fs)
	c,8 c' e b, a c' \hhs fs( e)
	b,8 ds' fs a, gs b e d,
	a'8 c e g,! fs d' a' fs,
	\sss \property Voice.Slur \override #'beautiful = #4.0 
	\times 4/6 {  g8[( b g' \hhs a,( g) f!]) } \sss \times 4/6 { e[( b' g' f,( e) d]) }
	\times 4/6 {  c8[( c' e \hhs \slurDown c,( b) a]) } \slurUp \sss \times 4/6 { gs[( b' e d c b]) }
	\times 4/6 {  a8[( c e \hhs g!( fs) e]) } \sss \times 4/6 { b[( ds fs a g fs]) }
	e, b' g' e, fs d' a' fs,
	
	gs b e d a c e fs
	b, d fs gs a,, c' a' ds,
	e g! b cs d,, fs' d' gs,
	
	a,, a'' cs ds, e g! b cs
	cs, e a cs, d fs a b
	b, d g b, c! e g a
	a, c e a, b ds fs gs
	
	gs, b e gs, a c e fs
	fs, d' a' fs, g! b g' g,
	e b' g' e, fs d' a' fs,
	ds b' fs' ds, e b' g' e,
	
	cs e' a cs,, d! d' fs d,
	b d' g b,, c! c' e c,
	a c' e a,, b d' g b,, 
	gs b' e gs,, a c' e fs
	
	g,,! b' g' a,, b ds' fs b,
	e, b' g' d,! c c' e b,
	a c' e a,, b' ds fs b,
	<g b g'>2^\fermata r2
	
	
	}
	
down = \notes \relative c' { \stemDown
	e4. d8 c4 \hhs b8( a)
	gs2 a4. a8
	b4. b8 cs4. cs8
	d4. c8 b2 \break
	c4. b8 a2
	b4. a'8 gs4. d8
	c4. g'8 fs4. fs8
	\property Voice.tupletInvisible =##t
	\times 4/6 { \mdh g4 s8 a8 g f } \times 4/6 { e4 s8 \hhs f8( e) d } \break
	\times 4/6 { \mdh c4 s8 c8 b a } \times 4/6 { gs4 s8 \hhs d''8( c) b }
	\times 4/6 { \mdh a4 s8 g'8 fs e } \times 4/6 { b4 s8 \hhs a'8( g) fs }  
	e,4. e8 fs4. fs8 \break
	gs2 a
	b2 a,4. ds'8 
	e2 d, \break
	a4. ds'8 e2
	cs4. cs8 d2
	b4. b8 c2
	a4. a8 b2 \break
	gs4. gs8 a2 
	fs4. fs8 g4. g8 
	e4. e8 fs4. fs8 
	ds4. ds8 e4. e8 \break
	cs4. cs8 d4. d8 
	b4. b8 c4. c8 
	a4. a8 b4. b8 
	gs4. gs8 a2 \break
	g4. a8 b4. b'8
	e,4. d8 c4. b8 
	a4. a8 b2
	e,2 s2 \bar "|."
	
	
}
	
\score { 
	 \notes  {
		\global 
		\context Staff << \new Voice { \voiceOne \up }
						 \new Voice { \voiceTwo \down }
					>>
		
		\property Staff.midiInstrument = "acoustic guitar (nylon)"
		}
		\paper { }
		\midi { \tempo 2 = 60 }
		
}
