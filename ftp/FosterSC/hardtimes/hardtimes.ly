\include "english.ly"
\include "paper16.ly"
\version "2.0.1"

\header {
	date = "1854"
	source = "Foster's Melodies: New York: Horace Waters, No.481 Broadway"
	style = "strophic with chorus"
	instrument = "Voice and Piano"
	copyright = "Public Domain"
	maintainer = "Stan Sanderson"
	maintainerEmail = "physinfoman@ameritech.net"
	lastupdated = "11/14/2003"
	title = "Hard Times Come Again No More"
	poet = "Text by Stephen Collins Foster"
	composer = "Stephen Collins Foster"
	opus = "1826-1864"
	
	tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
	footer = "Mutopia-2003/12/16-371"
	} 

MEL = \notes \relative c' { 
		\key ef\major \time 4/4 \clef treble
		\autoBeamOff
%1-4
	\partial 4 s4 s1 s1 s1 \partial 4*3 s2.
%5-8
	\partial 4 ef8 f g4 g8 g g bf4 g8 f ef ef f g4 c8. bf16
	bf4 g g8 ef f8. f16 ef2 r4 ef8 f
%9-11
	g4 g8 g g bf4 g8 f ef ef f g4 c\fermata bf g g8 ef f8. f16 ef2 r4
%12-14
	\partial4 g8^\markup { \bold \italic "Refrain" } af bf4 r8 bf bf4 a8 bf 
	c2 bf4 r ef bf c bf 
	 g8 g f8. ef16 f4\fermata ef8 f
%15-18
	g4 g8 g g bf4 g8  f8. ef16 ef8 f g4 c\fermata
            bf g g8 ef f8. 
        f16 
        ef2. r4 \break
}
	
	
% RHB is a crude workaround to get the eighths in the intro	

RHB = \notes \relative c'' { \time 4/4 \clef treble
	\partial 4 s4^\markup { \italic "Moderato" } 
	s1 s1 s1 \partial 4*3 s4 \stemUp g'8[ f] s4
	}

RH = \notes \relative c'' { \key ef\major \time 4/4 \clef treble
%1
	\partial 4 ef,8 f

	g4 g g8 bf4 g8
%2
	f8 ef ef f g4 g8 af
%3
	bf4 bf \acciaccatura f'8 ef8[ d ef f]

	\partial 4*3 g4 <d af> <ef g,> \bar "|."  \break

	\partial 4 r4
%4
	<g, ef bf>8 r <g ef bf> r <g ef bf> r <g ef bf> r
%5
	<af d, bf>8 r <af d, bf> r <g ef bf> r <af ef c> r \break
%6
	<g ef bf> r <g ef bf> r <g ef bf> r <f d bf af> r
%7
	<ef bf g>4 <ef bf g> <ef bf g> r
%8
	<g ef>8 bf, <g' ef> bf, <g' ef> bf, <g' ef> bf, \break
%9
	<af' d,>8 bf, <af' d,> bf,~ <g' ef bf>4 <af ef c>\fermata
%10
	r8 bf, <g' ef> bf, r af <f' d> af,

	\partial 4*3 r8 g[ bf ef] r4 \break

	\partial 4 r4
%11
	<g ef bf>4 r8 <g ef bf> <g ef bf>4 <g ef bf>
%12
	<af ef c>2 <g ef bf>4 r
%13
	<g ef bf>8 r <g ef bf> r <g ef bf> r <g ef bf> r
%14
	<g ef bf>8 r <a f ef> r <bf f d>4\fermata <ef, c>8 <f d>
%15
	<g ef>8 bf, <g' ef> bf, <g' ef> bf, <g' ef> bf,
%16
	<af' d,>8 bf, <af' d,> bf,~ <g' ef bf>4 <af ef c>\fermata
%17
	<g ef bf>4 <g ef bf> <g ef bf> <f d bf af>
%18
	<ef bf g>4 <ef bf g> <ef bf g> r
%19
	#(set-octavation 1) <g' ef'>4 <g bf> <g c> <g bf>
%20
	af8 g f ef c'4 d8 ef
%21
	bf4 g g8[ ef <f d> af,]
%22
	\partial 4*3 <ef' g,>2.#(set-octavation 0)

	}



LH = \notes \relative c { \key ef\major \time 4/4 \clef bass
%1
	\partial 4 r4

	ef8 bf' g bf ef, bf' g bf
%2
	d, bf' f bf ef,4 r4
%3
	ef'4 df c cf

	\partial 4*3 bf4 bf, <ef ef,>

	\partial 4 r4
%4
	<ef ef,>8 r <ef ef,> r <ef ef,> r <ef ef,> r
%5
	<bf bf,>8 r <bf bf,> r <ef ef,> r <af, af,> r
%6
	 <bf bf,>8 r <bf bf,> r <bf bf,> r <bf bf,> r
%7
	<ef ef,>4 <ef ef,> <ef ef,> r
%8
	<ef ef,>2 <ef ef,>
%9
	<bf bf,>2 <ef ef,>4 <af, af,>\fermata
%10
	<bf bf,>2 <bf bf,>

	\partial 4*3 <ef ef,>2 r4 \bar "|."

	\partial 4 r4
%11
	<ef ef,>4 r8 <ef ef,> <ef ef,>4 <ef ef,>
%12
	<ef ef,>2 <ef ef,>4 r
%13
	<ef ef,>8 r <ef ef,> r <ef ef,> r <ef ef,> r
%14
	<ef ef,>8 r <c f,> r <bf bf,>4\fermata r4
%15
	<ef ef,>2 <ef ef,>
%16
	<bf bf,>2 <ef ef,>4 <af, af,>\fermata
%17
	<bf bf,>4 <bf bf,> <bf bf,> <bf bf,>
%18
	<ef ef,>4 <ef ef,> <ef ef,> r \bar "||"
%19
	ef8 bf' ef bf ef, bf' ef bf
%20
	g8 bf ef bf af c f c
%21
	bf8 ef g ef bf4 bf,
%22
	\partial 4*3 ef4 bf ef, \bar ".|." \newpage
	}



VerOne =  \context Lyrics = VerOne \lyrics { 
	\property Lyrics . LyricText \override #'font-series = #'bold
	\property Lyrics . LyricText \override #'font-relative-size = #'+1
	
	\skip 4  \skip 1 \skip 1 \skip 1 \skip 2.
	Let8 us pause4 in8 life's plea -- sures4 and8 count its ma -- ny tears4
	While8. we16 all4 sup4 sor8 -- row with8. the16 poor;2 \skip4
	There's8 a8 song4 that8 will8 lin -- ger4 for8 -- ev -- er in our ears;4
	Oh!4 Hard Times, come8 a -- gain8. no16 more.2 \skip4

	'Tis8 the song,4 \skip 8 the8 sigh4 of8 the wear2 -- y;4 \skip 4
	Hard4 Times, Hard Times, 
	come8 a -- gain8. no16 more.4 Man8 -- y8
	days4 you8 have lin -- gered4 a8
	 -- round8. my16 cab8 -- in door;4 Oh!4
	Hard Times, come8 a -- gain8. 
	no16 
	more.2. \skip 4
	}

	
VerTwo =  \context Lyrics = VerTwo \lyrics { 
	\property Lyrics . LyricText \override #'font-series = #'bold
	\property Lyrics . LyricText \override #'font-relative-size = #'+1
	
	\skip 4  \skip 1 \skip 1 \skip 1 \skip 2.
	While8 we seek4 mirth8 and beau -- ty4 and8 mus -- ic light and gay4
	There8. are16 frail4 forms faint8 -- ing at8. the16 door;2 \skip4
	Though8 their voic4 -- es8 are si -- lent,4 their8 plead -- ing looks will say4
	Oh!4 Hard Times, come8 a -- gain8. no16 more.2. 
	}
	
VerThree =  \context Lyrics = VerThree \lyrics { 
	\property Lyrics . LyricText \override #'font-series = #'bold
	\property Lyrics . LyricText \override #'font-relative-size = #'+1
	
	\skip 4  \skip 1 \skip 1 \skip 1 \skip 2.
	There's8 a pale4 droop8 -- ing maid -- en4 who8 toils her life a -- way4
	With8. a16 worn4 heart_whose bet8 -- ter days8. are16 o'er;2 \skip4
	Though8 her voice4 would8 be mer -- ry,4 'tis8 sigh -- ing all the day4
	Oh!4 Hard Times, come8 a -- gain8. no16 more.2. 
	}

VerFour =  \context Lyrics = VerFour \lyrics { 
	\property Lyrics . LyricText \override #'font-series = #'bold
	\property Lyrics . LyricText \override #'font-relative-size = #'+1
	
	\skip 4  \skip 1 \skip 1 \skip 1 \skip 2.
	'Tis8 a sigh4 that8 is waft -- ed4 a8 -- cross the trou -- bled wave,4
	'Tis8. a16 wail4 that_is heard8 up -- on8. the16 shore,2 \skip4
	'Tis8 a dirge4 that8 is mur -- mured4 a8 -- round the low -- ly grave,4
	Oh!4 Hard Times, come8 a -- gain8. no16 more.2. 
	}

\score { <<

	\context Staff \notes \MEL
	\property Staff.midiInstrument = "violin"
		\new Lyrics { \VerOne }
		\new Lyrics { \VerTwo }
		\new Lyrics { \VerThree }
		\new Lyrics { \VerFour }
	\context PianoStaff <<
		\property PianoStaff.midiInstrument = "acoustic grand"
		\context Staff = "up" <<
		\clef treble
			\context Voice = VoiceI \RH
			\context Voice = VoiceII \RHB
			>>
		\context Staff = "down" <<
		\clef bass
			\context Voice = VoiceI \LH
			>>
		>> 
		>>
	
	\paper { 
		\translator { \RemoveEmptyStaffContext }
		}	
	\midi { \tempo 4 = 72 }
}

% Alternate 4-part Chorus

\include "paper13.ly"


RHC = \notes \relative c'' { \key ef\major \time 4/4 \clef treble
		\partial 4 r4
%11
	<g ef bf>4 r8 <g ef bf> <g ef bf>4 <g ef bf>
%12
	<af ef c>2 <g ef bf>4 r
%13
	<g ef bf>8 r <g ef bf> r <g ef bf> r <g ef bf> r
%14
	<g ef bf>8 r <a f ef> r <bf f d>4\fermata <ef, c>8 <f d>
%15
	<g ef>8 bf, <g' ef> bf, <g' ef> bf, <g' ef> bf,
%16
	<af' d,>8 bf, <af' d,> bf,~ <g' ef bf>4 <af ef c>\fermata
%17
	<g ef bf>4 <g ef bf> <g ef bf> <f d bf af>
%18
	<ef bf g>4 <ef bf g> <ef bf g> r \break
%19
	#(set-octavation 1) <g' ef'>4 <g bf> <g c> <g bf>
%20
	af8 g f ef c'4 d8 ef
%21
	bf4 g g8[ ef <f d> af,]
%22
	\partial 4*3 <ef' g,>2.#(set-octavation 0)

	}

LHC = \notes \relative c { \key ef\major \time 4/4 \clef bass
	\partial 4 r4
%11
	<ef ef,>4 r8 <ef ef,> <ef ef,>4 <ef ef,>
%12
	<ef ef,>2 <ef ef,>4 r
%13
	<ef ef,>8 r <ef ef,> r <ef ef,> r <ef ef,> r
%14
	<ef ef,>8 r <c f,> r <bf bf,>4\fermata r4
%15
	<ef ef,>2 <ef ef,>
%16
	<bf bf,>2 <ef ef,>4 <af, af,>\fermata
%17
	<bf bf,>4 <bf bf,> <bf bf,> <bf bf,>
%18
	<ef ef,>4 <ef ef,> <ef ef,> r \bar "||"
%19
	ef8 bf' ef bf ef, bf' ef bf
%20
	g8 bf ef bf af c f c
%21
	bf8 ef g ef bf4 bf,
%22
	\partial 4*3 ef4 bf ef, \bar ".|."
	}

TEN = \notes \relative c'' { \key ef\major \time 4/4 \clef treble
%1-4
	\property Staff.instrument = #'"Tenor"
	\partial 4 ef8^\markup { \bold \italic { "Alternate Refrain" } } 
	ef ef4 r8 ef ef4 ef8 ef ef2 ef4 r
	 ef ef ef ef bf8 bf a a bf4\fermata g8 af
%5-8
	bf4 bf8 bf bf bf4 bf8 bf bf bf bf bf4 af\fermata g bf bf8 bf af8. af16 g2. r4
	}
	
ISOP = \notes \relative c'' { \key ef\major \time 4/4 \clef treble
%1-4
	\property Staff.instrument = #'"I Soprano"
	\partial 4 g8 af bf4 r8 bf bf4 a8 bf c2 bf4 r
	ef bf c bf g8 g f ef f4\fermata ef8 f
%5-8
	g4 g8 g g bf4 g8 f ef ef f g4 c\fermata bf g g8 ef f8. f16 ef2. r4
	}
	
IISOP = \notes \relative c'' { \key ef\major \time 4/4 \clef treble
%1-4
	\property Staff.instrument = #'"II Soprano"
	\partial 4 ef,8 f g4 r8 g g4 fs8 g af2 g4 r
	g ef af g ef8 ef ef ef d4\fermata ef8 ef
%5-8
	ef4 ef8 ef ef g4 ef8 d c c d ef4 ef\fermata ef ef ef8 ef d8. d16 ef2. r4
	}
	
BASS = \notes \relative c { \key ef\major \time 4/4 \clef bass
%1-4
	\property Staff.instrument = #'"Bass"
	\partial 4 ef8 ef ef4 r8 ef ef4 ef8 ef ef2 ef4 r
	ef4 ef ef ef ef8 ef f f bf,4\fermata ef8 ef
%5-8
	ef4 ef8 ef ef ef4 ef8 bf bf bf bf ef4 af,\fermata bf bf bf8 bf bf8. bf16 ef2. r4
	} 
	
CHOR =  \lyrics { 
	\property Lyrics . LyricText \override #'font-series = #'bold
	\property Lyrics . LyricText \override #'font-relative-size = #'+1
	\partial4
		
	'Tis8 the song,4 \skip 8 the8 sigh4 of8 the wear2 -- y;4 \skip 4
	Hard4 Times, Hard Times, 
	come8 a -- gain no more.4 Man8 -- y8
	days4 you8 have lin -- gered4 a8
	 -- round8 my cab -- in door;4 Oh!4
	Hard Times, come8 a -- gain8. 
	no16 
	more.2. \skip 4
	}

\score { \notes <<
	\context ChoirStaff  <<
		
		\new Staff  { \clef treble \TEN }
		\new Lyrics {  \CHOR }
		
		\new Staff  { \clef treble  \ISOP }
		
		
		\new Staff  { \clef treble \IISOP }
		\new Lyrics {  \CHOR }
		
		\new Staff  { \clef bass \BASS }
		
		
							>>
			
		\context PianoStaff  <<
			\property PianoStaff.midiInstrument = "acoustic grand"
			\context Staff = up << \clef treble \context Voice = voiceOne \RHC >>
				
			\context Staff = down << \clef bass \context Voice = voiceOne \LHC >>
			
						>>
			>>
		
	
		\paper {   }
	
	\midi { \tempo 4 = 72 }
}

