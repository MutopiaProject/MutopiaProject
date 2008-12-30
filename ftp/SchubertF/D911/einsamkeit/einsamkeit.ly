\include "catalan.ly"
#(set-global-staff-size 16)
\paper  {
	linewidth = 17.0 \cm
	interscoreline = 20
}
\version "2.2.0"

\header {
	title = "Einsamkeit"
	composer = "Franz SCHUBERT"
	poet = "Wilhelm MÜLLER"
	opus = "Opus 89 n°12b"
	piece = "\\hspace*{30mm}\\normalfont\\large Langsam"
	tagline = ""
 mutopiatitle = "Einsamkeit"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "W. Müller (1794-1827)"
 mutopiaopus = "D.911-12 (Op. 89)"
 mutopiadate = "1827"
 mutopiainstrument = "Voice and Piano"
 source = "Breitkopf & Härtel, 1895"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "L. Sardain"
 % with some lyric corrections by Roland Goretzki
 lastupdated = "2004/Sep/17"

 tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
 footer = "Mutopia-2004/09/17-373"
}

melody = \notes \relative do' {
	\set Staff.instrument = #"Singstimme."
	\time 2/4
	\key si \minor
	R2*5
	r4 r8 fad |
	fad8. sol16 fad[ sol] fad[ si] |
	dod4 si8 si |
	si16[ fad] fad8 fad16[ sol] mi[ dod] |
	fad4 r8 fad |
	fad8. sol16 fad[ sol] fad[ si] |
	dod4 si8 si |
	si16[ fad] fad8 fad16[ sol] mi[ dod] |
	fad4 r8 fad |
	fad8. sol16 fad16[ la] dod[ mi] |
	re8.[ dod16] si8 lad16[ si] |
	sol8 fad16[ sol] mi8 mid |
	fad4 r8 fa16[ sol] |
	fad8. dod16 fad16[ la] dod[ mi] |
	re8.[ dod16] si8 lad16[ si] |
	sol8 fad16[ sol] mi8 mid |
	fad4 r4 |
	r4 r8 lad8 |
	si8. si16 si8 dod16[-> si] |
	\grace si16 la!8 la r dod |
	si8. si16 si8 dod16[-> si] |
	\grace si8 la4 r |
	r r8 lad8 |
	si re mib8. mib16 |
	re8 si r4 |
	r4 r8 si |
	do8. sol16 do8 si |
	r8. si16 re8 lad |
	si4 r |
	r r8 re, |
	la'8. la16 la8 si16->[ la] |
	\grace la16 sol8 sol r si |
	si8. si16 si8 dod!16[-> si] |
	\grace si8 la4 r |
	r r8 lad8 |
	si re mib8. mib16 |
	re8 si r4 |
	r4 r8 si |
	do8. sol16 do8 si |
	r8. re16 fad8 lad, |
	si4 r |
	R2 | R2 \bar "|."
}

text = \lyrics {
  Wie ei -- ne trü -- be __ Wol -- ke durch heit' -- re Lüf -- te geht,
  wenn in der Tan -- nen Wip -- fel ein mat -- tes Lüft -- chen weht:
  so zieh' ich mei -- ne __ Stra -- sse da -- hin mit __ trä -- gem Fuss,
  durch hel -- les, fro -- hes __ Le -- ben ein -- sam und oh -- ne Gruss,
  Ach, dass die Luft so _ ru -- hig! Ach, dass die Welt so _ licht!
  Als noch die Stür -- me tob -- ten, war ich so e -- lend, so e -- lend nicht.
  Ach, dass die Luft so _ ru -- hig! ach, dass die Welt so _ licht!
  Als noch die Stür -- me tob -- ten, war ich so e -- lend, so e -- lend nicht.
}

upper = \notes\relative do' {
	\key si \minor
	r4 <re si'>8(-. <re si'>8)-. |
	r4 <re fad>8(-. <re fad>8)-. |
	r4 <dod mi>8^>( <si re>16 <lad dod>) |
	<si re>8 r8 <fad' re'>(^> <mi dod'>16 <re si'>) |
	<mi dod'>8 r8 <dod mi>8^>( <si re>16 <lad dod>) |
	<si re>8 r8 <re si'>(-. <re si'>)-. |
	r4 <re si'>8(-. <re si'>8)-. |
	r4 <re si'>8(-. <re si'>8)-. |
	r8 <re si'> r <dod mi si'> |
	r8 <re si'> ~ <re si' re>4 |
	r4 <re si'>8(-. <re si'>8)-. |
	r4 <re si'>8(-. <re si'>8)-. |
	r8 <re si'> r <dod mi si'> |
	r8 <re si'> ~ <re si' re>4 |
	r4 <mi fad re'>8-> <mi fad dod'> |
	r4 <re mid si'>8-> <re fad si> |
	r8 sol( mi mid) |
	r8 fad( fad,4) |
	r4 <mi' fad re'>8-> <mi fad dod'> |
	r4 <re mid si'>8-> <re fad si> |
	r8 sol( mi mid |
	fad) fad,( sol lad |
	dod mi sol <dod, lad'>) |
	\repeat "tremolo" 16 {re64 si'64} |
	<dod,! la'!>8 r8\fp fa'(\> mi16)\! r16 |
	\repeat "tremolo" 16 {re,64 si'64} |
	<dod,! la'!>8 r8\fp fa'(\> mi16)\! r16 |
	\set tupletSpannerDuration = #(ly:make-moment 1 8)
	\clef bass \times 2/3 {<dod,, mi>16[ <dod mi> <dod mi>] <re mi>[ <re mi> <re mi>] <dod mi la>[ <dod mi la> <dod mi la>] <dod mi lad>[ <dod mi lad> <dod mi lad>]} |
	\times 2/3 {<si re si'>[ <si re si'> <si re si'>] <re sol si re>[ <re sol si re> <re sol si re>]
		<mib sol do mib>[ <mib sol do mib> <mib sol do mib>] <la do mib fa>[ <la do mib fa> <la do mib fa>] }
	\clef violin <si re sol>8-. <re fa si re>-. r8 \clef bass <fa, si re> |
	<<{\stemDown mi4} \\ {\stemUp<do' mi>8( re16 do)}>> \stemBoth <mi, do' mi>8( <fa si re>) |
	<<{\stemDown mi4} \\ {\stemUp<do' mi>8( re16 do)}>> \stemBoth <mi, do' mi>8( <mid si' re>) |
	<<{\stemDown fad4} \\ {\stemUp<re' fad!>8( <dod! mi>16 <si re>)}>> \stemBoth <fad re' fad>8( <mi fad dod'>) |
	<re fad si> si( re mid |
	fad sol si re) |
	\clef violin \repeat "tremolo" 16 {do64 la'64} |
	<si, sol'>8 r\fp mib'(\> re16)\! r |
	\repeat "tremolo" 16 {re,64 si'64} |
	<dod,! la'!>8 r8\fp fa'(\> mi16)\! r16 |
	\set tupletSpannerDuration = #(ly:make-moment 1 8)
	\clef bass \times 2/3 {<dod,, mi>16[ <dod mi> <dod mi>] <re mi>[ <re mi> <re mi>] <dod mi la>[ <dod mi la> <dod mi la>] <dod mi lad>[ <dod mi lad> <dod mi lad>]} |
	\times 2/3 {<si re si'>[ <si re si'> <si re si'>] <re sol si re>[ <re sol si re> <re sol si re>]
		<mib sol do mib>[ <mib sol do mib> <mib sol do mib>] <la do mib fa>[ <la do mib fa> <la do mib fa>] }
	\clef violin <si re sol>8-. <re fa si re>-. r8 \clef bass <fa, si re> |
	<<{\stemDown mi4} \\ {\stemUp<do' mi>8( re16 do)}>> \stemBoth <mi, do' mi>8( <fa si re>) |
	<<{\stemDown mi4} \\ {\stemUp<do' mi>8( re16 do)}>> \stemBoth <mi, do' mi>8( <mid si' re>) |
	<<{\stemDown fad4} \\ {\stemUp<re' fad!>8( <dod! mi>16 <si re>)}>> \stemBoth <fad re' fad>8( <mi fad dod'>) |
	<re fad si> r <re si'> <re si'> |
	r4 <re si'>8 <re si'> |
	<re si'>2 \bar "|."
}

nuances = \notes {
	s2\pp
	s2*3 s4 s4\fp
	s2*17 s2-"cresc."
	s16\f s16.\< s64  s\! s8\> s16\! s8
	s8\p s4.
	s16\f s16.\< s64  s\! s8\> s16\! s8
	s8\p  s4.
	s8-"cresc." s16.\< s32\! s8\> s16. s32\!
	s8\< s16. s32\! s8\> s16. s32\!
	s8 s4\f s8\p
	s2
	s4 s8.\< s32 s32\!
	s16\fp s8\> s16\! s4
	s8 s4.-"cresc."
	s2
	s16\f s16.\< s64  s\! s8\> s16\! s8
	s8\p s4.
	s16\f s16.\< s64  s\! s8\> s16\! s8
	s8 s4.
	s2-"cresc."
	s32\f s8.\< s32\! s8.\> s32 s32\!
	s8 s4\f s8\p
	s2
	s4 s8.\< s32 s32\!
	s16\fp s8\> s16\! s4
	s16 s4.\pp s16
	s2-"dimin."
}

lower = \notes\relative do {
	\clef bass
	\key si \minor
	<si fad'>8-.( <si fad'>-.) r4 |
	<si fad'>8(-. <si fad'>)-. r4 |
	<si sol'>8(-. <si sol'>)-. r4 |
	<si fad'>8(-. <si fad'>)-. r4 |
	<si sol'>8(-. <si sol'>)-. r4 |
	<si fad'>8(-. <si fad'>)-. r4 |
	<si fad'>8(-. <si fad'>)-. r4 |
	<si fad'>8(-. <si fad'>)-. r4 |
	<si fad'>8 r <si sol'> r |
	<si fad'>2 |
	<si fad'>8(-. <si fad'>)-. r4 |
	<si fad'>8(-. <si fad'>)-. r4 |
	<si fad'>8 r <si sol'> r |
	<si fad'>2 |
	<lad dod>8-> <lad fad'> r4 |
	<si sol'>8-> <si fad'> r4 |
	sol'4( mi8 mid) |
	fad4( fad,) |
	<lad dod>8-> <lad fad'> r4 |
	<si sol'>8-> <si fad'> r4 |
	sol'4( mi8 mid |
	fad8) fad,( sol lad |
	dod mi sol <sol, dod>) |
	\repeat "tremolo" 16 {sold64 fa'64} |
	<la, mi'>8 r fa''( mi16) r |
	\repeat "tremolo" 16 {sold,,64 fa'64} |
	<la, mi'>8 r fa''( mi16) r |
	\set tupletSpannerDuration = #(ly:make-moment 1 8)
	\times 2/3 {la,,16[ la la] sold[ sold sold] sol[ sol sol] fad[ fad fad]} |
	\times 2/3 {<sol, sol'>[ <sol sol'> <sol sol'>] <sol sol'>[ <sol sol'> <sol sol'>] <sol sol'>[ <sol sol'> <sol sol'>] <sol sol'>[ <sol sol'> <sol sol'>]} |
	<sol sol'>8-. <sol' re' fa>-. r <sol, sol'> |
	<sol sol'>4. <sol sol'>8 |
	<sol sol'>4. <sol sol'>8 |
	<fad fad'>4. <fad fad'>8 |
	<si fad' si> si( re mid |
	fad sol si re) |
	\repeat "tremolo" 16 {fad,64 mib'64} |
	<sol, re'>8 r mib''( re16) r |
	\repeat "tremolo" 16 {sold,,64 fa'64} |
	<la, mi'>8 r fa''( mi16) r |
	\set tupletSpannerDuration = #(ly:make-moment 1 8)
	\times 2/3 {la,,16[ la la] sold[ sold sold] sol[ sol sol] fad[ fad fad]} |
	\times 2/3 {<sol, sol'>[ <sol sol'> <sol sol'>] <sol sol'>[ <sol sol'> <sol sol'>] <sol sol'>[ <sol sol'> <sol sol'>] <sol sol'>[ <sol sol'> <sol sol'>]} |
	<sol sol'>8-. <sol' re' fa>-. r <sol, sol'> |
	<sol sol'>4. <sol sol'>8 |
	<sol sol'>4. <sol sol'>8 |
	<fad fad'>4. <fad fad'>8 |
	<si fad'>8 <si fad'> r4 |
	<si fad'>8 <si fad'> r4 |
	<si fad'>2
}

\score {
  <<
    \addlyrics
      \context Staff = mel {
        \set Staff.autoBeaming = ##f
         \unset Staff.melismaBusyProperties 
        \melody
      }
      \context Lyrics \text

    \context PianoStaff <<
      \set PianoStaff.instrument = #"Pianoforte.   "
      \context Staff = upper \upper
      \context Dynamics = dynamics \nuances
      \context Staff = lower \lower
    >>
  >>
  \paper {
    % The following are taken from LilyPond's piano-dynamics.ly.
    \context {
      \type "Engraver_group_engraver"
      \name Dynamics
      \consists "Output_property_engraver"

      minimumVerticalExtent = #'(-1 . 1)
      pedalSustainStrings = #'("Ped." "*Ped." "*")
      pedalUnaCordaStrings = #'("una corda" "" "tre corde")

      \consists "Piano_pedal_engraver"
      \consists "Script_engraver"
      \consists "Dynamic_engraver"
      \consists "Text_engraver"

      \override TextScript #'font-size = #2
      \override TextScript #'font-shape = #'italic
      \override DynamicText #'extra-offset = #'(0 . 1.2)
      \override Hairpin #'extra-offset = #'(0 . 1.2)

      \consists "Skip_event_swallow_translator"

      \consistsend "Axis_group_engraver"
    }
    \context {
      \PianoStaffContext
      \accepts Dynamics
      \override VerticalAlignment #'forced-distance = #7
    }
  }
  \midi {
    \context {
      \type "Performer_group_performer"
      \name Dynamics
      \consists "Piano_pedal_performer"
      \consists "Span_dynamic_performer"
      \consists "Dynamic_performer"
    }
    \context {
      \PianoStaffContext
      \accepts Dynamics
    }
  }
}


