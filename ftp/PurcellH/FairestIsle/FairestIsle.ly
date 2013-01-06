\header {
 mutopiatitle = "Fairest Isle"
 mutopiacomposer = "PurcellH"
 mutopiaarranger = "S. W."
 mutopiapoet = "John Dryden (1631-1700)"
 mutopiainstrument = "Voice (SATB)"
 date = "1827"
 source = "S.W. (ed.) handwritten"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Sebastian Brosig"
 maintainerEmail = "Sebastian.Brosig@gmx.net"

  title="Fairest Isle (King Arthur)"
  composer="Henry Purcell (1658-1695)"
  poet="John Dryden (1631-1700)"
  arranger = "S.W."

 footer = "Mutopia-2013/01/06-268"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\version "2.16.1"
\include "deutsch.ly"
% #(set-global-staff-size 20)

global =  {
   \time 3/4
   \key b \major
   s1*18 \bar "|."
}

sopranoMelody =  \relative c''
	{   
            d4 f2 |  b,2 f'4 |  g8 ( f8 g8  as8) g4 |  f2 d4 |  d8 ( es  f4) c |  d8 ( c  b4) a |  g8 ( a   b4) c | 
            a2. | d4 f2 | b,2 f'4 | g8 ( f g  as) g4 | f2 d4 | d8 ( es  f4) c4 |
            d8 ( c  b4) a4 | g8 ( a  b4)c | a2. |  c4 a2 | d2 b4 | es4 c2 | d2 d4 | d8 ( es f  g) f4 | 
            h,2 c4 | c8 ( d  es4) c | c2. | f4 d2 | b2 d4 | es8 ( d c  d) c4 | c ( f,) f |
            b8 ( a  g4) es' | es8 ( d  c4) f | f8 ( es  d4)  c8 ( b)  | b2. |  \bar "|."
	}

altoMelody =  \relative c'' 
        { 
          b4 a2 |  g2 b4 |  b2 b4 |  b8 ( c8) d2 |  c2 f,4  | f4. ( e8) f4 |  g4 ( f4) e4 | 
          f2. |b2 a4 ~ | a g f | b2 b4 | b8 ( a b  c) b4 | f2 f4 | d4. ( es8) f4 | 
          b,4. ( f'8) e4 | f2. |  f4 f2 | f2 g4 | g4 f2 | f2 f4 | f2 f4 | 
          d8 ( es f  g) as4 | g2 f4 es2. | f4 f2 | g2 a4 | g2 g4 | f2 f4 |
          f4 ( es) g | a2 b8 ( a) | g4 f es | d2. |
	}
tenorMelody =  \relative f' {
	 f4 f2  | d2 d8 ( c8) |  b2 b8 ( c) |  d4. ( es8) f4 |  f2  a,4 |  b2 c8 ( d) |  es4 ( f) g |
         c,2. | d4 c2 | b2 b4 | b2 b8 ( c) | d4. ( es8) f4 | c2 a4 | b2 c8( d) |
         es4 ( f) c | c2. | a4 c2 | b2 b4 | b4 a2 | b2 b4 | c2 h8 ( c) | 
         d2 f4 | es4. ( c8) d4 | c2. | c4 b2 | es4 ( d) a8 ( b) | c2 b4 | a2 a4 | 
         b2 c4 | c2 d4  | b2 a4 | b2. |
}
bassMelody =  \relative c' {
        b4 f2 | g2 d4 | es2 es4 |  b'2 b4 |  a2 f4 | b8 ( a  g4) f |  es d c  |  
        f2. | b4 f2 | g d4 | es2 es4 | b'2 b4 a2 f4 | b8 ( a  g4) f |
        es ( d) c | f2. | f4 f2 | d2 g4 | c,4 f2 | b, 2 b'4 | as2 as4 | 
        g2 f4 | g2 g,4 | c ( c'  b) | a4 b2 | g2 f4 es2 e4 | f2 f8 ( es) |
        d4 ( es) c | f2 d4 | es f f, | b2. |
	}

text = \lyricmode {
Fair -- est Isle, all isles ex -- cel -- ling, Seat of pleas -- sure and of 
love, Ve -- nus here will choose her dwell -- ing And for -- sake her
Cy -- prian grove. Cu -- pid from his fa -- v'rite na- tion Care and 
en -- vy will re move; Jea -- lou -- sy that pois -- nous pass -- ion, 
And des -- pair that dies for love.
}

secondverse = \lyricmode { 
Gen -- tle mur -- murs sweet com -- plai -- ning, Sighs that blow the fire of 
love. Soft re -- pul -- ses, kind dis -- dain -- ing, Shall be all the 
pains you prove. Ev' ry swain shall pay his du -- ty Grate -- ful 
e -- v'ry nymph shall prove; And as these ex -- cel in beau -- ty, 
Those shall be re -- nowned for love. 
}

sopranoTotal = <<
	\new Staff = "soprano" { 
		\set Staff.instrumentName = "S"
	 	\set Staff.midiInstrument = "voice oohs"
		\clef "violin"
		\new Voice = "soprano" << 
			\global
			\sopranoMelody
		>>
	}
	\new Lyrics \lyricsto "soprano" \text
	\new Lyrics \lyricsto "soprano" \secondverse
>>

altoTotal = \new Staff = "alto" { 
	\set Staff.instrumentName = "A"
	\set Staff.midiInstrument = "voice oohs"
	\clef "violin"
	\new Voice=alto<< 
		\global
		\altoMelody
		>>
	}

tenorTotal = <<
	\new Staff = "tenor" { 
		\set Staff.instrumentName = "T"
		\set Staff.midiInstrument = "voice oohs"
		\clef "violin_8"
		\new Voice=tenor<< 
			\global
			\tenorMelody
		>>
	}
	\new Lyrics \lyricsto "tenor" \text
	\new Lyrics \lyricsto "tenor" \secondverse
>>

bassTotal = \context Staff = "bass" { 
	\set Staff.instrumentName = "B"
	\set Staff.midiInstrument = "voice oohs"
	\clef "bass"
	\new Voice=bass<< 
		\global
		\bassMelody
	>>
}
        
\score {
     \new ChoirStaff = "choir" <<
       \sopranoTotal
       \altoTotal
       \tenorTotal
       \bassTotal
     >>

  \layout { % line-width = 19.0 \cm 
           }
  
  \midi {
    \tempo 4 = 120
    }


}

% EOF

