%#(set-global-staff-size 16)
\header {
  filename =    "paulus_9.ly"
  opus =        "Opus 36"
  title=	"Dir, Herr, dir will ich mich ergeben"
  subtitle="\\textit{Paulus}, Oratorio Nr. 9: (Recitativ und) Choral"
  composer="Felix Mendelssohn-Bartholdy (1809-1847)"
  copyright="Public Domain"
  source = "Kalmus Edition K06298"
  style = "Romantique" % Early Romantic
  copyright = "Public Domain"
  maintainer = "Kris Van Bruwaene"
  maintainerEmail = "krvbr@yahoo.co.uk"
  mutopiacomposer="Mendelssohn-BartholdyF"
  mutopiaopus =        "O36"
  lastupdated = "2002-06-20"

  tagline = "\\parbox{\\paper-width}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2004/11/02-491"
}

\version "2.12.0"

global =  {
   \time 4/4
   \key f \minor
   \skip 1*14 \bar "|."
}

sopranoMelody =  \relative c' {
   r4 c\p f  f8[ ( g)] as4 g f g e c2\fermata es4 es des c f f e f\fermata
   c f g as g f g e c ~ c\fermata es es des c f f e f\fermata 
   g\cresc as\endcresc bes c c bes bes as\fermata c\pp bes as g  f8[ ( g)] as4
   g f2 r  
}

altoMelody =  \relative c' {
   r4 c\p f  f8[ ( g)] as4 g f g e c2\fermata es4 es des c f f e f\fermata
   c f g as g f g e c ~ c\fermata es es des c f f e f\fermata 
   g\cresc as\endcresc bes c c bes bes as\fermata c\pp bes as g  f8[ ( g)] as4
   g f2 r  
}

tenorMelody =  \relative g {
   r4 as\p as as c e, f bes g c2\fermata c4 g  as8[ ( bes)] bes4 as
    ges8[ ( des')]  c[ ( bes)] as4\fermata as as des c es  es8[ ( des)] 
    c[ ( b)] c4 c ~ c\fermata c c  f,8[ ( g)] as4 as g bes as\fermata
   c\cresc c\endcresc  g'8[ ( f)] e4  f8[ ( es)] des4 des c\fermata c\pp des c  bes8[ ( c)]
   des4 f,  f8[ ( e)] f2 r
}

bassMelody =  \relative c {
   r4 f\p f f f c des bes c c2\fermata as4 es' f8( g) as4 des, bes c f\fermata 
   f des bes as c des des c c~c\fermata c8( bes) as4 bes c des bes c 
   f\fermata e\cresc f\endcresc des c a bes es as,\fermata as\pp bes c des8( c) bes4 
   c c f2 r
}

tekst = \lyricmode {
  Dir,4 Herr, dir will ich mich er -- ge -- ben, dir, des -- sen 
  Ei -- gen -- thum ich bin. Du nur al -- lein, du bist mein Le -- ben, __ 
  und ster -- ben wird mir dann Ge -- winn. Ich le -- be dir, ich ster -- be
  dir. Sei du nur mein, so g'nügt es mir.  
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

  \layout { interscoreline = 3 }
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 40 4)
      }
    }


}

% EOF

