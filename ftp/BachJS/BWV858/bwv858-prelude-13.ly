% This edition was prepared and typeset by Alex McGuire using the 1866 Breitkopf & Härtel Bach-Gesellschaft Ausgabe as primary source. 
% Reference was made to the Bärenreiter urtext edition, however the final expression is in all cases that of the composer or present editor.
% This edition is in the public domain, and the editor does not claim any rights in the content.


\version "2.22.1"

\header {
  title = "Prelude 13"
  composer = "Johann Sebastian Bach"
  opus = "BWV 858"
  mutopiatitle = "Well-Tempered Clavier I, Prelude 13"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Piano"
  date = "1722"
  source = "Bach-Gesellschaft Ausgabe, Band 14, Breitkopf und Härtel, 1866, Plate B.W.XIV, pp.48-49"
  style = "Baroque"
  maintainer = "Alex McGuire"
  maintainerEmail = "cage433@gmail.com"
  version = "2.22.1"
  license = "Public Domain"
  tagline = ##f
}

global = {
  \key fis \major
  \time 12/16
  \accidentalStyle modern-cautionary
}

\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}
\include "articulate.ly"

upper = \new Voice \relative c' {
   \override ParenthesesItem.font-size = 0
  
  fis16 ais cis 			ais fis cis'  		cis4.\parenthesize\trill~  				    	|
  cis16[ ais b8]  		cis16[ ais8]   		dis16[ gis,8]		ais16[ fis16~]			|
  fis16[ b eis,8]		b'16[ dis,8]    		b'16 cis,       		eis gis b				|
  ais[ fis bis8]			fis16[ cis'8]   		fis,16[ dis'8]  		gis,16[ eis'~]			|
  
  % bar 5
  eis16[ gis cis,8] 		dis16[ bis]     		cis[ eis cis]    	cis eis32 dis cis16~		|
  cis[ ais' cis,8]  		dis16 bis          	cis eis gis   		eis cis gis'				|
  gis4.~\trill			gis16[ eis fis8]    	gis16 eis~									|
  eis[ ais dis,8]		eis16[ cisis] 		fis[ ais, b8]		cis16[ ais~]				|
  
  % bar 9
  ais[ dis gis,8]		ais16[ fis8]			b16[ e,8]			fis16[ dis]				|
  gis[ cisis, dis8]		cisis16[ gis'8]		eis16[ b'8]			gis16[ eis'~]			|
  eis[ eis, fis8]		ais16[ dis8]			eis,16[ gis8] 		ais16[ cisis]			|
  dis4.~\trill								dis16[ fis ais]     	fis[ dis gisis]			|
  
  % bar 13
  gisis4.~\trill								gisis16[ ais bis]	eis,[ fis dis]			|
  cis[ eis ais,8]		bis16[ gisis]		ais[ cis ais] 		ais[ cis32 bis ais16~]	|
  ais[ fis' ais,8]		bis16[ gisis]		ais[ cis eis]		cis[ ais fisis']			|
  fisis4.~\parenthesize\trill				fisis16[ ais dis,]	cis[ b ais]				|
  
  % bar 17
  b[ dis gis,8]			ais16[ fisis]		gis[ b gis]			gis[ b32 ais gis16~]		|
  gis[ e' gis,8]			ais16[ fisis]		gis[ b dis]			b[ gis eis']				|
  eis4.~\trill								eis16[ cis eis]		gis[ eis gis]			|
  b4.~ 										b16[ gis ais8]		b16[ gis~]				|
  
  % bar 21
  gis[ eis fis8]			gis16[ eis]			fis[ ais, b8]		cis16[ ais~]				|
  ais[ dis gis,8]		ais16[ fis8]			eis16[ b'8]			gis16[ dis'~]			|
  dis[ b gis'8]			eis16[ b8]			gis16[ cis8]			ais16[ fis~]				|
  fis[ dis b'8]			gis16[ eis]			fis4.~										|
  
  % bar 25
  fis16[ ais, b8]		cis16[ ais8]			dis16[ gis,8] 		ais16[ fis]				|
  b4.~										b16[ eis gis]		eis[ b gis']				|
  a,[ cis fis]			b,[ eis gis] 		cis,[ fis a]			d,[ 	gis b]				|
  eis,[ b' d8]			b16[ eis8]			d16[	 gis8]			eis16[ b']				|
  
  % bar 29
  ais[ cis, fis8]		gis16[ eis]			fis[ ais, fis']		fis[ ais32 gis fis16~]	|
  fis[ gis, fis'8]		gis16[ eis]			fis[	cis ais]			fis8.					|
  \bar "|."
  
}

lower = \new Voice \relative c {
  
  r4. 		    								fis16 ais cis    	ais fis   dis' 			|
  dis8.[ 				cis]					b[					ais]			  			|
  gis[					fis]					eis[					cis]						|
  fis[					gis]					ais[					bis]						|
  
  % bar 5
  cis[					gis]					ais[					eis]						|
  fis[					gis]					cis,					r						|
  cis16 eis gis			eis cis ais'			ais8.[				gis]						|
  fis [					eis]					dis[ 				cis]						|
  
  % bar 9
  b[						ais]					gis[					fis]						|
  eis[					dis']				cisis[				ais]						|
  dis[					fis]					gis[					ais]						|
  dis,16[ fis ais]		fis[ dis bis']		bis4.~\trill									|
  
  % bar 13
  bis16[ dis fis]		dis[ bis fis']		fis[ eis dis]		cis[ dis eis]			|
  ais,8.[				eis]					fis[					cis]						|
  dis[					eis]					ais,					r						|
  dis16[ fisis ais]		fisis[ dis cis'] 	cis8.[				fisis,]					|
  
  % bar 17
  gis[					dis]					e[					b]						|
  cis[					dis]					gis,					r						|
  cis16[ eis gis]		eis[ cis b'] 		b8.~					b16[ gis b]				|
  eis[ gis eis]			cis[ eis cis]	    fis,8.[				b]						|
  
  % bar 21
  bis[					cis]					dis,[				cis]						|
  b[						ais]					gis[					fis']					|
  eis[					cis]					fis[					ais,]					|
  b[						cis]					fis,16[ ais cis]		ais[ fis dis']			|
  
  % bar 25
  dis8.[					cis]					b[					ais]						|
  gis16[ b dis]			b[ gis eis']			eis,4.~										|
  eis8.[ 				cis']				eis,[				cis']					|
  eis,[					eis']				gis[					cis]						|
  
  % bar 29
  fis,[					cis]					dis[					ais]						|
  b[						cis]					fis,4.										|
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MIDI
\score {
  \articulate
  \new PianoStaff <<
    \new Staff="up" \with {midiInstrument = #"harpsichord"}
    << \global \clef treble \upper    >>
    \new Staff="down" \with {midiInstrument = #"harpsichord"}
    << \global \clef bass   \lower    >>
  >>  
  \midi { \tempo 4=72 }
  
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Printed score
\score {
  \new PianoStaff << 
    \new Staff="up"    	
    << \global \clef treble 	\upper >>
    \new Staff="down"   
    << \global \clef bass 	\lower >>
  >>
  \layout { }
}

