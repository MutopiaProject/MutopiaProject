\version "2.19.46"

myStaffSize = #17.8

#(set-global-staff-size myStaffSize)

\header {
  title = "Fugue 17, A-flat Major"
  subtitle = "BWV 862"
  composer = "J. S. Bach"
  
  mutopiatitle = "Das Wohltemperierte Clavier I, Fuga XVII"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Piano"
  mutopiaopus = "BWV 862"
  source = "Bach-Gesellschaft edition, 1866"
  style = "Baroque"
  license = "Public Domain"
  maintainer = "Andrew Hawryluk"
  maintainerWeb = "http://www.musicbyandrew.ca/"

 footer = "Mutopia-2016/12/23-1375"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}


\include "english.ly"

RightHandOne = \relative c' {
	\key af \major
	\tempo 4=60
	R1*4
	\voiceOne r4 af'8 ef' c af f' df
	ef2. af4
	af g f2~
	f16 bf, c d ef4~ ef8 af df, bf'
	df,4 c bf2
	af2~ af16 af bf c df4~
	df16 bf c ef af g af bf c bf af g f g af c
	bf af g f ef f g bf af g f ef d ef f af
	g f e g f e f g c,8 f~ f g16 e
	f e f g af2 g4~
	g f2 e4
	f4~ f16 ef df c bf af g af bf df c bf
	a c df ef f ef df c bf df gf f ef df c bf
	a4 bf16 c df8~ df c16 df ef4~
	ef16 c df f bf8 f gf ef af ef
	f df16 f gf8 df ef c f c
	df2. c8 f
	d bf ef2 d4
	ef r r2
	r4 af,8 ef' c af gf' ef
	f4 f8 g ef4 ef8 f
	df4 df8 bf' c, df16 bf c8 af'
	bf,4 r16 ef f g af4~ af16 g f af
	g2.~ g16 c, f8~
	f16 ef df f ef2 df4~
	df16 c bf df c8 f df bf gf' ef
	f4 af8 f g4 bf8 g
	af f \once \override Tie.staff-position = #6 df4~ df8 ef c f
	c4 bf~ bf8 af16 g af 8 ef'
	c af f' df ef g, af4~
	af g af2^\fermata \bar "|."
}

RightHandTwo = \relative c' {
	s1*5
	\voiceTwo
	r4 ef8 af g ef c' af
	bf4~ bf16 ef, f g af bf c bf af g f af
	g2 f
	r16 ef f g af2 g4
	af8 g16 f ef df c df ef8 r8 r8
	\voiceThree \change Staff = LH af,8 \change Staff = RH \voiceTwo
	af'8 r8 r4 r2
	R1
	r4 f8 c' af f df' bf
	c d16 e f8 c df bf ef bf
	c af df af bf16 c df c bf af g bf
	af4 r4 r2
	R1
	r4 f8 bf gf ef c' a
	bf4 r16 f gf af bf af gf f ef f gf bf
	af gf f ef df ef f af gf f ef df c df ef gf
	f4 f8 bf g ef~ ef af
	f d r g af16 bf c bf af g f af
	g af bf g ef8 bf' g ef df' bf
	c4 r r c8 ef~
	ef af, bf df~ df g, a c~
	c f, bf2 af4~
	af16 g af bf c4~ c16 df ef c df4~
	df16 c bf df c4~ c16 bf af g af8. af16
	g8 r ef af f df bf' g
	af4 r r r8 <c ef>
	ef df d\rest <d f> f ef d\rest <e g>
	<f c> b,\rest g\rest \voiceThree bf g[ bf] \voiceTwo af[ <af f>]
	af4. g8 <f c>4 r8 <bf ef,>
	<af ef> r r <bf f> <bf ef,> c,\rest c\rest f
	bf,16 c df f ef df c df c2
}

LeftHandOne = \relative c {
	\clef "bass"
	\key af \major
	r4 af'8 ef' c af \voiceTwo \change Staff = RH f' df
	ef4~ ef16 df c df ef f g ef af bf c bf
	af g f af g2 f4~
	f16 ef d f ef4~ ef8 df16 c df f bf af
	g f ef df \voiceOne \change Staff = LH c bf c df ef4 af,
	g af16 bf c8 bf8. bf16 af8 c
	f, r8 r4 r2
	s1*2
	r4 af8 ef' c af f' df
	ef4 ef2 df4~
	df4 c2 bf4~
	bf4 af8 g~ g16 bf af g f e f g
	af bf af g f8 r8 r2
	s1*2
	r4 bf8 f' df bf gf' ef
	f4 bf,2 a16 bf c a
	f8 bf16 c df2 c4~
	\oneVoice c4 bf2 a4
	bf16 ef df c bf af g f ef df' c bf af g f g
	af c bf af g f ef df c8 af' bf bf,
	ef4~ ef16 f g af bf c df c bf af g bf
	af ef f g af bf c df ef f gf f ef df c ef
	df ef f ef df c bf df c df ef df c bf a c
	bf c df c bf af g bf af bf af g f ef f df
	\voiceOne ef df c bf af8 r8 r2
	r4 g'8 c af c d b
	c16 ef, f g af bf c bf af g f g af g f ef
	f ef df f ef8 r8 r4 r8 \change Staff = RH \voiceFour s
	\once \override Voice.NoteColumn.force-hshift = #-0.7
	af'4 r8 s
	\once \override Voice.NoteColumn.force-hshift = #-0.7
	bf4 r8 s
	s r8 a,4\rest r8 \once \override Voice.NoteColumn.force-hshift = #0.5 g' s4
	\once \override Voice.NoteColumn.force-hshift = #0.5
	ef4 df s a8\rest s
	s a\rest a\rest s s f\rest \change Staff = LH \voiceOne r bf
	bf4 ef, ef2
}

LeftHandTwo = \relative c {
	\voiceTwo
	R1
	\oneVoice
	r4 ef8 af g ef c' af
	bf ef, bf' g af ef af f
	g4~ g16 c, df ef f g af f bf c df c
	\voiceTwo bf af g bf af4~ af16 af, bf c df ef f ef
	df c bf df c8. d16 ef f g8~ g16 g f ef
	d bf c d ef4~ ef8 af d, bf'
	\oneVoice ef,4~ ef16 ef f g af bf c bf af g f af
	g8 ef r16 af, bf c df ef f ef df c bf df
	\voiceTwo c4~ c16 df ef c f4~ f16 ef f df
	af' g af bf c8 g af f bf f
	g ef af ef f d g d
	e c d e f4 bf,
	f' r16 f, g af bf af g f ef f g bf
	\oneVoice af g f ef df ef f af g8 bf c c,
	f16 c' d e f4~ f8 bf e, c'
	\voiceTwo ef, a df,4 gf r8 gf16 f
	ef gf f ef df c bf df ef f gf ef f4
	bf, r4 r2
	s1*7
	r4 af8 ef' c af f' df
	ef4 e16 bf' af g f2
	c df
	af4~ af16 f g af bf c df ef df c bf af
	\oneVoice df c df f ef d c bf ef d ef g f e d c
	f g af f bf af g f ef df c bf af bf c df
	ef df c df ef8 ef, f4 r16 ef f g
	af bf c ef df c bf af g f ef df c ef df f
	ef2 \voiceTwo af_\fermata
}

staffPiano = \new PianoStaff {
	\set PianoStaff.midiInstrument = #"acoustic grand"
	\set PianoStaff.connectArpeggios = ##t
	<<
		\context Staff = "RH" {  % Right hand 
			\set Staff.connectArpeggios = ##t
			<<
			\new Voice {\RightHandOne}
			\new Voice {\voiceTwo \RightHandTwo}
			>>
		}
		\context Staff = "LH" {  % Left hand
			\set Staff.connectArpeggios = ##t 			
			<<
			\new Voice {\voiceOne \LeftHandOne}
			\new Voice {\LeftHandTwo}
			>>
		}
	>>
}



\score {
	<<
		\staffPiano
	>>
	
	\midi {
	}

	\layout {
		\context {
			\Staff
			\consists Span_arpeggio_engraver
		}
	}
}
