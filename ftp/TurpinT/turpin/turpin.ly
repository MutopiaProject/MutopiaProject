\version "2.18.2"
%#(set-default-paper-size "letter")

#(set-global-staff-size 18)

\header {
	title = "THE ST. LOUIS RAG."
	composer = "Tom Turpin (1873 - 1922)"
	opus = "1903"
	date = "1903"
	source = "Sol Bloom, New York & Chicago"
	style = "Jazz"
	license = "Public Domain"
	maintainer = "Stan Sanderson"
	maintainerEmail = "physinfoman@ameritech.net"
	mutopiatitle = "The St. Louis Rag"
	mutopiacomposer = "TurpinT"
	mutopiainstrument = "Piano"
	mutopiaopus = " "

 footer = "Mutopia-2015/01/17-369"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
	}

\paper{ 
        top-margin = 8 \mm
        bottom-margin = 10 \mm
	top-markup-spacing.basic-distance = #6 %-dist. from bottom of top margin to the first markup/title
        markup-system-spacing.basic-distance = #7 %-dist. from header/title to first system
        system-system-spacing.basic-distance = #18
        top-system-spacing.basic-distance = #12
}

Up =  { \stemUp \tieUp }
Down =  { \stemDown \tieDown }
Neutral =  { \stemNeutral \tieNeutral }

Global =  {\time 2/4}

MD =  \relative c'' {
	\key c \major 
   <g' g,>16\f^\markup { \translate #(cons -8 0) \italic \column { "Allegretto" " " } } <c c,>8-> 
   			<a a,>16 <g g,> <e e,> <d d,>8
  <c c,>16 <e e,>8-> <d d,>16 <c c,> <b b,> <a a,>8
  <g g,>16 <a a,>8 <ais ais,>16 <b b,>\< <c c,> <d d,> <e e,>\!
  <f f,>8 r <g d b g>->\sfz g16[ a]\mf

     <f b>16 g a <f b>~<f b> <d b'>8 <e b'>16

  <f b>16 d e <f b>16~<f b>16 f e d
  e <c a'>8 e16 <c a'>8 g16 a
  <c e>16 g a <c e>~<c e> c b a
  b16 <g g'>8 b16 <g g'>8 g16 a
  <b f'>16 g a <b f'>~<b f'> b a g

  a16 <c e>8 g16~ g a <c e> a
  <g e'>16 a c <c e>~ <c e>8 g'16 a
  <f b>16 g a <f b>~<f b> <d b>8 <e b>16
  <f b>16 g a <f b>~<f b> f e d
  e <c a'>8 e16 <c a'>8 g16 a
  
  <c e>16 g a <c e>~<c e> c b bes
  a16 gis a cis~ cis e <a, c a'>8
  <a d g>16 f' e f~ f c <fis, d'>8
  <g e'>16 c d <fis, e'>~ <fis e'> b <f d'>8

   <e c'>4~ <e c'>8 g'16 a
   <e, c'>8 <g g'>16 <g g'> <g g'>8 <g g'>
   
   <g f'>16 <gis f'> <a f'> <b f'>~ <b f'> <ais f'> <b f'>8
   <b f' g>16 <c f g> <cis f g> <d f g>~ <d f g> <cis f g> <d f g>8
   \ottava #1 e'16 a b, c e \ottava #0 fis, g c
   e,16 f fis g a g e c
   
   \Up b8 <f' g> ais, <e' g>
    r16 b d f <b, a'> g' f d
   r8 <g, c e g>\arpeggio r <g c e g>\arpeggio
   r8 <g g'>16 e' <a, a'> e' <g, g'>8->
   
   <g f'>16 <gis f'> <a f'> <b_~ f'~> <b f'> <ais f'> <b f'>8
   <b f' g>16 <c f g> <cis f g> <d_~ f~ g~> <d f g> <cis f g> <d f g>8
   \ottava #1 e'16 a b, c e \ottava #0 fis, g c
   e,16 f fis g a g e c
   
   r8 <c ees c'>-> <b' ees, c>-> <c, ees a>->
   r16 g' fis g a g e c
   \Up r16 g fis g gis a ais b
   
   \Down <e, c'>8 a'16 g e c b a
   \Up <e c'>4~ <e c>16 <f a> <g bes> <gis b>
   
   \key f \major
   
   <a c>16\mf b c <a_~ f'~> <a f'> <f a> <g bes> <gis b>
   <a c>16 b c <a_~ f'~> <a f'> b c cis
   <bes d>16 cis d <bes_~ g'~> <bes g'> fis g a
   <g bes> a bes g_~ g a bes b
   
   \Down c8 <e, bes'> e' <e, bes'>
   \Up r8 <e bes' c>16 <e_~ bes'~ d~> <e bes' d> c' <e, bes' d> c'
   <f, f'>16\f <g g'> <a a'> <g g'> <f f'> <d d'>8 <f f'>16
   <c c'>8 <f b cis> <e bes' d> <e bes' c>

	<a c>16\mf b c <a_~ f'~> <a f'> <f a> <g bes> <gis b>
	<a c>16 b c <a_~ f'~> <a f'> b c cis
	<bes d>16 cis d <bes_~ g'~> <bes g'> fis g a
	<g bes> a bes g_~ g a bes b
   
   c8 <e, bes'> e' <e, bes'>
   r8 <e bes' c>16 <e_~ bes'~ d~> <e bes' d> c' <e, bes' d> c'
   <f, a f'>8 c16 <f a d>~ <f a d> c' <e, bes' d>8
   
   <f_~ a~ f'~>4 <f a f'>16 <f a> <g bes> <gis b>
   <f a f'>8 b,16 c\< cis d dis e\!
   
	\Down f8-^ <f' a d> <f a d> <ees a d>
	<e a d>8 \Up b,16[ c] cis d dis e
	\Down f8-^ <f' a d> <f a d> <ees a d>
	<e a d>8 \Up b,16[ c]\< cis d dis\! e

	f8^^ \Down <f' a d>16 [<f~ a~ c^~>] <f a c> a g f
	<cis a'>16 e g <a,~ f'^~> <a f'>8 <a a'>
	<b a'>16 f' g <b,~ a'^~> <b a'> f' <b, g'>8
	<c e c'>8 \Up b,16[ c] cis\< d dis e\!
	
	\Down f8-^ <f' a d> <f a d> <ees a d>
	<e a d>8 \Up b,16[ c]\< cis d dis\! e
	\Down f8-^ <f' a d> <f a d> <ees a d>
	<e a d>8 \Up b,16[ c]\< cis d dis\! e
	
	f8^^ \Down <f' a d>16 [<f~ a~ c^~>] <f a c> a g f
	<a, a'>16 e' g <a,~ f'^~> <a f'>8 <b f' g>
	<c a'>16 f g <b,~ a'^~> <b a'> f' <bes, g'>8
	
	<a f'>8 \Up b,16 [c] cis\< d dis e\!
	\Down <a f'>8 r <f' a c f>_>\fz r8
	
}

MS =  \relative c' {
	\key c \major 
	
 g16 c8-> a16 g16 e d8
 c16 e8-> d16 c b a8
 g16 a8 ais16 b c d e
 f8 r <g g,> r 

 d8 <g b f'> g, <g' b f'>
 d8 <g b f'> g, <g' b f'>
 c,8 <g' c e> g, <g' c e>
 c,8 <g' c e> <e e,> <ees ees,>
 <d, d'>8 <g' b f'> g, <g' b f'>
 d8 <g b f'> g, <g' b f'>

 c,8 <g' c e> g, <g' c e>
 c,8 <g' c e> <e e,> <ees ees,>
 <d, d'>8 <g' b f'> g, <g' b f'>
 d8 <g b f'> g, <g' b f'>
 c,8 <g' c e> g, <g' c e>
 
 c,8 <g' c e> <e e,> <d d,>
 <cis, cis'>8 <g'' a e'> a, <a' e' g>
 d,8 <a' d f> <a a,> <aes aes,>
 <g g,>8 <gis gis,> <a a,> <b b,>

 <c c,>8 <b b,>16 <a a,>~ <a a,> <g g,> <e e,>8
 <c' c,>8 r r4
 
  d,8 <f g b> g, <f' g b>
  d8 <g b f'> g, <g' b f'>
  <c, g' e'>\arpeggio^^ r8 r4
  r2
  
   d8 <g b f'> cis, <g' ais e'>
   d8 <g b f'> g, <g' b f'>
   <c, c'>4-> <b b'>->
   <a a'>-> \Down <g g'>->
   
    d'8 <f g b> g, <f' g b>
   d8 <g b f'> g, <g' b f'>
   <c, g' e'>-> r8 r4
   r2
   
   r 8 \Down <fis, fis'>->  <fis fis'>-> <fis fis'>->
   <g g'>8 <g' c e> e <g c e>
   d8 <f g b> g, <f' g b>
   
   <c g' c>8 r8 r4
   <c c'>8 <g g'> <c, c'> r
   
    \key f \major
    
    <f f'>8 <a' c f> c, <a' c f>
    f8 <a c f> a, <a' c f>
    bes,8 <g' bes d> g, <g' bes d>
    bes,8 <g' bes d> <d, d'> <des des'>
    
    <c c'>8 <g'' bes c> c, <g' bes c>
    g,8 <g' bes c> c,, <g'' bes c>
    f16 g a g f d8 f16
    a8 aes g c,
    
    <f, f'>8 <a' c f> c, <a' c f>
    f8 <a c > a, <a' c >
    bes,8 <g' bes d> g, <g' bes d>
     bes,8 <g' bes d> <d, d'> <des des'>
     
     <c c'>8 <g'' bes c> c, <g' bes c>
     g,8 <g' bes c> c,, <g'' bes c>
     <f, f'>8 <f' a c>4 <c, c'>8
     
     <f f'>8 <c c'> <f, f'> r8
     <f' f'>8 b16 c cis d dis e
     
     f8-^ <a c f> \Down <a, a'> <fis fis'>
     \Up <g g'>8 b16 c cis d dis e
     \Down f8-^ <a c f> <a, a'> <fis fis'>
     <g g'>8 b16 c cis d dis e
     
     f8-^ <a c f> f8 <a c f> 
     <a, a'>8 <cis cis'> <d d'> <a' d f>
     d,8 <g b f'> g, <g' b f'>
     <c, c'>8 b16 c cis d dis e
     
     \Down f8-^ <a c f> <a, a'> <fis fis'>
     <g g'>8 b16 c cis d dis e
     \Down f8-^ <a c f> <a, a'> <fis fis'>
     <g g'>8 b16 c cis d dis e
     
     f8-^ <a c f> f8 <a c f> 
     <cis, cis'>8 <a a'> <d d'> <des des'>
	<c c'>8 <c c'> <d d'> <e e'>
	
	<f f'>8 b,16 [c] cis d dis e
	<f f'>8 r \Up <f, f,>^> r \bar ".."
   

}

RPT =  \relative c'' {
		s2 s2 s2 s2
		\repeat volta 2 {
			s2 s2 s2 s2 s2
			s2 s2 s2 s2 s2
			s2 s2 s2 s2 s2 }
			\alternative { { s2 } { s2 }
			}
		\repeat volta 2
		 {
			s2 s2 s2 s2 \Down b4_> ais4_>
			s2 s2 s2 s2 s2
			s2 s2 s2 s2 s2 }
			\alternative { { s2 } { s2 }
			}
		\repeat volta 2 {
			s2 s2 s2 s2 \Up c4 e4
			s2 s2 s2 s2 s2
			s2 s2 s2 s2 s2 }
			\alternative { { s2 } { s2 }
			}
		\repeat volta 2 {
			s2 s2 s2 s2 s2
			s2 s2 s2 s2 s2
			s2 s2 s2 s2 s2 }
			\alternative { { s2 } { s2 }
			}
		}

\score { 
 {
  \context PianoStaff <<
%		\applyMusic #unfold-repeats
		\set PianoStaff.midiInstrument = "honky-tonk"
		\context Staff = "up" <<
		  \Global
		  \clef treble
		  \context Voice=VoiceI \MD
		  \context Voice=VoiceII \RPT
		>>
		\context Staff = "down" <<
		  \Global
		  \clef bass
		  \context Voice=VoiceI \MS
		>>
	>>
 }
  \layout { }

  \midi { \tempo 4 = 96 }

}		
