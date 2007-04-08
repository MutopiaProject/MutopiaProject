\paper{ papersize = "letter" 
	linewidth = 165 \mm
	indent = 8 \mm
%	interscoreline = 4.0 \mm
}


\include "english.ly"
\version "2.1.31"
#(set-global-staff-size 17)

\header {
  title = "The Vacant Chair"
  composer = "Geo. F. Root (1820-1895)"
  instrument = "Voice and Piano"
  copyright = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  lastupdated = "2/25/2004"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2004/02/25-426"
}
  


melody = \notes \relative c'' {
	\key a\major \time 3/4 \partial 1
  e,8.\p^\markup { \italic "With feeling" } e16 e4. e8 fs e  e a4. e8. e16 |
  e4.^\< e8 fs e\! | b'2 e,8.^\markup { \italic cresc } e16 | cs'4.^\f b8 a gs |
  gs fs4. cs'8. b16 | a4.^\markup { \italic dim } gs8 fs gs | a2 a8. a16 |
  b4.^\mf b8 a fs | gs b4. gs8. e'16 | ds4. cs8^\markup { \italic dim } b a |
  gs2 b8. b16 | b4. b8 a fs | gs^\< b4.\! e8. e16 |
  ds4.^\> cs8 a fs\! | e2 e8. e16 |
  e4.^\p e8 fs e | e a4. e8. e16 |
  e4.^\< e8 fs e\! | b'2 e,8. e16 | cs'4.^\f b8 a gs |
  gs fs4. cs'8.^\markup { \italic dim. } b16 | a4. gs8 fs gs | a2 r4 |
}

textA = \lyrics {
  We shall meet, but we shall miss him, There will be one va -- cant chair;
  We shall lin -- ger to ca -- ress him, While we breathe our eve -- ning pray'r.
  When a year a -- go we gath -- ered, Joy was in his mild blue eyes, But a gold -- en
  chord is sev -- ered, And our hopes in ru -- in lie.
}

textB = \lyrics {
	At our fire -- side, sad and lone -- ly, Oft -- en will the bo -- som
	swell At re -- mem -- brance of the sto -- ry How our no -- ble Wil -- lie
	fell, How he strove to bear our ban -- ner Thro' the thick -- est of the
	fight, And up -- hold our coun -- try's hon -- or, In the strength
	of man -- hood's might. We shall meet, but we shall miss him,
	There will be one va -- cant chair; We shall lin -- ger to ca -- ress him,
	While we breathe our eve -- ning pray'r.
}

textC = \lyrics {
	True, they tell us wreaths of glo -- ry, Ev -- er more will deck his brow,
	But this soothes the an -- guish on -- ly, Sweep -- ing o'er our heart- 
	strings now. Sleep to -- day, oh, ear -- ly fal -- len, In thy green and
	nar -- row bed, Dir -- ges from the pine and cy -- pryess, Min -- gle with
	the tears we shed.
}

upper = \notes\relative c'' {
	\key a\major \time 3/4 \partial 1
  e,8.\p^\markup { \italic "With feeling" } e16  <e cs>4. \slurUp <e cs>8[( <fs d> <e cs>]) 
   <e cs>8( <a e cs>4.) <e cs>8. e16 |
	<e d>4.^\< <e d>8[( <fs d> <e d>])\! <d e b'>2 <d e>8.^\markup { \italic cresc } e16
	<e a cs>4.^\f <e b'>8[( <e a> <e gs>]) | <d gs>( <d fs>4.) <d fs cs'>8.( b'16) |
	<cs, e a>4.^\markup { \italic dim } <d gs>8[( <d fs> <d gs>]) | <cs a'>2 a'8. a16 |
	<e gs b>4.^\mf <e gs b>8[ <ds a'> <ds fs>] | <e gs> <gs b>4. <e gs>8.( e'16) |
	<fs, a ds>4. << { \slurUp <a cs>8[(^\markup { \italic dim } <gs b> <fs a>]) } \\ { ds4. } >> | <e gs>2 <e b'>8. b'16 |
	<ds, b'>4. <ds b'>8[( <ds a'> <ds fs>]) | <e gs>8^\< <gs b>4.\! \stemUp <e gs e'>8. e'16 |
	<ds a fs>4.^\> cs8[( <a ds,> <fs ds>])\! | e2 e8. e16 |
	<e cs>4.^\p \slurUp <e cs>8[( <fs d> <e cs>]) | <e cs>8( <a e cs>4.) <e cs>8. e16 |
	<e d>4.^\< <e d>8[( <fs d> <e d>])\! <d e b'>2 <d e>8. e16
	<e a cs>4.^\f <e b'>8[( <e a> <e gs>]) | <d gs> <d fs>4. <d fs cs'>8.^\markup { \italic dim } b'16 |
	<cs, e a>4. <b d gs>8[ <b d fs> <b d gs>] | <cs e a>2 r4 |

}

lower = \notes\relative c {
	\key a\major \time 3/4 \partial 1
  r4  <a e'>2 <a e'>4 | <a e'>2 <a a'>4 | <e' gs>2 <e gs>4
  <e gs>2 <e gs>4 | <a, a'>4. <cs a'>8 <cs a'> <cs a'> | <d a'>2 d4 |
  e2 <e e,>4 | <e a,>2 r4 | e4. e8[ <fs b,> <fs b,>] | <e b>2 <e b>4 |
  <fs b,>2 <fs b,>4 | e2 gs4 | <fs b,>4. <fs b,>8 <fs b,> <fs b,> |
  <e b>2 <e b>4 | <fs b,>2 <fs b,>8( <a b,>) | <gs e>2 r4 |
  <a, e'>2 <a e'>4 | <a e'>2 <a a'>4 | <e' gs>2 <e gs>4
  <e gs>2 <e gs>4 | <a, a'>4. <cs a'>8 <cs a'> <cs a'> | <d a'>2 <d d,>4 |
  <e e,>4. <e e,>8 <e e,> <e e,> | <a, a,>2 r4
}

\score {
  <<
      \context Voice = mel {
	  \autoBeamOff
	  \melody
      }

		\lyricsto mel \new Lyrics \lyrics { \set stanza = "1." \textA }
		\lyricsto mel \new Lyrics \lyrics { \set stanza = "2." \textB }
		\lyricsto mel \new Lyrics \lyrics { \set stanza = "3." \textC }

      \context PianoStaff <<
	  \context Staff = upper \upper
	  \context Staff = lower <<
	      \clef bass
	      \lower
	  >>
      >>
  >>
  \paper {
      \context { \RemoveEmptyStaffContext }
  }  
  \midi { }  
}
