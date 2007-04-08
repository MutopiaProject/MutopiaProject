\header {
 mutopiatitle = "Anke van Tharaw"
 mutopiacomposer = "F. Silcher (1789-1860)"
 mutopiapoet = "J. S. Dach (1605-1659)"
 mutopiainstrument = "Choir SATB"
 date = "1827"
 source = "http://ingeb.org/"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Kris Van Bruwaene"
 maintainerEmail = "krvbr@yahoo.co.uk"
 lastupdated = "2002/aug/05"
  title="Anke van Tharaw"
  composer="Friedrich Silcher (1827)"
  poet="Johann Simon Dach (1636)"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/08/05-262"
}

\version "1.4.0"
global = \notes {
   \time 3/4
   \key bes \major
   \skip 1*18 \bar "|."
}
trackXvoiceA = \notes {}

trackX = <
	\context Voice = trackXvoiceA \trackXvoiceA
>
 % track@

sopranoMelody = \notes \relative c' 
	{ 
	f4. g8 f4 f bes bes c4. d8 c4 bes2 r4 a a a
	c4. bes8 a4 g4. a8 g4 f2 r4 
	f4. g8 f4 f bes bes c4. d8 c4 bes2 r4 a a a	
	c4. bes8 a4 g4. a8 g4 f2 r4 
	f4 f g a f g a a bes c2 r4 bes4 c d es4. d8 c4 
	bes c a4 bes2 r4
	}

altoMelody = \notes \relative c' {
	d4. es8 d4 d d d es4. f8 es4 d2 r4 c c c
	c4. c8 c4 c4. c8 c4 c2 r4 
	d4. es8 d4 d d d es4. f8 es4 d2 r4 c c c
	c4. c8 c4 c4. c8 c4 c2 r4 
	f4 c e f f e f f f f2 r4 f4 es bes' bes4. bes8 g4 
	f g f f2 r4  
	}
tenorMelody = \notes \relative g {
	f4. f8 f4 f f f a4. a8 a4 bes2 r4 f f f
	a4. g8 f4 bes4. bes8 bes4 a2 r4 
	f4. f8 f4 f f f a4. a8 a4 bes2 r4 f f f
	a4. g8 f4 bes4. bes8 bes4 a2 r4 
	a c c c a c c d d es2 r4 d4 es f es4. f8 es4 
	f es c d2 r4
	}
bassMelody = \notes \relative c {
	bes4. bes8 bes4 bes bes bes f'4. f8 f4 bes,2 r4 f' f, f'
	a4. g8 f4 c4. c8 c4 f2 r4 
	bes,4. bes8 bes4 bes bes bes f'4. f8 f4 bes,2 r4 f' f, f'
	a4. g8 f4 c4. c8 c4 f2 r4 
	f, a c f a g f d bes f2 r4 bes' a gis g4. f8 es4 
	d c f bes,2 r4
	}
tekst = \lyrics {
	An -- ke van Tha -- raw \"o\ss, de my ge -- f\"olt,
	Se \"o\ss mihn Le -- wen, mihn Goet on mihn G\"olt.
	An -- ke van Tha -- raw heft wed -- der eer Hart
	Op my ge -- r\"och -- tet \"on L\"ow on \"on Schmart.
	An -- ke van Tha -- raw mihn Rihk -- dom, mihn Goet,
	Du mih -- ne see -- le, mihn Fleesch on mihn Bloet.
}
sopranoTotal = \simultaneous {
              \addlyrics
	      \context Staff = soprano { 
                \property Staff.instrument = "S"
	      	\property Staff.midiInstrument = "voice oohs"
		\clef "violin"
		\property Staff.automaticMelismata = ##t
				\notes \context Voice=soprano< 
						\global
						\sopranoMelody
						>
					}
		     \context Lyrics = "soprano" \tekst
	      }

altoTotal = \simultaneous {
              \addlyrics
	      \context Staff = alto { 
                \property Staff.instrument = "A"
	      	\property Staff.midiInstrument = "voice oohs"
		\clef "violin"
		\property Staff.automaticMelismata = ##t
				\notes \context Voice=alto< 
						\global
						\altoMelody
						>
					}
		     \context Lyrics = "alto" \tekst
	      }

tenorTotal = \simultaneous {
              \addlyrics
	      \context Staff = tenor { 
                \property Staff.instrument = "T"
	      	\property Staff.midiInstrument = "voice oohs"
		\clef "violin_8"
		\property Staff.automaticMelismata = ##t
				\notes \context Voice=tenor< 
						\global
						\tenorMelody
						>
					}
		     \context Lyrics = "tenor" \tekst
	      }

bassTotal = \simultaneous {
              \addlyrics
	      \context Staff = bass { 
                \property Staff.instrument = "B"
	      	\property Staff.midiInstrument = "voice oohs"
		\clef "bass"
		\property Staff.automaticMelismata = ##t
				\notes \context Voice=bass< 
						\global
						\bassMelody
						>
					}
		     \context Lyrics = "bass" \tekst
	      }

        
\score {
     \context ChoirStaff = choir <
       \sopranoTotal
       \altoTotal
       \tenorTotal
       \bassTotal
     >

  \paper { interscoreline = 3 }
  \midi  { \tempo 4=120 }
}

% EOF
