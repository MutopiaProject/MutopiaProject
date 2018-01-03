\version "2.18.2"

\header {
  title = "Piano Sonate Opus 90"
  subtitle = "Dem Grafen Lichnowsky gewidmet"
  composer = "Ludwig Van Beethoven"
  mutopiatitle = "Sonata No. 27 (2nd Movement: Nicht zu geschwind)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano"
  mutopiaopus = "Op. 90"
  date = "1814"
  source = "Breitkopf & Härtel (1862-1865)"
  style = "Classical"
  license = "Public Domain"
  maintainer = "Stelios Samelis"
  footer = "Mutopia-2017/11/06-909"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

\paper{
  page-count = #12
  %#(set-paper-size "a4")      %uncomment to test specific paper size
  %#(set-paper-size "letter")  %uncomment to test specific paper size
  ragged-last-bottom = ##f
  print-first-page-number = ##f
  oddFooterMarkup = \markup {
    \fill-line { \on-the-fly #first-page
                 \column { \vspace #1 \fromproperty #'header:copyright } }
  }
  evenFooterMarkup = \oddFooterMarkup
}

\score {

 \new GrandStaff
 <<
 \new Staff = "up" {
 \clef treble
 \key e \major
 \time 2/4
 \override Score.MetronomeMark.transparent = ##t
 \tempo 4 = 72
 \override TextScript.padding = #1.5
 \partial 8 << { e'16\p^\markup { \large "Nicht zu geschwind und sehr singbar vorgetragen." }( fis'
 gis'4 b'8 a' gis' fis') fis'8\staccato( gis'\staccato) a'8([ cis'' b' fis'] <b e' gis'>4) } \\
 { s8 e'16 b e' b gis' b fis' b e' b dis' b dis' b e' b e' b e' b fis' b dis' b s4 } >> r8
 e''16( fis'' <gis' gis''>4 <b' b''>8 <a' a''> <gis' gis''> <fis' fis''>) <fis' fis''>8\staccato( <gis' gis''>\staccato)
 <a' a''>8_\markup { \italic "cresc." }([ <cis'' cis'''> <b' b''>]) <dis'' dis'''>8\p\staccato
 <e'' e'''>4\staccato r8 b'8( ais'4 e'' dis''4.) a'!8( gis'4 d''4 cis''4.) cis''8_\markup { \italic "cresc." }( bis'8 cis'')
 <cis' e' a'>8\staccato( <b! e' gis'>\staccato)
 << { gis'8( fis'4) fis'8 fis'([ b' ais' b'] e'4) } \\ { <ais e'>4 <a e'>4 <a dis'>8\p dis'4 dis'8 s4 } >> r8
 <b' b''>8( <ais' ais''>4 <e'' e'''> <dis'' dis'''>4.) <a'! a''!>8( <gis' gis''>4 <d'' d'''> <cis'' cis'''>4.)
 \crescTextCresc <cis'' cis'''>8\<( <bis' bis''>[ <cis'' cis'''>]) <a' a''>\staccato([ <gis' gis''>\staccato])
 <gis' gis''>8( <fis' fis''>4) <fis' fis''>8\! <fis' fis''>8\p([ <b' b''> <ais' ais''> <b' b''>]) <e' e''>4 r8
 << { e'16( fis' gis'4 b'8 a'! gis' fis') fis'8\staccato( gis'\staccato) a'8([ cis'' b' fis'] <b e' gis'>8) } \\
 { s8 e'16 b e' b gis' b fis' b e' b dis' b dis' b e' b e' b e' b fis' b dis' b s8 } >> r8
 \acciaccatura fis''16 e''16_\markup { \italic "cresc." } dis'' e'' fis'' \acciaccatura a''16 gis''16 fis'' gis'' a''
 <b' b''>8\> <a' a''>\! <gis' gis''>8_\markup { \italic "cresc." } <fis' fis''>8
 <fis' fis''>8\staccato( <gis' gis''>\staccato) <a' a''>8([ <cis'' cis'''> <b' b''>]) <dis'' a'' dis'''>8\f\staccato
 <e'' gis'' e'''>4\staccato r8 <e' gis'>8\staccato
 <e' gis'>4.\sf <e' gis' e''>8\p\staccato <dis' fis' gis' dis''>4. <dis' fis' gis'>8\f\staccato
 <dis' fis' gis'>4. <dis' fis' gis' dis''>8\p\staccato <e' gis' e''>4. <e' gis'>8\f\staccato <e' gis'>4. <e' gis' e''>8\p\staccato
 <e' fis' e''>4. <cis' e'>8\f\staccato <b fis'>4.\sf <e' b' e''>8\sf <e' ais' cis'' e''>8 r r4
 <e'' cis'''>4.\<( <dis'' b''>8) <dis'' b''>8[( <cis'' ais''>\!) <cis'' ais''>\>( <dis'' b''>\!)]
 <e'' cis'''>4.\<( <dis'' b''>8 <cis'' ais''>8[ <e'' cis'''>\! <dis'' b''>\> <cis'' ais''>\!]
 <fis'' b''>8\pp[ ais'' gis'' fis''] gis''[ fis'' e'' dis'']) dis''4.( e''16 fis'') cis''8 fis''16([ gis''] fis'' gis'' fis'' gis'')
 << { <cis''' e'''>4.( <b'' e'''>8) <b'' dis'''>8[( <ais'' cis'''>) <ais'' cis'''>( <b'' dis'''>)]
 <cis''' e'''>4.( <b'' dis'''>8) cis'''8([ gis''' fis''' e'''] dis'''8 fis''' e''' dis''' cis''' e''' dis''' cis''' b''[ a''! gis'' gis'']) gis''16 } \\
 { fis''16-\omit\pp\< gis'' fis'' gis'' fis'' gis'' fis'' gis''\! fis''\> gis'' fis'' gis'' fis'' gis'' fis'' gis''\!
 fis''\< gis'' fis'' gis'' fis'' gis'' fis'' gis'' ais'' fis'' e''' fis'' dis''' fis'' cis''' fis''\!
 b''16_\markup { \italic "dimin." } fis'' dis''' fis'' cis''' fis'' b'' fis''
 ais'' fis'' cis''' fis'' b'' fis'' ais'' fis'' b'' fis'' a''! bis' gis'' bis' gis'' bis' bis' } >>
 gis'16\pp[ ais' b'] \acciaccatura dis''16 cis''16 b' cis'' dis'' e'' bis' cis'' dis'' \acciaccatura fis''16 e'' dis'' e'' fis''
 gis''16 fis'' e'' dis'' e'' dis'' cis'' gis'' dis'' cis'' b'! fis'' cis'' b' ais' fis''
 << { <fis' dis'' fis''>2_\markup { \italic "dolce" }( <e' cis'' e''>4 <dis' b' dis''> cis'' b'~ b' ais'8 fis'') } \\ { s2 s2 gis'4 gis' fis' fis' } >>
 \crescTextCresc <fis' a'! fis''>2\< <e' a' e''>4 <dis' fis' a' dis''>\!
 << { cis''4 b'~ b' a' } \\ { a'4 <dis' a'>_\markup { \italic "piu cresc." }~ <dis' a'> <dis' fis'>\sf } >>
 a'16\f( dis'' fis'' dis'' a''\> dis''' fis''' dis'''\! a'''4\p) r16
 << { dis'16( e' fis' gis'4 b'8 a' gis' fis') fis'8\staccato( gis'\staccato) a'8([ cis'' b' fis'] <b e' gis'>4) } \\
 { s16 s8 e'16 b e' b gis' b fis' b e' b dis' b dis' b e' b e' b e' b fis' b dis' b s4 } >> r8
 e''16( fis'' <gis' gis''>4 <b' b''>8 <a' a''> <gis' gis''> <fis' fis''>) <fis' fis''>8\staccato( <gis' gis''>\staccato)
 <a' a''>8_\markup { \italic "cresc." }([ <cis'' cis'''> <b' b''>]) <dis'' dis'''>8\p\staccato
 <e'' e'''>4\staccato r8 b'8( ais'4 e'' dis''4.) a'!8( gis'4 d''4 cis''4.) cis''8_\markup { \italic "cresc." }( bis'8 cis'')
 <cis' e' a'>8\staccato( <b! e' gis'>\staccato)
 << { gis'8( fis'4) fis'8 fis'([ b' ais' b'] e'4) } \\ { <ais e'>4 <a e'>4 <a dis'>8\p dis'4 dis'8 s4 } >> r8
 <b' b''>8( <ais' ais''>4 <e'' e'''> <dis'' dis'''>4.) <a'! a''!>8( <gis' gis''>4 <d'' d'''> <cis'' cis'''>4.)
 \crescTextCresc <cis'' cis'''>8\<( <bis' bis''>[ <cis'' cis'''>]) <a' a''>\staccato([ <gis' gis''>\staccato])
 <gis' gis''>8( <fis' fis''>4) <fis' fis''>8\! <fis' fis''>8\p([ <b' b''> <ais' ais''> <b' b''>]) <e' e''>4 r8
 << { e'16( fis' gis'4 b'8 a'! gis' fis') fis'8\staccato( gis'\staccato) a'8([ cis'' b' fis'] <b e' gis'>8) } \\
 { s8 e'16 b e' b gis' b fis' b e' b dis' b dis' b e' b e' b e' b fis' b dis' b s8 } >> r8
 \acciaccatura fis''16 e''16_\markup { \italic "cresc." } dis'' e'' fis'' \acciaccatura a''16 gis''16 fis'' gis'' a''
 <b' b''>8\> <a' a''>\! <gis' gis''>8 <fis' fis''>8_\markup { \italic "cresc." }
 <fis' fis''>8\staccato( <gis' gis''>\staccato) <a' a''>8[( <cis'' cis'''> <b' b''>) <dis'' a'' dis'''>8\f\staccato] <e'' gis'' e'''>4\staccato r8
 << { gis'8( a'[ cis'' b']) dis''8\staccato e''8 s8 s4 s2 } \\
 { e'8\p dis'4 e'8 a' gis'( g'4 g''8 a''8_\markup { \italic "cresc." }[ c''' b'']) <dis'' a'' dis'''>8\f\staccato } >> \bar "||"
 \key e \minor <e'' g'' e'''>4 r8 g'8\p( \crescTextCresc a'\<[ c'' b'] <a' dis''>)
 <g' e''>8\staccato <e'' g''>\staccato <e'' c'''>\staccato <e'' c'''>\staccato
 <e'' c'''>8\staccato[ <a'' c'''>\staccato <d''' f'''>\staccato <d''' f'''>\staccato] \bar "||"
 \key c \major <d''' f'''>\staccato[ <d''' f'''>\staccato <d''' f'''>\staccato <d''' f'''>\!\staccato]
 <d''' f'''>2\f~ <d''' f'''>2~ <d''' f'''>8_\markup { \italic "dimin." } <d''' f'''>4 <c''' e'''>8\staccato
 d'''\pp\staccato[ <d'' a''>\staccato <e'' g''>\staccato] <b' d'' g''>16[ g']
 << { \stemDown <g' e'' g''>2( <f' d'' f''>4 <g' c'' e''> \stemUp d''4 c''~ c'' b'8 g'') } \\ { s2 s2 a'4 a' g' g'  } >>
 << { \stemDown <g' ees'' g''>2( <f' d'' f''>4 <ees' g' c'' ees''> \stemUp d''4 c''~ c'' bis'8 gis'') } \\ { s2 s2 aes'4 a' g' fis'8 r } >>
 << { \stemDown <gis' e''! gis''>2( <fis' dis'' fis''>4 <gis' cis'' e''> \key e \major \stemUp dis''4 cis''~ cis'' bis'8 gis'') } \\
 { s2 s2 \key e \major a'4 ais' gis' gis' } >>
 << { \stemDown <gis' eis'' gis''>2( <fis' dis'' fis''>4 <eis' gis' cis'' eis''> \stemUp dis''4 cis'' bis' cis''8 a'') } \\
 { s2 s2 a'!4 a'~ a' a'8 fis'' } >> <a' fis'' a''>2\f~ <a' fis'' a''> <dis'' fis'' a'' dis'''>2\sf~ <dis'' fis'' a'' dis'''>2
 <fis'' a'' dis''' fis'''>2\sf~ <fis'' a'' dis''' fis'''>2
 fis''8\sf\staccato a'16\p[ c''] b' ais' b' gis' fis''8\sf\staccato a'!16\p[ c''] b' ais' b' gis'
 fis''8\sf\staccato a'!16\p[ c''] b' ais' b' a' gis' fis' gis' fis' e' dis' e' fis'
 << { gis'4( b'8 a' gis' fis') fis'8\staccato( gis'\staccato) a'8([ cis'' b' fis'] <b e' gis'>4) } \\
 { e'16 b e' b gis' b fis' b e' b dis' b dis' b e' b e' b e' b fis' b dis' b s4 } >> r8
 e''16( fis'' <gis' gis''>4 <b' b''>8 <a' a''> <gis' gis''> <fis' fis''>) <fis' fis''>8\staccato( <gis' gis''>\staccato)
 <a' a''>8_\markup { \italic "cresc." }([ <cis'' cis'''> <b' b''>]) <dis'' dis'''>8\p\staccato
 <e'' e'''>4\staccato r8 b'8( ais'4 e'' dis''4.) a'!8( gis'4 d''4 cis''4.) cis''8_\markup { \italic "cresc." }( bis'8 cis'')
 <cis' e' a'>8\staccato( <b! e' gis'>\staccato)
 << { gis'8( fis'4) fis'8 fis'([ b' ais' b'] e'4) } \\ { <ais e'>4 <a e'>4 <a dis'>8\p dis'4 dis'8 s4 } >> r8
 <b' b''>8( <ais' ais''>4 <e'' e'''> <dis'' dis'''>4.) <a'! a''!>8( <gis' gis''>4 <d'' d'''> <cis'' cis'''>4.)
 <cis'' cis'''>8_\markup { \italic "cresc." }( <bis' bis''>[ <cis'' cis'''>) <a' a''>\staccato( <gis' gis''>\staccato)]
 <gis' gis''>8( <fis' fis''>4) <fis' fis''>8 <fis' fis''>8\p([ <b' b''> <ais' ais''> <b' b''>]) <e' e''>4 r8
 << { e'16( fis' gis'4 b'8 a'! gis' fis') fis'8\staccato( gis'\staccato) a'8([ cis'' b' fis'] <b e' gis'>8) } \\
 { s8 e'16 b e' b gis' b fis' b e' b dis' b dis' b e' b e' b e' b fis' b dis' b s8 } >> r8
 \acciaccatura fis''16 e''16_\markup { \italic "cresc." } dis'' e'' fis'' \acciaccatura a''16 gis''16 fis'' gis'' a''
 <b' b''>8\> <a' a''>\! <gis' gis''>8_\markup { \italic "cresc." } <fis' fis''>8
 <fis' fis''>8\staccato( <gis' gis''>\staccato) <a' a''>8([ <cis'' cis'''> <b' b''>]) <dis'' a'' dis'''>8\f\staccato
 <e'' gis'' e'''>4\staccato r8 <e' gis'>8\sf\staccato <e' gis'>4. <e' gis' e''>8\p\staccato
 <dis' fis' gis' dis''>4. <dis' gis'>8\f\staccato <d' e' gis'>4.\sf <d' e' d''>8\p\staccato
 <cis' e' cis''>4. cis'8\f\staccato <b cis'>4.\sf <b cis' b'>8\p\staccato <a cis' a'>4. <cis'' fis'' a''>8\sf\staccato
 <b' fis'' a''>4. <fis' a'>8\f\staccato <e' a'>4. <a' e'' a''>8\f\staccato <a' dis'' fis'' a''>8\f r r4
 <a'' fis'''>4.\p\<( <gis'' e'''>8\!) <gis'' e'''>\>([ <fis'' dis'''>) <fis'' dis'''>( <gis'' e'''>8\!] <a'' fis'''>4. <gis'' e'''>8
 <fis'' dis'''>[ <a'' fis'''> <gis'' e'''> <fis'' dis'''>] <e'' e'''>8\pp[ dis''' cis''' b''] cis'''[ b'' a'' gis''])
 gis''4.( a''16 b'' fis''8) b'16([ cis''] b' cis'' b' cis'')
 << { <fis'' a''>4.( <e'' gis''>8) <e'' gis''>8[( <dis'' fis''>) <dis'' fis''>( <e'' gis''>)]
 <fis'' a''>4.( <e'' gis''>8) fis''8([ cis''' b'' a''] gis''[ b'' a'' gis''] fis''[ a'' gis'' fis''] e''[ d'') cis'' cis''] } \\
 { b'16-\omit\pp\< cis'' b' cis'' b' cis'' b' cis''\! b'\> cis'' b' cis'' b' cis'' b' cis''\!
 b'\< cis'' b' cis'' b' cis'' b' cis'' dis'' b' a'' b' gis'' b' fis'' b'\!
 e''_\markup { \italic "dimin." } b' gis'' b' fis'' b' e'' b' dis'' b' fis'' b' e'' b' dis'' a' b' gis' b' eis' b' eis' b' eis' } >>
 <eis' cis''>16 cis''16\pp[ dis'' eis''] \acciaccatura gis''16 fis''16 eis'' fis'' gis''
 a''16 eis'' fis'' gis'' \acciaccatura b''16 a'' gis'' a'' b'' cis'''16 b'' a'' gis'' a'' gis'' fis'' cis'''
 gis''16 fis'' e''! b'' fis'' e'' dis'' b''
 << { \stemDown <b' gis'' b''>2_\markup { \italic "dolce" }\( <a' fis'' a''>4 <b' e'' gis''>
 <cis'' fis''> <cis'' e''>( <b' e''>) \stemUp dis''8 b''\) } \\ { s2 s2 s2 s4 b'4 } >>
 << { \stemDown <b' d'' b''>2( <a' d'' a''>4 <gis' b' d'' gis''> <d'' fis''> \stemUp e''4) } \\ { s2 s2 s4 d''4 } >>
 <b' d'' e''>4 <d'' d'''>4\sf <d'' d'''>2\sf \bar "||"
 \key c \major
 <f'' f'''>2\sf <f'' f'''>16\f f'16[ b' d''] f''\> b'' d''' b''\! f'''4\p r8
 << { \stemDown e''8( f''\pp[ aes'' g'' d''] e''[ f'' e'' b'] \stemUp c''4 cis''
 d'' a''~ a''8_\markup { \italic "sempre pp" }[ bes'' a'' f''] bes''[ f'' eis'' cis'']) } \\
 { s8 s2 s2 e'2 d'4 f'4\rest s2 s2 } >> \bar "||"
 \key e \major fis''8([ cis'' cis'' ais']) ais''([ fis'' fis'' cis'']) \crescTextCresc cis'''\<([ a''! a'' fis''] c'''[ fis''\! b''\f fis''16]) r16
 r4 dis''16\f( b'' dis'' e'' fis''\sf b'' fis'' gis'' a''\sf b'' a'' gis'')
 fis''16\sf b'' fis'' e'' dis''_\markup { \italic "dimin." } b'' dis'' e'' fis'' b'' fis'' gis'' a'' b'' a'' gis''
 fis'' b'' fis'' e'' dis''\p b'' dis'' e'' fis''_\markup { \italic "sempre piu piano" } b'' fis'' gis'' a'' b'' a'' gis''
 fis''16 b'' fis'' e'' dis'' e'' dis'' cis'' b' cis''^\markup { \italic "poco ritard." } dis'\pp e' fis' a' gis' fis'
 gis'16^\markup { "a tempo" } b' b b' gis' b' fis' b' e' b' dis' b' dis' b' eis' b' fis' b' a' b' gis' b' b' dis''
 b'16 e'' b' fis'' b' fisis'' b' gis''
 << { gis''4( b''8 a'' gis'' fis'') fis''\staccato( gis''\staccato) a''8([ cis''' b'']) } \\
 { b'16 e'' b' e'' e'' a' cis'' e'' e'' b' dis'' b' dis'' b' e'' b' fis''_\markup { \italic "cresc." } b' gis'' b' fis''[ b'] } >>
 <dis'' a'' dis'''>8\p\staccato <e'' gis'' e'''>16 e''( b' gis' b' gis' fis' dis'') fis' e'' cis'' fis' fis' fis'' cis'' fis'
 fis'16 dis'' b' fis' dis' b' e' a'! e' b' gis' e' e' e'' b' e' e' e'' cis'' a' e'_\markup { \italic "cresc." } e'' e' e''
 e'16 e'' e' e'' e' e'' e' e'' e' e'' e' e'' e' e'' e' e'' dis'\p dis'' b' fis' fis' fis'' dis'' a'!
 gis'4 r8 <b' b''>8( <ais' ais''>4 <e'' e'''> <dis'' dis'''>4.) <a'! a''!>8( <gis' gis''>4 <d'' d'''> <cis'' cis'''>4.)
 <cis'' cis'''>8_\markup { \italic "cresc." }( <bis' bis''> <cis'' cis'''>)
 <a' a''>8\staccato( <gis' gis''>\staccato) <gis' gis''>8( <fis' fis''>4) <fis' fis''>8
 <fis' fis''>8\p([ <b' b''> <ais' ais''> <b' b''>]) <e' e''>([ <b' b''> <ais' ais''> <b' b''>])
 r16 dis''( b'' a''! fis'' dis'' b' a') r gis'( b'' gis'' e'' b' a' gis')
 <fis' fis''>8_\markup { \italic "cresc." }([ <b' b''> <ais' ais''> <b' b''>]) <eis' eis''>([ <d'' d'''> <cis'' cis'''> <d'' d'''>])
 cis'''8([ fis'' a'' cis''] fis''_\markup { \italic "dimin." }[ cis'' e''! fis'] b'[ gis' b' e'] dis'!\pp[ b' <dis' fis'> <dis' b'>])
 r16 d'_\markup { \italic "cresc." }( gis' eis') r cis'( a' fis') r b'( b'' gis'') r cis''( cis''' a'')
 r16 d''( d''' b'') r cis''( cis''' b'') R2 R2
 fis''8[ cis'''_\markup { \italic "p dolce" }( b'' fis''] a''2~ a''8[ a'' gis'' e''] gis''2)~ gis''8[ <e'' gis''>( <dis'' fis''> <b' dis''>]
 <dis'' fis''>)[ <bis' fis''>( <cis'' e''> <a' cis''>] <cis'' e''>)[ <ais' e''>( <b'! dis''> <gis' b'>]
 <b' d''>)[ <gis' d''>( <a'! cis''> <dis'! c''>] \crescTextCresc <e' b'>\<) <cis'! b'> <dis' a'>16 fis' e' fis'\!
 << { gis'4( b'8 a' gis' fis') fis'\staccato( gis'\staccato) a'8([ cis'' b' a']) gis'4 d''8\rest gis'8( a'[ cis'' b' fis'] <e' gis'>4) } \\
 { e'16\p b e' b gis' b fis' b e' b dis' b dis' b e' b e' b e' b fis' b dis' b b b e' b e' b e' b
 e'_\markup { \italic "dimin." } b e' b fis' b dis' b b4 } >> r8
 <gis' gis''>8( <a' a''>_\markup { \italic "ri    --    --    --    tar    --    --" }[ <cis'' cis'''> <b' b''>) <dis'' dis'''>8] <e'' e'''>4 r
 << { s2 a''8\rest fis''8[( e'' cis''']) } \\ { c'8\rest a8([ gis e']) e'8 s8 s4 } \\
 { d''4\rest d''8\rest gis'8 fis'\noBeam \stemDown <cis'' e''> cis''4 } >>
 cis'''16_\markup { "accelerando" }_\markup { "crescendo" } b'' gis'' e'' dis'' cis'' b' a' gis' fis' e' e'' dis'' cis'' cis''' b''
 b''16 a'' a''' gis''' gis''' fis''' a''' fis''' e''' dis''' fis''' a''\p a'' gis'' e'''^\markup { "a tempo." } gis''
 fis''\pp( cis''' b'' dis'' e''8) \bar "||"
}

 \new Staff = "down" {
 \clef bass
 \key e \major
 \time 2/4
 \partial 8 r8 <e, e>8\p r r4 <b,, b,>8 r r4 <cis, cis>8 r <dis, dis> <b,, b,> <e, e>16 gis b a gis a gis fis
 e16 b b, b e b b, b dis b b, b dis b eis b fis b a b gis[ b] <b, fis>[ a] <e gis> b gis e dis b fis dis cis ais fis cis fis, ais fis cis
 b,16 b fis dis b, b cis a! b, gis e b, e, gis e b, a, a e cis a, e a, e gis, e a, e a, e b,! e cis e cis e c e c e
 b,16 fis b, <fis a> b, <fis a> b, <fis a>
 <e gis>16 b gis e dis b fis dis cis ais fis cis fis, ais fis cis b, b fis dis b, b cis a! b, gis e b, e, gis e b,
 a, a e cis a, e a, e gis, e a, e <a, cis> e <b,! e> gis <cis e> ais <cis e> ais <c e> a <c e> a
 <b, dis>16 a <b, dis> a <b, dis> a <b, dis> a <e gis> e dis cis b, a, gis, fis, e,8 r r4 b,,8 r r4
 cis,8 r dis,8[ b,,] e,8 \clef treble e'16[ b] e'[ b e' b] e' b e' b gis' b fis' b e' b dis' b dis' b eis' b fis' b a' b gis' b fis' b
 \clef bass e'16 b gis b e8 r cis'16[ gis e gis] cis8 cis'\staccato bis16[ gis dis gis] bis,8 bis\staccato
 gis16[ dis bis, dis] gis,8 bis\staccato cis'16[ gis e gis] cis8 cis'\staccato b!16[ gis e gis] b,!8 b\staccato
 ais16[ fis cis fis] ais,8 ais, gis,16[ e, b,, e,] gis,,8 <gis,, gis,> <fis,, fis,>8 \clef treble fis'16\p([ gis'] fis'[ gis' fis' gis'])
 << { fis'16( gis' fis' gis' fis' gis' fis' gis') fis' gis' fis' gis' fis' gis' fis' gis'
 fis' gis' fis' gis' fis' gis' fis' gis' fis' gis' fis' gis' fis' gis' fis' gis' } \\
 { <ais cis'>4.( <b dis'>8) <b dis'>8[( <cis' e'>) <cis' e'>( <b dis'>)]
 <ais cis'>4.( <b dis'>8 <cis' e'>8[ <ais cis'> <b dis'> <cis' e'>]) } >>
 <dis' fis'>16\pp b' fis' b' e' b' dis' b' e' b' fis' b' gis' b' eis' b' << { fis'16 gis' ais' b' ais' b' cis'' dis'' } \\ { fis'2 } >>
 <fis' ais'>8 gis'16([ fis'] gis' fis' gis' fis') << { gis'16 fis' gis' fis' gis' fis' gis' fis' gis' fis' gis' fis' gis' fis' gis' fis'
 gis' fis' gis' fis' gis' fis' gis' fis' } \\ { <ais cis'>4.( <b dis'>8) <b dis'>8[( <cis' e'>) <cis' e'>( <b dis'>)] <ais cis'>4.( <b dis'>8) } >>
 <cis' e'>16([ fis'] \clef bass <fis ais>16 fis' <gis b> fis' <ais cis'> fis'
 \clef treble <b dis'> fis' <gis b> fis' <ais cis'> fis' <b dis'> fis')
 <cis' e'>16( fis' <ais cis'> fis' <b dis'> fis' <cis' e'> fis' dis' fis' dis' fis' dis' fis' dis' fis') <dis' fis'>8 r8 r16 gis[ ais bis]
 cis'16 gis ais bis \acciaccatura dis'16 cis' bis cis' dis' e' dis' e' fis' gis' fis' e' eis' \clef bass fis'8 r fis r
 \tupletSpan 4
 \tuplet 3/2 { b,8([ fis dis] b,[ b fis] cis[ ais fis] dis[ b fis] e[ cis' gis] eis[ d'! gis] fis[ dis'! b] e![ cis' ais]) }
 dis16 b fis dis b, fis dis b, cis a e cis dis b fis dis e cis' a e fis b a fis fis b a fis c a fis dis
 c a fis dis c a fis dis b, a fis dis b, a gis fis
 <e, e>8\p r r4 <b,, b,>8 r r4 <cis, cis>8 r <dis, dis> <b,, b,> <e, e>16 gis b a gis a gis fis
 e16 b b, b e b b, b dis b b, b dis b eis b fis b a b gis[ b] <b, fis>[ a] <e gis> b gis e dis b fis dis cis ais fis cis fis, ais fis cis
 b,16 b fis dis b, b cis a! b, gis e b, e, gis e b, a, a e cis a, e a, e gis, e a, e a, e b,! e cis e cis e c e c e
 b,16 fis b, <fis a> b, <fis a> b, <fis a>
 <e gis>16 b gis e dis b fis dis cis ais fis cis fis, ais fis cis b, b fis dis b, b cis a! b, gis e b, e, gis e b,
 a, a e cis a, e a, e gis, e a, e <a, cis> e <b,! e> gis <cis e> ais <cis e> ais <c e> a <c e> a
 <b, dis>16 a <b, dis> a <b, dis> a <b, dis> a <e gis> e dis cis b, a, gis, fis, e,8 r r4 b,,8 r r4
 cis,8 r dis,8[ b,,] e,8 \clef treble e'16[ b] e'[ b e' b] e' b e' b gis' b fis' b e' b dis' b dis' b eis' b fis' b a' b gis' b fis' b
 \clef bass e'!16 b gis b e b b, b fis b a b gis b fis b e b e' b e' b e' b \clef treble fis' b a' b g' b fis' b \bar "||"
 \key e \minor \clef bass e'16 b g b e b b, b fis b a b g b fis b e e' d! d'! c c' b, b a, a g, g f, f e, e \bar "||"
 \key c \major d,16 d c, c b,, b, a,, a, g,, g, b,, b, d, d fis, fis g, g b, b d d' fis fis' g g' a a' \clef treble b b' c' c'' f' c'' fis' c'' g'[ c'']
 \clef bass g8 \tupletSpan 4
 \tuplet 3/2 { c8[ g e] c[ c' g] d[ b g] e[ c' g] f[ d' a] fis[ ees' c'] g[ e'! c'] g[ f' <b d'>] }
 <c c'>16( g ees g c c' g c d b g d ees c' g ees f d' aes f fis ees' c' fis g ees' c' g gis dis' bis dis')
 \tupletSpan 4 \tuplet 3/2 { <cis cis'>8[ gis e] cis[ cis' gis] dis[ bis gis] e[ cis' gis] }
 \bar "||" \key e \major \tuplet 3/2 { fis8[ dis' a] fisis[ e' cis'] gis[ e' cis'] } gis16 dis' bis dis'
 <cis cis'>16 gis eis gis cis cis' gis cis dis bis gis dis eis cis' gis eis fis cis' a fis fis cis' a fis fis cis' a fis e! cis' a e
 <dis b!>8 a16\sf[ c'] b\p ais b fis dis cis dis b, dis8\staccato fis\staccato
 r8 a16\sf c' b\p ais b fis dis cis dis b, dis8\staccato fis\staccato r8 a16\sf c' b\p ais b fis dis cis dis b, dis cis dis fis
 a8\staccato dis8([ fis b]) a8\staccato dis8([ fis b]) a8\staccato dis8([ fis b])~ b16 a b a gis a gis fis
 <e, e>8 r r4 <b,, b,>8 r r4 <cis, cis>8 r <dis, dis> <b,, b,> <e, e>16 gis b a gis a gis fis
 e16 b b, b e b b, b dis b b, b dis b eis b fis b a b gis[ b] <b, fis>[ a] <e gis> b gis e dis b fis dis cis ais fis cis fis, ais fis cis
 b,16 b fis dis b, b cis a! b, gis e b, e, gis e b, a, a e cis a, e a, e gis, e a, e a, e b,! e cis e cis e c e c e
 b,16 fis b, <fis a> b, <fis a> b, <fis a>
 <e gis>16 b gis e dis b fis dis cis ais fis cis fis, ais fis cis b, b fis dis b, b cis a! b, gis e b, e, gis e b,
 a, a e cis a, e a, e gis, e a, e <a, cis> e <b,! e> gis <cis e> ais <cis e> ais <c e> a <c e> a
 <b, dis>16 a <b, dis> a <b, dis> a <b, dis> a <e gis> e dis cis b, a, gis, fis, e,8 r r4 b,,8 r r4 cis,8 r dis,8\staccato[ b,,\staccato]
 e,8 \clef treble e'16[ b] e'[ b e' b] e' b e' b gis' b fis' b e' b dis' b dis' b eis' b fis' b a' b gis' b fis' b
 \clef bass e'16( b gis b) e8 r cis'16( gis e gis) cis8 cis'\staccato bis16( gis dis gis) bis,8 bis\staccato
 b!16 gis e! gis b,!8 b\staccato a16 e cis e a,8 a\staccato gis16 eis cis eis gis,8 gis\staccato fis16 cis a, cis fis,8 fis'\staccato
 dis'16 b fis b dis8 dis\staccato c16 a, e, a, c,8 <c c'>\staccato <b, b>8 \clef treble b'16\p([ cis''!] b' cis'' b' cis'')
 << { b'16 cis'' b' cis'' b' cis'' b' cis'' b' cis'' b' cis'' b' cis'' b' cis'' b' cis'' b' cis'' b' cis'' b' cis''
 b' cis'' b' cis'' b' cis'' a' b' } \\
 { <dis' fis'>4. <e' gis'>8 <e' gis'>[( <fis' a'>) <fis' a'>( <e' gis'>] <dis' fis'>4. <e' gis'>8
 <fis' a'>8[ <dis' fis'> <e' gis'> fis']) } >> <gis' b'>16\pp e'' b' e'' a' e'' gis' e'' a' e'' b' e'' cis'' e'' ais' e''
 << { b'16 cis'' dis'' e'' dis'' e'' fis'' gis'' dis''8 } \\ { b'2 b'8 } >>
 \clef bass << { cis'16([ b] cis' b cis' b) cis' b cis' b cis' b cis' b cis' b cis' b cis' b cis' b
 cis'16 b cis' b cis' b cis' b a b dis b e b fis b gis b e b fis b gis b a b fis b gis b a dis' } \\
 { g,8\rest g,4\rest <dis fis>4. <e gis>8 <e gis>8[( <fis a>) <fis a>( <e gis>] <dis fis>4. <e gis>8)
 fis8[ b, cis dis] e[ cis dis e] fis[ dis e fis] } >> gis16 b gis b gis b gis b
 <gis b>8 r \clef treble r16 cis'16[ dis' eis'] fis'16 cis' dis' eis' \acciaccatura gis'16 fis' eis' fis' gis'
 a'16 gis' a' b' cis'' b' a' ais' b'8 r b r
 \clef bass \tupletSpan 4
 \tuplet 3/2 { e8[ b gis] e[ e' b] fis[ dis' b] gis[ e' b] a[ fis' cis'] ais[ g' e'] b[ gis'! e'] a![ fis' dis'] }
 gis16 e' b gis e b gis e fis d' a fis gis e' b gis a fis' d' a b gis' d' b gis d' b gis f d' b gis f d' b aes f d' b aes\bar "||"
 \key c \major d16 b aes f d b aes f b, aes f d b, aes f d b, g f d b, g b, g <b, g>4\pp r8 \clef treble
 << { g'8 g'[ aes' g' d'] } \\ { s8 g4\rest g8\rest g8 } >>
 \clef bass g8([ bes a <e g>] <f a>[ <g bes> <f a> <cis e>] <d f>)
 \clef treble <d' f'>4\( <c' ees'>8~ <c' ees'>[ <bes des'>( <ais cis'>) <gis b>\)]~
 \key e \major <gis b>8 \clef bass <fis ais>4 <fis ais>8~ <fis ais>8 <fis ais>4 <fis ais>8~ <fis ais>8 <fis a cis'>4
 <e fis a cis'>8~ <e fis a cis'>8[ <dis fis a b>] dis16\f b dis e fis b fis gis a\f b a gis
 fis16\sf b fis e dis\sf b dis e fis\sf b fis gis a b a gis fis b fis e dis b dis e fis b fis gis a\p b a gis
 fis16 b fis e dis b dis e fis b fis gis a gis a ais b ais! a\pp gis fis <b, dis> <cis e> <dis fis>
 << { gis4( b8 a gis[ fis) fis\staccato( gis\staccato)] a8([ cis' b fis] gis) } \\
 { e8 g,8\rest g,4\rest b,8 g,8\rest g,4\rest b,8 a,8\rest b,8( a, gis,) } >> r8 r4
 e16 e' e e' cis cis' a, a b, b b, b \clef treble a a' gis gis' \clef bass fis fis' e e' dis dis' b, b <e e'>4 r8
 <dis b>8( <cis ais>4 <ais e'> <b dis'>) <b, b>8( <cis a!> <d gis>4 <gis d'> <a cis'>4.)
 <a cis'>8( <gis bis> <a cis'> <cis a>\staccato <b,! gis>\staccato) <b, gis>8( <ais, fis>4) <ais, fis>8
 << { fis8([ b ais b]) } \\ { b,2 } >> e16 b gis e dis b fis dis cis ais fis cis fis, ais fis cis
 b,16 b fis dis b, b cis a! b, gis e b, e, gis e b, a, a e cis a, e a, e gis, e a, e <a, cis> e <b, e> gis
 <cis e>16 ais <cis e> ais <c e> a <c e> a b,\p <dis fis a> b, <dis fis a> b, <dis fis a> b, <dis fis a>
 b,16 <e gis> b, <e gis> b, <e gis> b, <e gis>
 << { fis8([ b ais b]) e([ b ais b]) } \\ { <b, fis>2 <b, e>2 } >> b,16 <dis fis a!> b, <dis fis a> b, <dis fis a> b, <dis fis a>
 b,16 <d eis gis> b, <d eis gis> b, <d eis gis> b, <d eis gis> a, <cis fis> a, <cis fis> a, <cis fis> a, <cis fis>
 ais,16 <cis e! fis> ais, <cis e fis> ais, <cis e fis> ais, <cis e fis> b, <e gis> b, <e gis> b, <e gis> b, <e gis>
 b,\pp fis b, dis! b, b b, b b4( a <gis b> <fis a>) <eis gis>8 r <eis gis> r r4 r8
 \clef treble << { cis'16( dis'! e'!8[ g' fis' cis']) dis'2~ dis'8( fis' e' cis') e'2~ e'8( e' dis' b) } \\
 { s8 ais2 b2~ b2~ b2~ b4. e8\rest } >>
 \clef bass << { dis'8([ ais b dis'] b[ gis a! cis'] a[ fisis gis b] gis[ eis fis a] gis e!) fis16 a gis fis e8 } \\
 { R2 g,4\rest b,8 a,8\rest g,4\rest b,8 a,8\rest g,4\rest b,8 b,~ b,8 b,4 b,8 e,8 } >> r8 r4 <b,, b,>8 r r4
 <cis, cis>8 r <dis, dis> <b,, b,> <e, e>4 r8 b,8( cis4 dis8 <b, a>)
 <e gis>16 b, <e gis> b, <e gis> b, <eis gis> b, <fis a> b, <a cis'> b, <gis b> b, <fis a> b, <e gis>8
 fis,8([ e, cis] b,4. cis16 b, ais,4) \clef treble <ais e' fis'>4 <b e' gis'>8 r <b fis'> r <cis' e'> r \clef bass <a cis'> r
 <fis a>8 r <dis fis> r <b dis'> r <cis' e'> <cis' e'> a([ b] e) \bar "||"
}
>>

 \layout { }

 \midi { }

}


%{
2007/01/21 2.10.3 original(?) by Stelios Samelis
2017/11/04 2.18.2 by gmail's jjocanoe
convert-ly.py (GNU LilyPond) 2.18.2  convert-ly.py: Processing `'...
Applying conversion: 2.11.2, 2.11.3, 2.11.5, 2.11.6, 2.11.10, 2.11.11,
2.11.13, 2.11.15, 2.11.23, 2.11.35, 2.11.38, 2.11.46, 2.11.48,
2.11.50, 2.11.51, 2.11.52, 2.11.53, 2.11.55, 2.11.57, 2.11.60,
2.11.61, 2.11.62, 2.11.64, 2.12.0, 2.12.3, 2.13.0, 2.13.1, 2.13.4,
2.13.10, 2.13.16, 2.13.18, 2.13.20, 2.13.27, 2.13.29, 2.13.31,
2.13.36, 2.13.39, 2.13.40, 2.13.42, 2.13.44, 2.13.46, 2.13.48,
2.13.51, 2.14.0, 2.15.7, 2.15.9, 2.15.10, 2.15.16, 2.15.17, 2.15.18,
2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39, 2.15.40, 2.15.42,
2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29,
2.17.97, 2.18.0
%}
