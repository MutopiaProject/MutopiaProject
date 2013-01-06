\header {
  mutopiatitle = "Anke van Tharaw"
  mutopiacomposer = "SilcherF"
  mutopiapoet = "J. S. Dach (1605-1659)"
  mutopiainstrument = "Voice (SATB)"
  date = "1827"
  source = "http://ingeb.org/"
  style = "Romantic"
  copyright = "Public Domain"
  maintainer = "Kris Van Bruwaene"
  maintainerEmail = "krvbr@yahoo.co.uk"
  title="Anke van Tharaw"
  composer="Friedrich Silcher (1827)"
  poet="Johann Simon Dach (1636)"

 footer = "Mutopia-2013/01/06-262"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\version "2.16.1"
global =  {
   \time 3/4
   \key bes \major
   \skip 1*18 \bar "|."
}

sopranoMelody =  \relative c' 
	{ 
	f4. g8 f4 f bes bes c4. d8 c4 bes2 r4 a a a
	c4. bes8 a4 g4. a8 g4 f2 r4 
	f4. g8 f4 f bes bes c4. d8 c4 bes2 r4 a a a	
	c4. bes8 a4 g4. a8 g4 f2 r4 
	f4 f g a f g a a bes c2 r4 bes4 c d es4. d8 c4 
	bes c a4 bes2 r4
	}

altoMelody =  \relative c' {
	d4. es8 d4 d d d es4. f8 es4 d2 r4 c c c
	c4. c8 c4 c4. c8 c4 c2 r4 
	d4. es8 d4 d d d es4. f8 es4 d2 r4 c c c
	c4. c8 c4 c4. c8 c4 c2 r4 
	f4 c e f f e f f f f2 r4 f4 es bes' bes4. bes8 g4 
	f g f f2 r4  
	}

tenorMelody =  \relative g {
	f4. f8 f4 f f f a4. a8 a4 bes2 r4 f f f
	a4. g8 f4 bes4. bes8 bes4 a2 r4 
	f4. f8 f4 f f f a4. a8 a4 bes2 r4 f f f
	a4. g8 f4 bes4. bes8 bes4 a2 r4 
	a c c c a c c d d es2 r4 d4 es f es4. f8 es4 
	f es c d2 r4
	}

bassMelody =  \relative c {
	bes4. bes8 bes4 bes bes bes f'4. f8 f4 bes,2 r4 f' f, f'
	a4. g8 f4 c4. c8 c4 f2 r4 
	bes,4. bes8 bes4 bes bes bes f'4. f8 f4 bes,2 r4 f' f, f'
	a4. g8 f4 c4. c8 c4 f2 r4 
	f, a c f a g f d bes f2 r4 bes' a gis g4. f8 es4 
	d c f bes,2 r4
	}

tekst = \lyricmode {
	An -- ke van Tha -- raw öß, de my ge -- fölt,
	Se öß mihn Le -- wen, mihn Goet on mihn Gölt.
	An -- ke van Tha -- raw heft wed -- der eer Hart
	Op my ge -- röch -- tet ön Löw on ön Schmart.
	An -- ke van Tha -- raw mihn Rihk -- dom, mihn Goet,
	Du mih -- ne see -- le, mihn Fleesch on mihn Bloet.
}

sopranoTotal = \simultaneous {
	      \context Staff = "soprano" { 
                \set Staff.instrumentName = "S"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "violin"
				 \context Voice=soprano<< 
						\global
						\sopranoMelody
						>>
					}
		     \new Lyrics \lyricsto "soprano" { \tekst }
	      }

altoTotal = \simultaneous {
	      \context Staff = "alto" { 
                \set Staff.instrumentName = "A"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "violin"
				 \context Voice=alto<< 
						\global
						\altoMelody
						>>
					}
		     \new Lyrics \lyricsto "alto" { \tekst }
	      }

tenorTotal = \simultaneous {
	      \context Staff = "tenor" { 
                \set Staff.instrumentName = "T"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "violin_8"
				 \context Voice=tenor<< 
						\global
						\tenorMelody
						>>
					}
		     \new Lyrics \lyricsto "tenor" { \tekst }
	      }

bassTotal = \simultaneous {
	      \context Staff = "bass" { 
                \set Staff.instrumentName = "B"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "bass"
				 \context Voice=bass<< 
						\global
						\bassMelody
						>>
					}
		     \new Lyrics \lyricsto "bass" { \tekst }
	      }

        
\score {
     \context ChoirStaff = "choir" <<
       \sopranoTotal
       \altoTotal
       \tenorTotal
       \bassTotal
     >>

  \layout {
    #(layout-set-staff-size 19.5)
  }
  
  \midi {
    \tempo 4 = 120
  }
}

% EOF
