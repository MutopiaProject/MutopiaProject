#(ly:set-option 'old-relative)
\header {
  mydate = 
  "Time-stamp: \"2002-06-05\""
  filename =    "paulus_3.ly"
  opus =        "Opus 36"
  title="Allein Gott in der Höh sei Ehr"
  subtitle="\\textit{Paulus}, Oratorio Op.36 nr. 3: Choral"
  composer="Felix Mendelssohn Bartholdy (1809-1847)"
  copyright="Public Domain"
  source = "Kalmus Edition"
  style = "Early Romantic"
  copyright = "Public Domain"
  maintainer = "Kris Van Bruwaene"
  maintainerEmail = "krvbr@yahoo.co.uk"
  lastupdated = "2002-06-12"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2004/11/02-490"
}

\version "2.2.0"

global = \notes {
   \time 4/4
   \key e \major
   \partial 4
   \skip 1*14 \bar "|."
}

sopranoMelody = \notes \relative c' {
     e8[\p( fis8)] gis4 a b a gis fis gis\fermata gis gis  fis8[( gis)] a4 
    fis e( fis) e\fermata  e8[( fis)] gis4 a b a gis fis gis\fermata gis gis
     fis8[\<( gis)] a4 fis e( fis) e\!\fermata e\f fis gis a gis fis eis 
    fis\fermata fis gis a b a gis\> fis gis\!\fermata gis\p gis  fis8[( 
    gis)] a4 fis e( fis) e\fermata 
}

altoMelody = \notes \relative c' {
    e4\p e e dis  e8[( fis)] e4  dis8[( cis)] b4\fermata e dis fis fis cis e( 
    dis) e\fermata e e e  e8[( dis)]  e[( fis)] gis4 dis dis\fermata e  dis8[( 
    e)] fis4\< fis  cis8[( dis)] e4( dis) e\!\fermata e\f e d cis b d cis 
    cis\fermata  dis8[( cis)] b4 e e  e8[( fis)]  fis[\>( e)] dis4 dis\!\fermata 
    e\p dis fis fis cis e( dis) b\fermata
}

tenorMelody = \notes  {
    gis8[\p( a)] b4 a  a8[( gis)]  cis'[( b)] b4 a gis\fermata cis' bis cis' 
   cis' a gis ( a) gis\fermata  gis8[( a)] b4 a gis  cis'8[( b)]  b[( e')] 
    dis'[( cis')] bis4\fermata cis' bis cis'\< cis' cis' b4.( a8) gis4\!\fermata
   e\f b b a b  b8[( a)] gis4 a\fermata b b a gis cis' b\>  dis'8[( cis')]\!
   bis4\fermata cis'\p bis cis' cis'  b8[( a)] gis4 ( a) gis\fermata
}

bassMelody = \notes {
   e4\p  e8[( dis)] cis4 b,  cis8[( dis)] e4 b, e\fermata cis gis  a8[( gis)] fis4 
   a, b,2 e4\fermata e dis cis b,  cis8[( dis)] e4 a gis\fermata  e8[( fis)] gis4 
    a8[\<( gis)] fis4 a,  gis,8[( a,] b,4) e\!\fermata cis\f b, b, fis d b, cis
   fis\fermata b,  e8[( d)] cis4 b,  cis8[( dis)] e4\> a gis\!\fermata  e8[\p( 
   fis)] gis4  a8[( gis)] fis4 a, b,2 e4\fermata
}

tekst = \lyrics {
  Al4 -- lein Gott in der H\"oh sei Ehr und Dank f\"ur sei -- ne Gna -- de; 
  da -- rum dass nun und nim -- mer -- mehr uns r\"uh -- ren kann kein 
  Scha -- de. Ganz un -- er -- mess'n ist sei -- ne Macht, nur das 
  ge -- schieht was er be -- dacht, wohl uns, wohl uns des Her -- ren.
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

  \paper { interscoreline = 4 }
  \midi  { \tempo 4=40 }
}

% EOF

