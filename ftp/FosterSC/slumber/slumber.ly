\version "2.18.0"
\include "english.ly"
#(set-global-staff-size 16)

\header {
	date = "1862"
	source = "Foster's Melodies: New York: Horace Waters, No. 481 Broadway"
	style = "strophic with chorus"
	instrument = "Voice and Piano"
	license = "Public Domain"
	maintainer = "Stan Sanderson"
	maintainerEmail = "physinfoman@ameritech.net"

	title = "Slumber My Darling"
	poet = "Text by Stephen Collins Foster"
	composer = "Stephen Collins Foster"
	mutopiacomposer = "FosterSC"
	mutopiapoet = "S. C. Foster (1826-1864)"
	mutopiaopus = ""
	mutopiastyle = "Song"

 footer = "Mutopia-2014/03/24-370"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
  }

\paper {
  top-margin = 7\mm
  bottom-margin = 6\mm
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing.basic-distance = #10
  top-system-spacing.basic-distance = #15
  system-system-spacing.basic-distance = #13
%  ragged-bottom = ##t
  scoreTitleMarkup = \markup \null
}
mbreak = {\break}

RH =
	\relative c'' {
	\key ef\major
	\time 6/8
%1
	g8^\markup {\italic "Adagio"} f ef f g f
%2
	ef8 g c bf4.
%3
	ef4 d16 c16	bf8 af g
%4
	g8 f ef f4. \mbreak
%5
	bf8 g' f ef4 d8
%6
	c4 d8 f ef c
%7
	bf8 ef g, f g f
%8
	ef4.~ ef4. \bar ".." \mbreak
%9
	r8 <g ef bf> <g ef bf> r <af f bf,> <af f bf,>
%10
	r8 <g ef bf> <g ef bf> r <g ef bf> <g ef bf>
%11
	r8 <af ef c> <af ef c> r <g ef bf> <g ef bf>
%12
	r8 <f ef a,> <f ef a,> r <f d bf> <f d bf>
%13
	r8 <g ef bf> <g ef bf> r <af f bf,> <af f bf,>
%14
	r8 <g ef bf> <g ef bf> r <g ef bf> <g ef bf>
%15
	r8 <af ef c> <af ef c> r <g ef bf> <g ef bf>
%16
	<ef bf g>8 r <d bf af> <ef bf g>4.
%17
	r8 bf f' af f bf,
%18
	r8 bf ef g ef bf
%19
	r8 bf f' af f bf,
%20
	r8 bf ef g ef bf
%21
	r8 bf f' af f bf,
%22
	r8 bf ef g ef bf
%23
	r8 <f' d bf> <f d bf> r <f ef a,> <f ef a,>
%24
	r8 <d f> <ef g> <f af> <ef g> <d f>
%25
	r8 <g ef bf> <g ef bf> r <af f bf,> <af f bf,>
%26
	r8 <g ef bf> <g ef bf> r <g ef bf> <g ef bf>
%27
	r8 <af ef c> <af ef c> r <g ef bf> <g ef bf>
%28
	r8 <f ef a,> <f ef a,> r <f d bf> <f d bf>
%29
	r8 <g ef bf> <g ef bf> r <af f bf,> <af f bf,>
%30
	r8 <g ef bf> <g ef bf> r <g ef bf> <g ef bf>
%31
	r8 <af ef c> <af ef c> r <g ef bf> <g ef bf>
%32
	<ef bf g>8 r <d bf af> <ef bf g>4.
%33
	bf'8 g' f ef4 d8
%34
	c4 d8 f ef c
%35
	bf8 ef g, f g f
%36
	ef4.~ ef4. \bar ".."

}



LH =
	\relative c {
	\key ef\major
	\time 6/8
%1
	ef8 <g bf> <g bf> d <af' bf> <af bf>
%2
	ef8 <g bf> <g bf> ef <g bf> <g bf>
%3
	ef8 <af c> <af c> ef <g bf> <g bf>
%4
	c,8 <f a c> <f a c> bf, <bf' d> <bf d>
%5
	ef,8 bf' ef g ef bf
%6
	\override Stem.details.beamed-lengths = #'(5.26 3.26 1.5)
	af,8 \clef treble c' ef
	\revert Stem.beamed-lengths
	af ef c
%7
	\clef bass bf,8 <g' bf ef> <g bf ef> bf, <af' bf d> <af bf d>
%8
	ef,8 g bf ef4.
%9
	<ef ef,>4. <d d,>
%10
	<ef ef,>4. <ef ef,>
%11
	<af af,>4. <ef ef,>
%12
	<c c,>4. <bf bf,>
%13
	<ef ef,>4. <d d,>
%14
	<ef ef,>4. <ef ef,>
%15
	<af, af,>4. <bf bf,>
%16
	<bf bf,>8 r8 <bf bf,> <ef ef,>4.
%17
	bf4. d
%18
	ef4. ef,
%19
	d'4. bf
%20
	ef4. ef,
%21
	bf'4. d
%22
	ef4. ef,
%23
	f'4. f,
%24
	<bf bf,>4. r
%25
	<ef ef,>4. <d d,>
%26
	<ef ef,>4. <ef ef,>
%27
	<af af,>4. <ef ef,>
%28
	<c c,>4. <bf bf,>
%29
	<ef ef,>4. <d d,>
%30
	<ef ef,>4. <ef ef,>
%31
	<af, af,>4. <bf bf,>
%32
	<bf bf,>8 r8 <bf bf,> <ef ef,>4.
%33
	ef,8 bf' ef g ef bf
%34
	\override Stem.details.beamed-lengths = #'(5.26 3.26 1.5)
	af8 \clef treble c' ef
	\revert Stem.beamed-lengths
	af ef c
%35
	\clef bass bf,8 <g' bf ef> <g bf ef> bf, <af' bf d> <af bf d>
%36
	ef,8 g bf ef4.

	}


MEL =
	\relative c'' {
	\key ef\major
	\time 6/8
	\autoBeamOff
%1
	R2.*8
%	s2. s2. s2. s2. s2. s2. s2. s2.
%9
	g8 f ef f g f
%10
	ef8 g c bf4.
%11
	ef8 d c bf af g
%12
	g8 f ef f4.
%13
	g8 f ef f 4 g16 f16
%14
	ef8 g c bf4.
%15
	c8 d ef ef ef, f
%16
	g8 r f16 f ef4.
%17
	bf'4. f8 bf af
%18
	g4 bf8 ef4.
%19
	f,4 f8 f bf af
%20
	g4.~ g8 r4
%21
	bf4. f8 bf af
%22
	g8 bf4 ef4.
%23
	d4 d8 c d c
%24
	bf2.
%25
	g8 f ef f g f
%26
	ef g c bf4 r16 bf
%27
	ef8 d c bf4 af16 g
%28
	g8 f ef f4.
%29
	g8 f ef f g f
%30
	ef8 g c bf4 r16 bf
%31
	c4 d16 ef ef8 ef, f
%32
	g8. af16 f8 ef4.
%33
	s2.
%34
	s2.
%35
	s2.
%36
	s2.

	}


VerOne = \context Lyrics = VerOne \lyricmode {
	\time 6/8
%    \override LyricText.font-series = #'bold
%    \override LyricText.font-size = #+1
	\skip 2.  \skip 2. \skip 2. \skip 2. \skip 2. \skip 2. \skip 2. \skip 2.
	Slum8 -- ber, my dar -- ling, thy moth -- er is near,4.
	Guard8 -- ing thy dreams from all ter -- ror and fear,4.
	Sun8 -- light has pass'd4 and16 the16 twi8 -- light has gone,4.
	Slum8 -- ber, my dar -- ling, the night's4 com16 -- ing on.4.
	Sweet4. vis8 -- ions at -- tend4 thy8 sleep,4.
	Fond4 -- est,8 dear -- est to me,2.
	While4. oth8 -- ers their rev -- els4 keep,4.
	I4 will8 watch o -- ver thee.2.
	Slum8 -- ber, my dar -- ling, the birds are at rest,4
	The8 wan8 -- der -- ing dews4 by16 the16 flow'rs8 are car -- essed,4.
	Slum8 -- ber, my dar -- ling, I'll wrap thee up warm,4
	And8 pray4 that16 the an8 -- gels will shield8. thee16 from8 harm.4.
}

VerTwo = \context Lyrics = VerTwo \lyricmode {
	\time 6/8
%    \override LyricText.font-series = #'bold
%    \override LyricText.font-size = #+1
	\skip 2.  \skip 2. \skip 2. \skip 2. \skip 2. \skip 2. \skip 2. \skip 2.
	Slumb8 -- er, my dar -- ling, till morn's blush -- ing ray4.
	Brings8 to the world the glad tid -- ings of day;4.
	Fill8 the dark void4 with16 thy16 dream8 -- y de -- light--4.
	Slumb8 -- er, thy moth -- er will guard4 thee16 to -- night,4.
	Thy4. pil8 -- low shall sa4 -- cred8 be4.
	From4 all8 out -- ward a -- larms;2.
	Thou,4. thou8 are the world to4 me4.
	In4 thine8 in -- no -- cent charms.2.
	Slum8 -- ber, my dar -- ling, the birds are at rest,4
	The8 wan8 -- der -- ing dews4 by16 the16 flow'rs8 are car -- essed,4.
	Slum8 -- ber, my dar -- ling, I'll wrap thee up warm,4
	And8 pray4 that16 the an8 -- gels will shield8. thee16 from8 harm.4.
}


\score {
  <<
	\new Staff \with {
      midiInstrument = "violin"
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
    \MEL
    \new Lyrics { \VerOne }
    \new Lyrics { \VerTwo }
	\new PianoStaff <<
      \set PianoStaff.midiInstrument = "acoustic grand"
      \new Staff = "up" <<
		\clef treble
        \new Voice = VoiceI \RH
      >>
      \new Staff = "down" <<
		\clef bass
        \new Voice = VoiceI \LH
      >>
    >>
  >>
  \layout {
    \context {
      \Lyrics
      \override VerticalAxisGroup.staff-affinity = ##f
      \override VerticalAxisGroup.staff-staff-spacing =
      #'((basic-distance . 0)
        (minimum-distance . 1)
        (padding . 3))
    }
  }
  \midi {
    \tempo 4. = 32
  }
}
