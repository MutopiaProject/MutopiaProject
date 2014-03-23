#(set-global-staff-size 15.5) 

\version "2.18.0" 

global = { \key f \minor \time 2/4 \tempo "Gemessen, nicht schleppend" } 

TAGrablied = { 
c'4\p des'8 bes8 
c'8[ f'8] g'8 aes'8 
g'4 f'8 e'8 
f'4 aes8 bes8 
c'4 des'8 bes8 
c'8[ f'8] g'8 aes'8 
f'4 e'4 
f'4. \oneVoice r8 \voiceOne 
f'4\mf f'8 f'8 
aes'4-> aes'4-> 
f'4 f'8 g'8 
c'4-> c'4-> 
f'4 f'8 f'8 
aes'4-> aes'4->\> 
ees'4\p ees'8\decresc ees'8 
ees'4. \oneVoice r8 \voiceOne 
f'4\pp ees'8 des'8 
ees'4 ees'8 f'8 
ges'4 f'8 ees'8 
f'4 f'8 f'8 
f'4\< f'8 f'8 
f'4 f'8 f'8 
f'4(\! a'8.)\> g'16 
f'4.-\fermata\p \oneVoice r8 \voiceOne 
\bar "|." 
} 

TBGrablied = { 
f'4 f'8 f'8 
f'4 c'8 c'8 
c'4 c'8 c'8 
c'4 f'8 f'8 
f'4 f'8 f'8 
f'4 c'8 c'8 
c'4 c'4 
c'4. s8 
des'4 des'8 des'8 
f'4 f'4 
des'4 des'8 des'8 
g4 g4 
aes4 aes8 des'8 
c'4 ces'4 
bes4 c'8 des'8 
c'4. s8 
des'4 c'8 des'8 
c'4 c'8 des'8 
c'4 des'8 c'8 
des'4 aes8 aes8 
aes4 aes8 aes8 
aes4 aes8 aes8 
a8[( c'8] e'8.) c'16 
c'4. s8 
\bar "|." 
} 

BAGrablied = { 
aes4 bes8 g8 
aes4 bes8 c'8 
bes4 aes8 g8 
aes4 f8 g8 
aes4 bes8 g8 
aes4 bes8 c'8 
bes4 bes4 
aes4. \oneVoice r8 \voiceOne 
aes4 aes8 aes8 
c'4 c'4 
bes4 bes8 bes8 
e4 e4 
f4 f8 f8 
f4 aes4 
aes4 g8 g8 
aes4 aes8 aes8 
aes4 aes8 aes8 
aes4 aes8 aes8 
aes4 aes8 aes8 
aes4 aes8 c'8 
d'4 c'8 c'8 
b4 c'8 d'8 
c'8[( a8] bes8.) bes16 
a4. \oneVoice r8 \voiceOne 
\bar "|." 
} 

BBGrablied = { 
f4\p f8 f8 
f4 f8 f8 
c4 c8 c8 
f4 f8 f8 
f4 f8 f8 
f4 f8 f8 
c4 c4 
f4. s8 
des4\mf des8 des8 
aes,4-> aes,4-> 
bes,4 bes,8 bes,8 
c4-> c4-> 
des4 c8 bes,8 
aes,4-> d4->\> 
ees4\p ees8\decresc ees8 
aes,4. r8 
des4\pp aes,8 f,8 
aes,4 aes,8 des8 
ees4 des8 aes,8 
des4 des8 c8 
b,4\< c8 c8 
d4 c8 b,8 
<< c4.. {s4\! s8.\>} >> c16 
f4.-\fermata\p s8 
\bar "|." 
} 

LGrabliedA = \lyricmode { 
\set stanza = "1." 
Pil -- ger auf Er -- den, so ras -- te am Zie -- le, 
hier la -- be dich Frie -- den nach lan -- ger Fahrt! 
Was auch dein Herz -- weh, was auch dein Leid war, 
hei -- len -- den Bal -- sam gab dir der Tod. 
Pil -- ger, Pil -- ger auf Er -- den, vom Wan -- dern er -- mat -- tet, 
nun ru -- he im Scho -- ße der Er -- de aus! 
} 

LGrabliedB = \lyricmode { 
\set stanza = "2." 
Pil -- ger auf Ster -- nen, un -- sterb -- li -- che See -- le, 
du schwe -- best zum Him -- mel auf gold -- nem Pfad, 
ba -- dest im Glanz -- meer gött -- li -- cher Klar -- heit; 
nur was dem Staub war, gabst du dem Staub. 
Pil -- ger, Pil -- ger auf Ster -- nen, die Trä -- ne der Sehn -- sucht 
ge -- lei -- te zur e -- wi -- gen Hei -- mat dich! 
} 

%--------------------

\header { 
 kaisernumber = "112" 
 comment = "" 
 footnote = "" 
 
 title = "Grablied" 
 subtitle = "" 
 composer = "Peter Cornelius (1824–1874), 1869" 
 opus = "op. 9, Nr. 4" 
 arranger = "nach Franz Schuberts Lied \"Der Tod und das Mädchen\"" 
 poet = "Peter Cornelius (1824–1874), 1869" 
 
 mutopiatitle = "Grablied" 
 mutopiacomposer = "CorneliusP" 
 mutopiapoet = "CorneliusP" 
 mutopiaopus = "Op. 9, No. 4" 
 mutopiainstrument = "Choir (TTBB)" 
 date = "1869" 
 source = "Leipzig : C. F. Peters, 1907" 
 style = "Romantic" 
 license = "Creative Commons Attribution 4.0" 
 maintainer = "Klaus Rettinghaus" 
 lastupdated = "2014/March/01" 
 
 footer = "Mutopia-2014/03/23-799"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat{ \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by/4.0/" "Creative Commons Attribution 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
} 

\score {
{
\context ChoirStaff 
	<< 
	\context Lyrics = extra 
	\context Staff = TenorStaff 
	<< 
	\accidentalStyle voice 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "G_8" 
			\context Voice = TenorA { \voiceOne 
				<< 
				\set hairpinToBarline = ##f 
				\autoBeamOff 
				\dynamicUp 
				{ \global \TAGrablied } 
				>> } 
			\context Voice = TenorB { \voiceTwo 
 				<< 
				\autoBeamOff 
				\dynamicDown 
				{ \global \TBGrablied } 
				>> } 
			>> 
	\context Lyrics = verseone 
	\context Lyrics = versetwo 
	\context Staff = BassStaff 
	<< 
	\accidentalStyle voice 
	\set Staff.midiInstrument = "voice oohs" 
			\clef "F" 
			\context Voice = BassA { \voiceOne 
				<< 
				\autoBeamOff 
				\dynamicUp 
				{ \global \BAGrablied } 
				>> } 
			\context Voice = BassB { \voiceTwo 
				<< 
				\set hairpinToBarline = ##f 
				\autoBeamOff 
				\dynamicDown 
				{ \global \BBGrablied } 
				>> } 
		>> 
	\context Lyrics = verseone \lyricsto BassA \LGrabliedA 
	\context Lyrics = versetwo \lyricsto BassA \LGrabliedB 
	>> 
}

\layout {
indent = 0.0\cm
\context {\Score 
\remove "Bar_number_engraver"
\override DynamicTextSpanner.style = #'none 
\override BreathingSign.text = #(make-musicglyph-markup "scripts.rvarcomma") 
}
}

\midi {
\tempo 4=52
}

}
