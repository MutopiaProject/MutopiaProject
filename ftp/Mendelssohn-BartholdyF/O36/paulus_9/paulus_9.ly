#(ly:set-option 'old-relative)
%#(set-global-staff-size 16)
\header {
  mydate = 
  "Time-stamp: \"2002-06-20\""
  filename =    "paulus_9.ly"
  opus =        "Opus 36"
  title=	"Dir, Herr, dir will ich mich ergeben"
  subtitle="\\textit{Paulus}, Oratorio Nr. 9: (Recitativ und) Choral"
  composer="Felix Mendelssohn-Bartholdy (1809-1847)"
  copyright="public domain"
  source = "Kalmus Edition K06298"
  style = "Early Romantic"
  copyright = "Public Domain"
  maintainer = "Kris Van Bruwaene"
  maintainerEmail = "krvbr@yahoo.co.uk"
  lastupdated = "2002-06-20"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2004/11/02-491"
}

\version "2.2.0"

global = \notes {
   \time 4/4
   \key f \minor
   \skip 1*14 \bar "|."
}

sopranoMelody = \notes \relative c' {
   r4 c\p f  f8[ ( g)] as4 g f g e c2\fermata es4 es des c f f e f\fermata
   c f g as g f g e c ~ c\fermata es es des c f f e f\fermata 
   g\cresc as\endcresc bes c c bes bes as\fermata c\pp bes as g  f8[ ( g)] as4
   g f2 r  
}

altoMelody = \notes \relative c' {
   r4 c\p f  f8[ ( g)] as4 g f g e c2\fermata es4 es des c f f e f\fermata
   c f g as g f g e c ~ c\fermata es es des c f f e f\fermata 
   g\cresc as\endcresc bes c c bes bes as\fermata c\pp bes as g  f8[ ( g)] as4
   g f2 r  
}

tenorMelody = \notes \relative g {
   r4 as\p as as c e, f bes g c2\fermata c4 g  as8[ ( bes)] bes4 as
    ges8[ ( des')]  c[ ( bes)] as4\fermata as as des c es  es8[ ( des)] 
    c[ ( b)] c4 c ~ c\fermata c c  f,8[ ( g)] as4 as g bes as\fermata
   c\cresc c\endcresc  g'8[ ( f)] e4  f8[ ( es)] des4 des c\fermata c\pp des c  bes8[ ( c)]
   des4 f,  f8[ ( e)] f2 r
}

bassMelody = \notes \relative c {
   r4 f\p f f f c des bes c c2\fermata as4 es' f8( g) as4 des, bes c f\fermata 
   f des bes as c des des c c~c\fermata c8( bes) as4 bes c des bes c 
   f\fermata e\cresc f\endcresc des c a bes es as,\fermata as\pp bes c des8( c) bes4 
   c c f2 r
}

tekst = \lyrics {
  Dir,4 Herr, dir will ich mich er -- ge -- ben, dir, des -- sen 
  Ei -- gen -- thum ich bin. Du nur al -- lein, du bist mein Le -- ben, __ 
  und ster -- ben wird mir dann Ge -- winn. Ich le --be dir, ich ster -- be
  dir. Sei du nur mein, so g'n\"ugt es mir.  
}

sopranoTotal = \simultaneous {
              \addlyrics
	      \context Staff = soprano { 
                \set Staff.instrument = "Soprani"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "violin"
		 \unset Staff.melismaBusyProperties 
				\notes \context Voice=soprano<< 
						\global
						\sopranoMelody
						>>
					}
		     \context Lyrics = "soprano" \tekst
	      }

altoTotal = \simultaneous {
              \addlyrics
	      \context Staff = alto { 
                \set Staff.instrument = "Alti"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "violin"
		 \unset Staff.melismaBusyProperties 
				\notes \context Voice=alto<< 
						\global
						\altoMelody
						>>
					}
		     \context Lyrics = "alto" \tekst
	      }

tenorTotal = \simultaneous {
              \addlyrics
	      \context Staff = tenor { 
                \set Staff.instrument = "Tenori"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "violin_8"
		 \unset Staff.melismaBusyProperties 
				\notes \context Voice=tenor<< 
						\global
						\tenorMelody
						>>
					}
		     \context Lyrics = "tenor" \tekst
	      }

bassTotal = \simultaneous {
              \addlyrics
	      \context Staff = bass { 
                \set Staff.instrument = "Bassi"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "bass"
		 \unset Staff.melismaBusyProperties 
				\notes \context Voice=bass<< 
						\global
						\bassMelody
						>>
					}
		     \context Lyrics = "bass" \tekst
	      }

        
\score {
     \context ChoirStaff = choir <<
       \sopranoTotal
       \altoTotal
       \tenorTotal
       \bassTotal
     >>

  \paper { interscoreline = 3 }
  \midi  { \tempo 4=40 }
}

% EOF

