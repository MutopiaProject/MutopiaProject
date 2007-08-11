\version "2.10.3"

 cornig = {
 \set Staff.instrumentName = "Corni in G."
 \set Staff.midiInstrument = "english horn"
 \clef treble
 \key c \major
 \time 4/4
 \partial 4 r4 R1 R1 R1 R1 R1 R1 R1 R1 R1 r2 r4 <e' c''>8.\p_\markup { \italic "    dolce" } <e' c''>16
 \set doubleSlurs = ##t <g' d''>4( <c'' e''>8) r8 r4 <e' c''>8. <e' c''>16 <g' d''>4( <c'' e''>8) r8 r2 R1
 \set doubleSlurs = ##f \cadenzaOn r4^\fermata r2^\fermata s2 s8 r4 \cadenzaOff \bar "|" R1 R1 R1 R1
 R1 R1 R1 R1 R1 \cadenzaOn s2 s4 r2^\fermata s4 r4 \cadenzaOff \bar "|" R1 R1 R1 R1 R1
 R1 r4 <c' g'>8.\f <c' g'>16 <c' g'>4 r4 r4 <c' g'>8. <c' g'>16 <c' g'>4 r4 R1 R1
 R1 r4 <g g'>8. <g g'>16 <g g'>4 <g g'>8. <g g'>16 <g g'>1~ <g g'>2 <c' c''> <c' c''>\> <g g'>\!
 \cadenzaOn s2 s4 r1 s2 \cadenzaOff \bar "|"
 \cadenzaOn s2 s4 r1 s2 \cadenzaOff \bar "|"
 \cadenzaOn s4 s1 s2 r1 s2 s4 \cadenzaOff \bar "|" R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 r4 <g g'>8.\pp <g g'>16 <g g'>4 r4 r4 <g g'>8. <g g'>16 <g g'>4 r4
 r4 <g g'>8. <g g'>16 <g g'>4 r4 r4 <g g'>4\staccato^\markup { \italic "cresc." }( <g g'>4\staccato <g g'>\staccato)
 <g g'>8\p r8 r4 r2 R1
 R1 R1 \cadenzaOn s1 r1 s4 \cadenzaOff \bar "|" R1 R1 R1
 \cadenzaOn s4  s1 r1 s2 s4 s8 \cadenzaOff \bar "|"
 R1 r4 <g g'>8.\pp <g g'>16 <g g'>4 r4 r4 <g g'>8. <g g'>16 <g g'>4 r4 r4 <g g'>8. <g g'>16 <g g'>4 r4
 r4 <g g'>8. <g g'>16 <g g'>4 r4 R1 R1 R1
 r2 r4 <e' c''>8.\pp^\markup { "con sordial" } <e' c''>16 \set doubleSlurs = ##t <g' d''>4( <c'' e''>8) r8 r2 R1 R1 R1
 \set doubleSlurs = ##f \cadenzaOn r2( s2 s4 r4 s4 r8) s8  \cadenzaOff \bar "||"
}