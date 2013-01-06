#(set-global-staff-size 16)

\header {
 mutopiatitle = "O How Amiable Are Thy Dwellings"
 mutopiacomposer = "WeelkesT"
 mutopiainstrument = "Voice (SATB)"
 mutopiapoet = "Psalm 84, vv. 1, 2 and 13"
 mutopiasource = "Unknown"
 mutopiastyle = "Hymn"
 style = "Classical"
 copyright = "Creative Commons Attribution 3.0"
 maintainer = "Robert de Vries"
 maintainerEmail = "rhdv@xs4all.nl"

 title = "O How Amiable Are Thy Dwellings"
 composer = "Thomas Weelkes"
 piece = "Psalm 84, vv. 1, 2 and 13."

%  footer = "VVE 2002"
%  tagline = "VAK Vokaal Ensemble 2002"

 footer = "Mutopia-2013/01/06-170"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } } }
}

\version "2.16.1"


sopraan = \relative c'' {
\clef "violin"
\key es \major
%1
r1 | r1 | r2 bes2 ~ | bes4 bes4 c4. c8 | 
%5
d4. c8 bes4 d4 | es2 bes2 ~ | bes2 r2 | r2 bes2 ~ | bes4 bes4 c4. c8 |
%10
d8 es8 f2 e4 | f4. c8 d4 c4 | bes1 | r4 c4 d4. c8 | bes4 bes4 es4. d8 |
%15
c4 c4 f4. es8 | d4 c4. bes8 bes4 ~ | bes4 a4 bes2 | bes4. c8 ( d8) es8 ( c4) | bes2 r2 |
%20
r1 | r1 | bes2 c4 es4 ~ | es8 es8 d4 c2 | bes2 r2 | 
%25
r2 r4 as4 | c4 es4. es8 d4 | c4 c4 d4 f4 ~ | f8 f8 es4 d4 c4 | es8 es8 d4 c8 c8 bes4 | 
%30
as4  g8[ as8] bes4 bes4 ~ | bes4 a4 bes4 f4 | bes4 bes8 as8 g4 g4 | c4 c8 bes8 a8 g8 ( a4) | bes2. bes4 | 
%35
bes4. bes8 bes2 | bes4 es4 es8 d8 c4 | c4 f4 f8 es8 d8 c8 ( |  bes2) es4 as,8 as8 | c4 c4 c2 | 
%40
r4 c2 c4 | f2 es2 | d2 r2 | f,4. g8 a8 bes8 c4 ~ | c8 es8 d8 d8 c4 bes4 ~ | 
%45
bes4 a4 bes2 | r4 bes4. c8 d8 es8 | f2 f2 | f4. f8 f2 | c4 c4 d2 | 
%50
r2 r4 f4 ~ |  f8[ es8] d4 c4 es4 | d4 c4 bes4 des4 | c2 r2 | r2 r4 es4 ~ |
%55
 es8[ d8 c8 f8] ~  f8[ es8 d8 c8] | d4 es4 bes2 ~ | bes2 bes2 ^\fermata |
}

altoone = \relative c'' {
\clef "violin"
\key es \major
%1
r1 | r1 | r1 | es,2. es4 |
%5
f4. f8 g8 as8 bes4 | as4 g4 f4 es8 f8 | g4 f4 es4. c8 | g'4 f4. es8 ( d4) | g4 f8 g8 as4. as8 |
%10
g4 d4 es8 f8 g4 | a2 r4 as4 | g2. d4 | f2. f4 | g4. f8 es4 es4 |
%15
 f4 c4 d8 bes8 ( a4) | bes4 f4 f2 ~ | f4 c'4 bes4 f'4 | g4 bes4. bes8 as4 | g4 f8 es8 ( d4) c4 | 
%20
 bes8[ c8 d8 es8] d4 c4 | es4 d8 d8 es2 | es4 bes4 es4 es4 | g4 bes4. bes8 as4 | g2 f2 |
%25
 bes,2 f'2 | r4 es4 g4 bes4 ~ | bes8 bes8 as4 g4 f4 | d4 es4 f2 | bes,8 c8 d4 es4. d8 |
%30
 c2 f2 | f4. es8 d2 ~ | d2 bes4 es4 | es8 d8 c4 c4 f4 | f8 es8 d8 c8 d4 es4 | 
%35
 es4 d4 es2 ~ | es2 es4 as4 | as8 g8 f4 f4 bes4 | bes8 as8 g8 f8 es4 c4 | c4. c8 c2 |
%40
 r4 f2 c4 | d2 es4. f8 ( |  g4) f4 f2 | d2 c4 f,4 ~ | f8 g8 a8 bes8 c8 es8 d8 d8 | 
%45
c2 d4 bes4 | es2 bes4. c8 | d8 es8 f8 f4 g8 as8 bes8 | c4 a4 a8 a8 bes4 | bes4 a4 bes4 bes4 ~ | 
%50
 bes8[ as8] g4 f4 d4 ~ |  d8[ c8 g'8 f8] es2 | r4 as4. g8 f4 | e8 f4 e8 f4. es8 |  d8[ es8] f4  g8[ f8 es8 d8] |
%55
 c8[ bes8] c4  d8[ es8 f8 g8] | f4 g2 f4 | es2 d2 ^\fermata |
}

altotwo = \relative c'' {
\clef "violin"
\key es \major
%1
 r1 | r2 f,2 ~ | f4 f4 g4. f8 | g8 as8 bes2 a4 |
%5
 bes4. as8 g4 f4 | es2 d4 g,4 ~ | g8 as8 bes2 a4 | bes4 bes4 g'4 f4 | es4 bes4 es4 f4 | 
%10
 d4 bes'4 as4 g4 | f4. g8 a4 f4 | bes,2 es4 d4 | c2 r2 | r2 r4 g'4 | 
%15
 a4. g8 f4 c4 | d8 bes8 ( c4) f2 | f2 d2 ~ | d2 f4. c8 ( |  es4) d4 f2 |
%20
 g4 bes4. bes8 as4 | g4 f as g | g f es c | bes8 c d es f2 | bes,2 r4 c4 |
%25
 g'4 bes4. bes8 as4 | g2. f4 | f2 d4 d | g bes4. bes8 as4 | g4 f4 as8 as g4 |
%30
 f8 f es4 d8 d d4 | c4 c bes2 ~ | bes2 r4 bes4 | es4 es8 d c4 c | f f8 es d c bes4 ~ | 
%35
 bes bes bes bes | g2 r4 es'4 | as4 as8 g f4 f | bes bes8 as g ( f) f4 ~ | f e f2 |
%40
 r4 as2 g4 | f2 g4 ( c,) | d bes4. c8 d es | f4 f,4. g8 a bes | c4 d f8 c f4 | 
%45
 f4. f8 f4 es8 f | g as bes4 f f | f4. g8 as bes c4 | f, f4. es8 d4 | c f f2 |
%50
 d4 es d f | r4 bes4. as8 g4 | f4 c4  d8[ es] f4 | c2 r4 f4 ~ |  f8[ es] d4 es g |
%55
 f2 g4  f8[ es] |  d[ c bes as]  g[ as] bes4 ~ | bes2 bes ^\fermata |
}

tenor = \relative c' {
\clef "violin_8"
\key es \major
%1
bes2. bes4 | c4. c8 d4. c8 | bes4 d4 es2 ~ | es4 d4 c2 | 
%5
bes2. f4 | c'2 f,4 bes4 ~ | bes4 bes4 c4. c8 | d4. c8 bes4 bes4 | es4 d4 c4 f,4 |
%10
bes2 c2 ~ | c4 c4 f4. c8 | es4 d4. c8 bes4 | f2 bes4 d4 | es4. d8 c2 ~ |
%15
c4 a4 bes4 c4 | f4. es8 ( d2) | c4 f,4 f2 | r2 f2 | g4 bes4. bes8 as4 |
%20
g4 g4 f2 | bes4. f8 c'4. c8 | bes4 bes2 a4 | bes2 r2 | r4 bes4 d4 f4 ~ | 
%25
f8 f8 es4 d4 c4 | es4 bes4. c8 d8 bes8 | c4 c8 c8 bes4 bes4 | bes2 r4 f4 | g8 as8 ( bes4) c4 g4 |
%30
 as8[ bes8] c4 f,4 f4 ~ | f4 f4 f2 | f4 bes4 bes8 as8 g4 | g4 c4 c8 bes8 a8 g8 | f2. g4 |
%35
f4. f8 g4 bes4 | es4 es8 d8 c4 c4 | f4 f8 es8 d8 c8 bes4 ~ | bes4 bes2 as 4 | g2 a2 | 
%40
r4 c2 c4 ~ | c4 bes2 a4 | bes2 r4 f4 ~ | f8 g8 a8 bes8 c4 c4 | f4 f,4 a4 bes4 |
%45
c2 bes2 | bes4. c8 d8 es8 f4 | d2 c2 | a4 c2 f4 ~ | f4 c4 bes2 |
%50
f4 c'4 f,4. g8 | a4 bes4 c4 c4 ~ |  c8[ bes8] a4 bes4 bes4 ~ |  bes8[ as8] g4 f2 | r4 bes4. as8 g4 | 
%55
a8 bes4 a8  bes8[ c8 d8 es8] | f4 bes,4 bes4. as8 |  g8[ f8] g4 f2 ^\fermata |
}

bas =  {
\clef "bass"
\key es \major
%1
r1 | r1 | r1 | r1 |
%5
bes,2. bes,4 | c4. c8 d8 d8 es4 ~ | es4 d4 c2 | bes,1 | r1 |
%10
r1 | f2. f4 | g4. f8 g8 as8 bes4 ~ | bes4 a4 bes2 | es2 r4 c4 |
%15
f4. es8 d4 c4 | bes,4 a,4 bes,2 | f2 bes,2 ~ | bes,2 r2 | r1 |
%20
r1 | bes,2 c4 es4 ~ | es8 es8 d4 c2 | r2 f2 | g4 bes4. bes8 as4 | 
%25
g4 g4 f4. f8 | es2 bes,2 | f2 bes,2 | g2 f2 | es4 bes,4 es2 |
%30
f4 c4 d4. es8 | f2 bes,2 ~ | bes,4 bes,4 es4 es8 d8 | c4 c4 f4 f8 es8 | d8 c8 bes,2 es4 |
%35
bes,4. bes,8 es2 ~ | es4 es4 as4 as8 g8 | f4 f4 bes4 bes8 as8 | g8 f8 es2 f4 |c4. c8 f2 |
%40
r4 f2 es4 | d2 c2 | bes,2 bes,4. c8 | d8 es8 f2 f4 | f2 f4 bes,4 | 
%45
f4. f8 bes,4 es4 ~ | es8 f8 g8 as8 bes4 bes,4 ~ | bes,8 c8 d8 es8 f2 ~ | f4 f4 f4 bes,8 bes,8 | f4 f4 bes,4 bes,4 ~ |
%50
bes,4 c4 d4 bes,4 | f4 g4 c2 | f2 bes,2 | c4. bes,8 a,2 | bes,2 es2 |
%55
f2 bes,4 bes4 ~ |  bes8[ as8 g8 f8] es4 d4 | es2 bes,2 ^\fermata \bar "|."
}

soptext = \lyricmode {
_1 _1 _2 O2. __ how4 a4. -- mi8 
%5
-- a4. -- ble8 are4 Thy4 dwel2 -- lings,1 __
_1 O2. __ how4 a4. -- mi8 
%10
-- a8 -- ble8 are2 Thy4 dwel4. -- lings,8 Thy4 dwel4 -- lings,1
_4 Thou4 Lord4. of8 hosts,4 Thou4 Lord4. of8 
%15
hosts,4 Thou4 Lord4. of8 | hosts,4
Thou2 __ Lord2 __ of4 hosts,2 | Thou4. Lord8*2 __ of8*3 __ | hosts.2 _2
%20
_1 | _1 | My2 soul4 hath4. __ a8 de4*3 -- | sire2 _2 | 
%25
_2 _4 my4 | soul4 hath4. a8 de4 -- | sire,4 my4 soul4 hath4. __ a8 de4 -- sire4
and4 | long8 -- ing to4 en8 -- ter in4 -- | 
%30
to the __ courts of2 __ the4 Lord. My | heart and8 my flesh4 re -- | joice in8 the liv -- ing8*3 __ | God,2. the4 | 
%35
liv4. -- ing8 God,2 | my4 heart and8 my flesh4 | re -- joice in8 the liv -- ing8*5 __ God,4 in8 the | liv4 -- ing God.2 | 
%40
_4 O2 Lord4 | God2 of | hosts, _2 | bles4. -- sed8 is the man4. __ that8 put -- teth his4 trust2 __
%45
in4 Thee,2 | _4 bles4. -- sed8 is the | man2 that | put4. -- teth8 his2 | trust4 in Thee.2 |
%50
_2. A4*9 -- | men,2 _2 | _2. A4*11 -- men.2 |
}

altoonetext = \lyricmode {
%1
_1 | _1 | _1 | O2. how4 |
%5
a4. -- mi8 -- a8 -- ble8 are4 | Thy4 dwel4 -- lings,4 O8 how8 | a4 -- mi4 -- a4. -- ble8 | are4 Thy4. dwel4. -- | lings,4 O8 how8 a4. -- mi8 -- |
%10
a4 -- ble4 are8 Thy8 dwel4 -- | lings,2 _4 are | Thy2. dwel4 -- | lings,2. Thou4 | Lord4. of8 hosts,4 Thou | 
%15
Lord of hosts,8 Thou4. __ | Lord4 of hosts,2. __ of4 hosts. My | soul hath4. a8 de4 -- | sire and8 long4. -- ing4 |
%20
to2 __ en4 -- ter | in -- to8 the courts2 | of4 the lord, my | soul hath4. a8 de4 -- | sire2 and | 
%25
long -- ing | _4 my soul hath4. __ a8 de4 -- sire and | long -- ing to2 | en8 -- ter in4 -- to4. the8*5 __ 
%30
courts2 | of4. the8 Lord.1 __ My4 heart | and8 my flesh4 re -- joice | in8 the liv -- ing God,4 the | 
%35
liv -- ing God,1 __ my4 heart | and8 my flesh4 re -- joice | in8 the liv- ing God,4 the | liv4. -- ing8 God.2 |
%40
_4 O2 Lord4 | God2 of4. hosts,8*3 __ Lord4 God2 | of hosts,4 bles4. -- sed8 is the man that put -- teth | 
%45
his2 trust4 in | Thee,2 bles4. -- sed8 | is the man, bles4 -- sed8 is the | man4 that put8 -- teth his4 trust in Thee. A4*7 --
%50
men,2 | _4 A4*5 -- men,4. A8*29 -- men.2 |
}

altotwotext = \lyricmode {
_1 | _2 O2. __ how4 a4. -- mi8 -- | a8 -- ble8 are2 Thy4 |
%5
dwel4. -- lings,8 O4 how4 | a2 -- mi4 -- a4. -- ble8 are2 Thy4 | dwel4 -- lings,4 are4 Thy | dwel -- lings, O how |
%10
a -- mi -- a -- ble | are4. Thy8 dwel4 -- lings, Thy2 dwel2 -- | lings, _2 | _2 _4 Thou |
%15
Lord4. of8 hosts,4 Thou | Lord8 of8*7 __ | hosts,2 Thou1 __ Lord4. of4. __ hosts.4 My2 |
%20
soul4 hath4. a8 de4 -- | sire and long -- ing | to en -- ter in -- | to8 the courts of the2 | Lord, _4 my | 
%25
soul hath4. a8 de4 -- | sire2. and4 | long2 -- ing,4 my | soul hath4. a8 de4 -- | sire to en8 -- ter in4 -- |
%30
to8 the courts4 of8 the Lord4 | of the Lord.1 __ _4 My | heart and8 my flesh4 re -- | joice in8 the liv -- ing God2 __
%35
the4 liv -- ing | God,2 _4 my | heart and8 my flesh4 re -- | joice in8 the liv2. -- ing4 God.2 |
%40
_4 O2 Lord4 | God2 of __ | hosts,4 bles4. -- sed8 is the | man,4 bles4. -- sed8 is the | man4 that put8 -- teth his4 | 
%45
trust4. in8 Thee,4 bles8 -- sed | is the man,4 the man, | bles4. -- sed8 is the man4 | that put4. -- teth8 his4 | trust in Thee.2 | 
%50
A4*3 -- men,4 | _4 A4*7 -- | men,2 _4 A4*5 -- | men,2 A1*2 -- men.2 |
}

tentext = \lyricmode {
%1
O2. how4 a4. -- mi8 -- a4. -- ble8 are4 Thy4 dwel1. -- |
%5
lings,2. Thy4 | dwel2 -- lings,4 O2 __ how4 a4. -- mi8 -- | a4. -- ble8 are4 Thy4 | are4 Thy4 dwel2 -- | 
%10
lings,2 O2. __ how4 a4. -- mi8 -- | a4 -- ble4. are8 Thy4 | dwel2 -- lings,4 Thou4 | Lord4. of8 hosts,2. __ 
%15
Thou4 Lord4 of4 | hosts,4. Thou8*5 __ | Lord4 of hosts.2 | _2 My2 | soul4 hath4. a8 de4 -- | 
%20
sire and long2 -- | ing4. to8 en4. -- ter8 | in4 -- to2 the4 | courts,2 _2 | _4 my4 soul hath4. __
%25
a8 de4 -- sire to | en -- ter4. in8 -- to the | courts4 of8 the Lord,4 the | Lord,2 _4 in4 -- | to8 the4. __ courts4 of |
%30
the2 __ Lord,4 of2 __ the4 Lord.2 | My4 heart and8 my flesh4 | re -- joice in8 the liv -- ing | God,2. the4 | 
%35
liv4. -- ing8 God,4 my | heart and8 my flesh4 re -- | joice in8 the liv -- ing God,2 __ the liv4 -- | ing2 God. |
%40
_4 O2 Lord __ God of4 | hosts,2 _4 bles4. -- sed8 is the man4 that | put -- teth his trust |
%45
in2 Thee, | bles4. -- sed8 is the man4 | that2 put -- | teth4 his2 trust2 __ in4 Thee.2 |
%50
A1. -- men,4 A2. -- men,4 A2. -- men,2 | _4 A1*2 -- men,4 A1 -- men.2 |
}

bastext = \lyricmode {
%1
_1 | _1 | _1 | _1 | 
%5
O2. how4 | a4. -- mi8 -- a8 -- ble8 are2 __ Thy4 dwel2 -- | lings,1 | _1 |
%10
_1 | O2. how4 | a4. -- mi8 -- a8 -- ble are2 __ Thy4 dwel2 -- | lings,2 _4 Thou4 |
%15
Lord4. of8 hosts,4 Thou4 | Lord4 of4 hosts,2 | of2 hosts.1 __ _2 | _1 |
%20
_1 | My2 soul4 hath4. __ a8 de4 -- sire,2 | _2 my2 | soul4 hath4. a8 de4 -- |
%25
sire4 and4 long4. -- ing8 | to2 en2 -- | ter2 in2 -- | to2 the2 | courts4 of4 the2 |
%30
Lord,4 of4 the1 __ Lord2. __ My4 heart4 and8 my8 | flesh4 re4 -- joice4 in8 the8 | liv8 -- ing8 God,2 the4 |
%35
liv4. -- ing8 God,2. __ my4 heart4 and8 my8 | flesh4 re4 -- joice4 in8 the8 | liv8 -- ing8 God,2 the4 liv4. -- ing8 God,2 |
%40
_4 O2 Lord4 | God2 of2 | hosts,2 bles4. -- sed8 | is8 the8 man2 that4 | put2 -- teth4 his4 | 
%45
trust4. in8 Thee,4 bles4. -- sed8 is8 the8 man,4 bles4. -- sed8 is8 the8 man2. __ that4 put4 -- teth8 his8 | trust4 in4 Thee.4 
%50
A1.. -- men,2 | A1*3 -- | men,2 A1*2 -- men.2 |
}

\score {
    \context ChoirStaff = "coro" <<
	\override Score.BarNumber   #'padding = #3
	\context Staff = "soprano" <<
	    \set Staff.autoBeaming = ##f
	     \unset Staff.melismaBusyProperties 
	    \set Staff.midiInstrument = #"flute"
	    \set Staff.instrumentName = #"Soprano"
	    \sopraan
	    \context Lyrics = "soprano" \soptext
	>>

	\context Staff = "altoone" <<
	    \set Staff.autoBeaming = ##f
	     \unset Staff.melismaBusyProperties 
	    \set Staff.midiInstrument = #"flute"
	    \set Staff.instrumentName = #"Alto 1"
	    \altoone
	    \context Lyrics = "altoone" \altoonetext
	>>

	\context Staff = "altotwo" <<
	    \set Staff.autoBeaming = ##f
	     \unset Staff.melismaBusyProperties 
	    \set Staff.midiInstrument = #"flute"
	    \set Staff.instrumentName = #"Alto 2"
	    \altotwo
	    \context Lyrics = "altotwo" \altotwotext
	>>

	\context Staff = "tenoren" <<
	    \set Staff.autoBeaming = ##f
	     \unset Staff.melismaBusyProperties 
	    \set Staff.midiInstrument = #"flute"
	    \set Staff.instrumentName = #"Tenor"
	    \tenor
	    \context Lyrics = "tenoren" \tentext
	>>

	\context Staff = "bassen" <<

	    \set Staff.autoBeaming = ##f
	     \unset Staff.melismaBusyProperties 
	    \set Staff.midiInstrument = #"flute"
	    \set Staff.instrumentName = #"Bass"
	    \bas
	    \context Lyrics = "bassen" \bastext
	>>
    >>
    
  \midi {
    \tempo 2 = 55
    }


    \layout { }
}
