\header {
  filename =    "paulus_3.ly"
  opus =        "Opus 36"
  title="Allein Gott in der Höh sei Ehr"
  subtitle= \markup {{\italic Paulus}, Oratorio Op.36 nr. 3: Choral}
  composer="Felix Mendelssohn Bartholdy (1809-1847)"
  copyright="Public Domain"
  source = "Kalmus Edition"
  style = "Romantique" % Early Romantic
  copyright = "Public Domain"
  mutopiacomposer = "Mendelssohn-BartholdyF"
  mutopiaopus = "O 36"
  mutopiainstrument = "Voice (SATB)"
  mutopiastyle = "Romantic"
  maintainer = "Kris Van Bruwaene"
  maintainerEmail = "krvbr@yahoo.co.uk"

 footer = "Mutopia-2013/02/21-490"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\version "2.16.1"

global =  {
   \time 4/4
   \key e \major
   \partial 4
   \skip 1*14 \bar "|."
}

sopranoMelody =  \relative c' {
     e8[\p( fis8)] gis4 a b a gis fis gis\fermata gis gis  fis8[( gis)] a4 
    fis e( fis) e\fermata  e8[( fis)] gis4 a b a gis fis gis\fermata gis gis
     fis8[\<( gis)] a4 fis e( fis) e\!\fermata e\f fis gis a gis fis eis 
    fis\fermata fis gis a b a gis\> fis gis\!\fermata gis\p gis  fis8[( 
    gis)] a4 fis e( fis) e\fermata 
}

altoMelody =  \relative c' {
    e4\p e e dis  e8[( fis)] e4  dis8[( cis)] b4\fermata e dis fis fis cis e( 
    dis) e\fermata e e e  e8[( dis)]  e[( fis)] gis4 dis dis\fermata e  dis8[( 
    e)] fis4\< fis  cis8[( dis)] e4( dis) e\!\fermata e\f e d cis b d cis 
    cis\fermata  dis8[( cis)] b4 e e  e8[( fis)]  fis[\>( e)] dis4 dis\!\fermata 
    e\p dis fis fis cis e( dis) b\fermata
}

tenorMelody =   {
    gis8[\p( a)] b4 a  a8[( gis)]  cis'[( b)] b4 a gis\fermata cis' bis cis' 
   cis' a gis ( a) gis\fermata  gis8[( a)] b4 a gis  cis'8[( b)]  b[( e')] 
    dis'[( cis')] bis4\fermata cis' bis cis'\< cis' cis' b4.( a8) gis4\!\fermata
   e\f b b a b  b8[( a)] gis4 a\fermata b b a gis cis' b\>  dis'8[( cis')]\!
   bis4\fermata cis'\p bis cis' cis'  b8[( a)] gis4 ( a) gis\fermata
}

bassMelody =  {
   e4\p  e8[( dis)] cis4 b,  cis8[( dis)] e4 b, e\fermata cis gis  a8[( gis)] fis4 
   a, b,2 e4\fermata e dis cis b,  cis8[( dis)] e4 a gis\fermata  e8[( fis)] gis4 
    a8[\<( gis)] fis4 a,  gis,8[( a,] b,4) e\!\fermata cis\f b, b, fis d b, cis
   fis\fermata b,  e8[( d)] cis4 b,  cis8[( dis)] e4\> a gis\!\fermata  e8[\p( 
   fis)] gis4  a8[( gis)] fis4 a, b,2 e4\fermata
}

tekst = \lyricmode {
  Al4 -- lein Gott in der Höh sei Ehr und Dank für sei -- ne Gna -- de; 
  da -- rum dass nun und nim -- mer -- mehr uns rüh -- ren kann kein 
  Scha -- de. Ganz un -- er -- mess'n ist sei -- ne Macht, nur das 
  ge -- schieht was er be -- dacht, wohl uns, wohl uns des Her -- ren.
}

sopranoTotal = <<
	      \context Staff = "soprano" { 
                \set Staff.instrumentName = "Soprani"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "violin"
		  \context Voice="soprano"<< 
				\global
				\sopranoMelody
				>>
			}
	     \new Lyrics \lyricsto "soprano" \tekst
      >>

altoTotal = <<
	      \context Staff = "alto" { 
                \set Staff.instrumentName = "Alti"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "violin"
		  \context Voice="alto"<< 
				\global
				\altoMelody
				>>
			}
	     \new Lyrics \lyricsto "alto" \tekst
      >>

tenorTotal = <<
	      \context Staff = "tenor" { 
                \set Staff.instrumentName = "Tenori"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "violin_8"
		  \context Voice="tenor"<< 
				\global
				\tenorMelody
				>>
			}
	     \new Lyrics \lyricsto "tenor" \tekst
     >>

bassTotal = <<
	      \context Staff = "bass" { 
                \set Staff.instrumentName = "Bassi"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "bass"
		  \context Voice="bass"<< 
				\global
				\bassMelody
				>>
			}
	     \new Lyrics \lyricsto "bass" \tekst
     >>

        
\score {
     \context ChoirStaff = "choir" <<
       \sopranoTotal
       \altoTotal
       \tenorTotal
       \bassTotal
     >>

  \layout { interscoreline = 4 }
  
  \midi {
    \tempo 4 = 40
    }


}

% EOF

