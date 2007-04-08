\header {
  filename =    "elias_32.ly"
  opus =        "Opus 70, Nr. 32"
  title="Wer bis an das Ende beharrt"
  subtitle="\\textit{Elias}, Oratorio: Choral"
  composer="Felix Mendelssohn Bartholdy (1809-1847)"
  mutopiapoet="Mt. 10,22"
  meter="Andante sostenuto"
  source="Breitkopf & Härtel"
  copyright="Creative Commons Attribution-ShareAlike 2.5"
  style = "Early Romantic"
  maintainer = "Kris Van Bruwaene"
  maintainerEmail = "kris.vanbruwaene@gmail.com"
  lastupdated = "2005-08-26"
  
  footer = "Mutopia-2005/11/08-598"
  tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\thefooter\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright \\ The Mutopia Project \\& "+ \maintainer + " 2005.} \\makebox[188mm][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License. To view a copy of that license visit} \\makebox[188mm][c]{\\texttt{http://creativecommons.org/licenses/by-sa/2.5/} \\footnotesize or write to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}}"
}
\version "2.4.0"

global = {
   \time 4/4
   \key f \major
}

sopranoMelody = \relative c'' {
     c4\p\< c c a\! d\> c8 bes8 a2\! f4\pp( g a ) c bes2 a a4 c\cresc c f f e8 e\noBeam f2\f 
     r1 f,4\p( g a ) c bes2 a \setTextCresc d4\< ( e\! f2 ) (f4 e d2 c4 d) g,2  
     a4\p (b c) e d2 \setTextCresc fis,4\< g~\! g ( a bes) d c2 bes a4\f ( b cis ) e 
     d2 c\dim r4 d2\p d4 d b \setTextCresc e\< d8\! c\noBeam b2 a4 ( b  
     c) e d2\f ( \setTextDim c b )\> a1\p\!  r \setTextCresc c4\< c\! c a 
     d\sf c8 bes\noBeam a2 bes4\f ( c d ) f es2 d \setTextDim c4\> ( d\! e g f2 e d ) c 
     f,4\p ( g a ) c bes2 a d,4\pp ( e f ) a g1 f\fermata \bar "|."
}

altoMelody = \relative c' {
    f4\p e\< f f\! f\> e8 e\! f2 c4\pp e f2 ( f4 ) (c) c2 f4 e\cresc f\! f g g8 g\noBeam f2\f  
    r2 f4\p ( e d ) bes c2 d r2 r1  g4\f g g e \setTextDim a\> g8\! f\noBeam e2  
    f2\p e \setTextCresc fis4 (g d2\< g4\! f8[ es] ) d2 e4 (f) g (bes) r2 a4\f a \setTextDim
    a f bes\> a8\! g\noBeam  fis4\p ( c' bes a gis2 \setTextCresc a4\<) f\! e e \setHairpinCresc a\< g8 f\!\noBeam 
    \setTextDim e2 f4\f b8[( a]) gis4 ( a2\> g4\! ) (g\p)(f e) a ( a2 ) \setTextCresc 
    g4\< g\!  g f8[ (e]) f2 ( f4) f8 e\noBeam f4 f ( f\f ) f2 f4  g (a bes) d \setTextDim g,2\> c4\! (g) 
    a (g2 c4)(c)(bes2) a4 d,\p(e f) a g2 f d2.\pp f4 f2 (e) c1\fermata \bar "|."
}

tenorMelody = \relative c'{
    a4\p bes\< c c\! bes\> g8 g\! f2 a4\pp( c2 ) c4 d ( e ) f2 c4 \setTextCresc c\< c\! a d c8 bes\noBeam a2\f 
    f4\p (g a) c bes2 a r \setTextCresc f'4\<( e\! d2) c b4\f (c2) b4 \setTextDim a\> (b\! c)] e
    d2\p a4 \setTextCresc c4 (c4) (bes\< a)\! bes bes (f2) bes4 c2 e4 (d4) cis\f (d e) g 
    f2 \setTextDim e\> fis4\!\p fis g f e d8 e\noBeam \setTextCresc c4\<( a\! gis2 ) r
    r a4\f (b c) e \setTextDim d2\> ( cis4\p\! d2) c4 \setTextCresc d\< d\! d bes e c8 bes\noBeam c4 c
    c8[ (bes]) a[( g] f4 d')( d)( a ) bes2 r1 \setTextDim e4\>( f\! g e c d2 c4 d e2) f4
    d2\p c r d (d2.)\pp d4 d2 (c4 bes) a1\fermata \bar "|."
}

bassMelody = \relative c {
   f4\p g\< a f\! bes,\> c8 c\! f2 r2 f4\pp a g2 f f4 \setTextCresc c\< a\! a bes c8 c\noBeam d2\f
   r1 r2 f2\p ( f4 )( g a ) \setTextCresc c\< bes2\! ( a ) g1 r \setTextCresc
   r d4 d d\< bes\! es d8 c\noBeam bes2~ bes4 (a g) g'\f~ g (f e) cis \setTextDim 
   d (f g a\>) d,2\p\! r e \setTextCresc e\< e4\! c f e8 d\noBeam
   c2 d4\f d e2 \setTextDim e\> a,4\p\! a \setTextCresc a\< f\! bes bes8 bes\noBeam bes'2~ bes4 (a8[ g]) a4 f
   bes, (c) d2 d4\f (f bes) d c2 bes (bes) r2 a,4 (bes c) e f (g a c
   bes2\p) a r1 d,2.\pp c4 bes2 (c) f,1\fermata \bar "|."
}

Soptekst = \lyricmode {
  Wer4 bis an das en -- de be -- harrt, der __ wird se -- lig. Wer bis an das En -- de be -- harrt,
  der __ wird se -- lig; se -- lig; 
  der __ wird se -- lig; der __ wird se -- lig; der __ wird se -- lig. Wer bis an das En -- de be -- harrt, der __
  wird se -- lig. Wer bis an das 
  En -- de be -- harrt, der __ wird se -- lig; se -- lig; 
  der __ wird se -- lig; der __ wird se -- lig.
}

Alttekst = \lyricmode {
  Wer4 bis an das en -- de be -- harrt, der wird se -- lig. Wer bis an das En -- de be -- harrt,
  der __ wird se -- lig. Wer bis an das En -- de be -- harrt,
  der wird se -- lig, se -- lig. Wer bis an das En -- de be -- harrt, __ bis an das En -- de be --
  harrt, der wird se -- lig. Wer bis an das En -- 
  de be -- harrt, der __ der wird se -- lig; der wird se -- lig;
  der __ wird se -- lig; der wird se -- lig.
}

Tentekst = \lyricmode {
  Wer4 bis an das en -- de be -- harrt, der __ wird se -- lig. Wer bis an das En -- de be -- harrt,
  der __ wird se -- lig; der __ wird se -- lig; der __ wird 
  se -- lig; der __ wird se -- lig se -- lig; der __ wird se -- lig; Wer bis an das En -- de be -- harrt,
  der __ wird se -- lig. Wer bis an das En -- de be -- harrt, der 
  wird se -- lig; der __ wird 
  se -- lig; der __ wird se -- lig.
}

Bastekst = \lyricmode {
  Wer4 bis an das en -- de be -- harrt, der wird se -- lig. Wer bis an das En -- de be -- harrt,
  der __ wird se -- lig. 
  Wer bis an das En -- de be -- harrt, __ der __ wird se -- lig. Wer bis an das En -- de be --
  harrt, der wird se -- lig. Wer bis an das En -- de be -- harrt, __ der wird
  se -- lig, der __ wird se -- lig, __ der __ wird se -- 
  lig; der wird se -- lig. 
}

sopranoTotal = \simultaneous {
                 \oldaddlyrics
	         \context Staff = "soprano"{ 
                   \set Staff.instrument = "Sop"
	           \set Staff.midiInstrument = "voice oohs"
		   \clef "violin"
		\context Voice=soprano<< 
					\global
					\sopranoMelody
					>>
				}
		 \context Lyrics = "soprano" \Soptekst
	      }

altoTotal = \simultaneous {
              \oldaddlyrics
	      \context Staff = "alto" { 
                \set Staff.instrument = "Alt"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "violin"
		\context Voice=alto<< 
				\global
				\altoMelody
				>>
			}
	      \context Lyrics = "alto" \Alttekst
	      }

tenorTotal = \simultaneous {
               \oldaddlyrics
	       \context Staff = "tenor" { 
                \set Staff.instrument = "Ten"
	        \set Staff.midiInstrument = "voice oohs"
		\clef "violin_8"
		\context Voice=tenor<< 
					\global
					\tenorMelody
					>>
				}
	       \context Lyrics = "tenor" \Tentekst
	      }

bassTotal = \simultaneous {
              \oldaddlyrics
	      \context Staff = "bass" { 
                \set Staff.instrument = "Bas"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "bass"
		\context Voice=bass<< 
				\global
				\bassMelody
				>>
			}
              \context Lyrics = "bass" \Bastekst
	      }

        
\score {
	\context Score \with
	{
	}     \context ChoirStaff = "choir" <<
       \sopranoTotal
       \altoTotal
       \tenorTotal
       \bassTotal
     >>
  \layout { interscoreline = 5 }

  \midi  { \tempo 4=80 }
}
#(set-global-staff-size (/ (* 5.8 72.27) 25.4))

\paper  {
%#(set-global-staff-size (* 5.8 mm))
    linewidth = #(* mm 160)
    indent = 8\mm
    interscoreline = 2.\mm
    betweensystemspace = 15\mm
    raggedbottom = ##t 
    }
% EOF

