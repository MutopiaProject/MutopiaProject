\header {
 mutopiatitle = "Fairest Isle"
 mutopiacomposer = "Henry Purcell (1658-1695) "
 mutopiaarranger = "S.W."
 mutopiapoet = "John Dryden (1631-1700)"
 mutopiainstrument = "Choir SATB"
 date = "1827"
 source = "S.W. (ed.) handwritten "
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Sebastian Brosig"
 maintainerEmail = "Sebastian.Brosig@gmx.net"
 lastupdated = "2002-09-30"
  title="Fairest Isle (King Arthur)"
  composer="Henry Purcell (1658--1695)"
  poet="John Dryden (1631--1700)"
  arranger = "S.W."

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2002/09/30-268"
}

\version "1.6.2"
\include "deutsch.ly"
% \include "paper20.ly"

global = \notes {
   \time 3/4
   \key b \major
  % \skip 1*18 \bar "|."
}
trackXvoiceA = \notes {}

trackX = <
	\context Voice = trackXvoiceA \trackXvoiceA
>
 % track@

sopranoMelody = \notes \relative c''
	{   
            d4 f2 |  b,2 f'4 |  g8 ( f8 g8 ) as8 g4 |  f2 d4 |  d8 ( es ) f4 c |  d8 ( c )  b4 a |  g8 ( a  ) b4 c | 
            a2. | d4 f2 | b,2 f'4 | g8 ( f g ) as g4 | f2 d4 | d8 ( es ) f4 c4 |
            d8 ( c ) b4 a4 | g8 ( a ) b4c | a2. |  c4 a2 | d2 b4 | es4 c2 | d2 d4 | d8 ( es f ) g f4 | 
            h,2 c4 | c8 ( d ) es4 c | c2. | f4 d2 | b2 d4 | es8 ( d c ) d c4 | c () f, f |
            b8 ( a ) g4 es' | es8 ( d ) c4 f | f8 ( es ) d4  c8 () b  | b2. |  \bar "|."
	}

altoMelody = \notes \relative c'' 
        { 
          b4 a2 |  g2 b4 |  b2 b4 |  b8 () c8 d2 |  c2 f,4  | f4. () e8 f4 |  g4 () f4 e4 | 
          f2. |b2 a4 ~ | a g f | b2 b4 | b8 ( a b ) c b4 | f2 f4 | d4. () es8 f4 | 
          b,4. () f'8 e4 | f2. |  f4 f2 | f2 g4 | g4 f2 | f2 f4 | f2 f4 | 
          d8 ( es f ) g as4 | g2 f4 es2. | f4 f2 | g2 a4 | g2 g4 | f2 f4 |
          f4 () es g | a2 b8 () a | g4 f es | d2. |
	}
tenorMelody = \notes \relative f' {
	 f4 f2  | d2 d8 () c8 |  b2 b8 () c |  d4. () es8 f4 |  f2  a,4 |  b2 c8 () d |  es4 () f g |
         c,2. | d4 c2 | b2 b4 | b2 b8 () c | d4. () es8 f4 | c2 a4 | b2 c8() d |
         es4 () f c | c2. | a4 c2 | b2 b4 | b4 a2 | b2 b4 | c2 h8 () c | 
         d2 f4 | es4. () c8 d4 | c2. | c4 b2 | es4 () d a8 () b | c2 b4 | a2 a4 | 
         b2 c4 | c2 d4  | b2 a4 | b2. |
}
bassMelody = \notes \relative c' {
        b4 f2 | g2 d4 | es2 es4 |  b'2 b4 |  a2 f4 | b8 ( a ) g4 f |  es d c  |  
        f2. | b4 f2 | g d4 | es2 es4 | b'2 b4 a2 f4 | b8 ( a ) g4 f |
        es () d c | f2. | f4 f2 | d2 g4 | c,4 f2 | b, 2 b'4 | as2 as4 | 
        g2 f4 | g2 g,4 | c ( c' ) b | a4 b2 | g2 f4 es2 e4 | f2 f8 () es |
        d4 () es c | f2 d4 | es f f, | b2. |
	}
text = \lyrics {
Fair- est Isle, all isles ex- cel- ling, Seat of pleas- sure and of 
love, Ve- nus here will choose her dwell- ing And for- sake her
Cy- prian grove. Cu- pid from his fa- v'rite na- tion Care and 
en- vy will re move; Jea- lou- sy that pois- nous pass- ion, 
And des- pair that dies for love.
}

secondverse = \lyrics { 
 Gen-   tle  mur- murs sweet com- plai- ning, Sighs that blow the fire of 
 love. Soft re- pul- ses, kind dis- dain- ing, Shall be all the 
pains you prove. Ev' ry swain shall pay his du- ty Grate- ful 
e- v'ry nymph shall prove; And as these ex- cel in beau- ty, 
Those shall be re- nowned for love. 
}

sopranoTotal = \simultaneous {
              \addlyrics
	      \context Staff = soprano { 
                \property Staff.instrument = "S"
	      	\property Staff.midiInstrument = "voice oohs"
		\clef "violin"
		\property Staff.automaticMelismata = ##t
				\notes  \context Voice=soprano < 
						\global
						\sopranoMelody
						>
					}
		     \context Lyrics = one  < 
                        \context LyricsVoice = "soprano-one" {
                          \property  LyricsVoice.stanza = "1."   
                          \text }

                        \context LyricsVoice = "soprano-two" {
                          \property  LyricsVoice . stanza = "2."   
                          \secondverse }
                     >
	      }

altoTotal =	      \context Staff = alto { 
                \property Staff.instrument = "A"
	      	\property Staff.midiInstrument = "voice oohs"
		\clef "violin"
				\notes \context Voice=alto< 
						\global
						\altoMelody
						>
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
		     \context Lyrics = "fairestt" < 
                        \context LyricsVoice = "fairestt-one" {
                          \property  LyricsVoice . stanza = "1."   
                          \text }

                        \context LyricsVoice = "fairestt-two" {
                          \property  LyricsVoice . stanza = "2."   
                          \secondverse }
                     >
		 
           }

bassTotal =	      \context Staff = bass { 
                \property Staff.instrument = "B"
	      	\property Staff.midiInstrument = "voice oohs"
		\clef "bass"
				\notes \context Voice=bass< 
						\global
						\bassMelody
						>
					}




        
\score {
     \context ChoirStaff = choir <
       \sopranoTotal
       \altoTotal
       \tenorTotal
       \bassTotal
     >

  \paper { % linewidth = 19.0 \cm 
           }
  \midi  { \tempo 4=120 }
}

% EOF

