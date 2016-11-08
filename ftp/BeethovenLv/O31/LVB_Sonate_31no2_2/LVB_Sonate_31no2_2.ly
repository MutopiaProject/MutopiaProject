\version "2.18.2"

 \header {
  title = "Piano Sonate Opus 31 No 2 (2nd Movement)"
  composer = "Ludwig Van Beethoven"
  mutopiatitle = "Sonata No. 17 (2nd Movement: Adagio)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano"
  mutopiaopus = "Op. 31, No. 2"
  date = "1802"
  source = "Breitkopf & Hartel (1862-1865)"
  style = "Classical"
  license = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2016/11/05"   % - Alex Schreiber

 footer = "Mutopia-2016/11/08-1510"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\score {

 \new GrandStaff
 <<
 \new Staff = "up" {
 \clef treble
 \key bes \major
 \time 3/4
 \override Score.MetronomeMark.transparent = ##t
 \tempo 4 = 40
 \override TextScript.padding = #2.0
 \set GrandStaff.connectArpeggios = ##t
 \clef bass <d f bes>2.\p\arpeggio^\markup { \large "Adagio." }
 \clef treble d''8..( ees''32) f''4 \clef bass <d f bes>4 <ees f a>2. \clef treble a''8..( bes''32) c'''4 <c' ees'>4
 <bes d'>2. \bar "" \cadenzaOn \override NoteHead.font-size = #-2 d'16([ f' ees' d' ees' f' g' a' bes' c''])
 \cadenzaOff \bar "|" \override NoteHead.font-size = #0 d''8..( ees''32) f''4 <aes' f''>4\sf \break
 << { f''4( ees''8)[ d'' c''\staccato( c''\staccato)] c''8^\trill[ \grace { b'16[ c''] } d''16 c''] c''8 } \\
 { g'4.\p bes'!8_\markup { \italic "cresc." }[ bes' bes'] bes'4( a'!8) } >> r8
 \clef bass r16 f16\p([ <ees! g> <c a>]) << { bes2. } \\ { <bes, d>8.( <c ees>32 <d f>4) <d f>4 } >>
 \clef treble d''8(~ d''16.^\turn ees''32) f''4 \clef bass <d f bes>4
 << { a2. } \\ { <c ees>8.( <d f>32 <ees ges>4) <ees ges>4 } >> \break
 \clef treble c'''8(~  \once \override TextScript.script-priority = #-1
 c'''16.^\turn^\markup { \natural } d'''32 ees'''4) <ees' ges'>4\sf << { f'2 } \\ { ees'8 e'8\rest e'4\rest } >> r4
 \clef treble c'''8(~  \once \override TextScript.script-priority = #-1
 c'''16.^\turn^\markup { \natural } d'''32 ees'''4) \set doubleSlurs = ##t <a' ees''>4( <bes' d''>8) r8
 << { g''2^\f f''2^\p } \\ { e'4\rest <g' bes' des''>8\f\staccato e'8\rest e'4\rest <f' bes' d''!>8\p\staccato e'8\rest } >>
 <c' ees' a'>8\staccato r8 \break
 <bes d' bes'>8\staccato r8 r4 r4 \set doubleSlurs = ##f \clef bass <g bes ees'>4( <f bes d'> <e bes cis'>)
 \set doubleSlurs = ##t <e bes cis'>4( <f bes d'>8) r8 r4 \break
 << { c'!4(~  \once \override TextScript.script-priority = #-1
 c'8^\turn^\markup { \natural }[ ees' c' a]) } \\ { <ees g>2 <ees ges>4 } >> <ees ges a c'>4( <d f bes>8) r8 r4
 \clef treble \set doubleSlurs = ##f <d' bes'>4_\markup { \italic "cresc." }( <bes d' g'> <a d' f'>) \break
 <g c' e'>4.\p <g c' e'>8([ <a c' f'> <bes c' g'>]) <bes c' g'>8.([ <gis c' e'>16]) <a c' f'>8\staccato
 <a c' f'>8([ <c' e' g'!>_\markup { \italic "cresc." } <c' f' a'>])
 << { <f' a'>8.( <dis' fis'>16) <e' g'>8\staccato } \\ { c'4. } >> <c' e' g'>8([ <c' f' a'> <c' g' bes'>]) \break
 << { <g' bes'>8.([ <e' gis'>16]) <f' a'>8\staccato } \\ { c'4. } >> <c' f' a'>8[ <d' f' aes' bes'>8\f <d' f' aes' bes'>]
 <e' g' c''>8\p\<( <c' e' g'>4) <c' e' g'>8\!\>([ <d' f' b'> <d' f' g'>\!])
 <c' e' c''>8\<( <c' e' g'>4) <c' e' g'>8\!\>([ <d' f' b'> <d' f' g'>\!]) \break
 <c' e' c''>8 <c' e' g'>4_\markup { \italic "dim." } \clef bass < g c' e'>4 <e g c'>8~ <e g c'>8
 r8_\markup { \italic "cresc." } r4 r16 \clef treble d'32\<[ e'\staccato f'\staccato g'\staccato a'\staccato bes'\staccato\!]
 << { c''4(~ c''8..[ a'32 f''8.. d''32]) } \\ { d'4\rest f'4\p_\markup { \italic "    dolce" } f'4 } >> \break
 << { c''4(~ c''8..[ a'32 bes'8.. g'32]) } \\ { d'4\rest f'4 f'8([ d']) } >> << { f'2( a'16[ g' f' g']) g'8..([ gis'32]) a'8 } \\
 { b8\rest a( c'4) c'4 c'4 c'8 } >> r8 r32 c'32\staccato_\markup { \italic "cresc." }[ d'\staccato
 e'\staccato f'\staccato g'\staccato a'\staccato bes'\staccato] \break
 << { c''4(~ c''8..[ a'32 f''8.. d''32]) c''4(~ c''8..[ a'32]) c''16([ bes'8 g'16]) } \\
 { d'8.\rest e'16\p f'2 d'8.\rest e'16 f'4 f'8([ d']) } >>
 \clef bass << { f'2( c'4) } \\ { a8([ <f a>_\markup { \italic "cresc." } <a c'> <f a> <e g> <c e>]) } >>
 <c f a>8\p r8 r4 r8 \clef treble f'8\p << { f'4( ges'4.) ges'8 ges'4( a'4.) a'8 } \\
 { s4 <a c' ees'>2 s4 <c' ees' ges'>2 } >> \break
 << { a'4( c''4.) c''8 } \\ { s4 <ees' ges' a'>2 } >> c''8( ees''\sf)~
 ees''16_\markup { \italic "decresc." }[ d''32 c'' bes' a' g' f'] e'[ ees' d' c' bes a ees' a]
 \clef bass << { <d bes>2 } \\ { d8..\p( ees32 f4) } >> f4 \break
 \clef treble d''8(~ d''16.^\turn ees''32) f''4 \clef bass <d bes>4 << { <ees a>2. } \\ { ees8..( f32 ges4) ges4 } >>
 \clef treble a''8(~ a''16.^\turn bes''32 c'''4)
 \clef bass << { <c' ees'>4 a8..( bes32 ces'4) ces'4 } \\ { f4 <f d'>2. } >>
 \clef treble d''8\<(~ d''16.^\turn ees''32) f''4\! <aes' f''>4\sf \break
 << { f''4( ees''8)[ d'' c''\staccato( c''\staccato)] c''8^\trill[ \grace { b'16[ c''] } d''16 c''] c''8 } \\
 { g'4.\p_\markup { \italic "    cresc." } bes'!8[ bes' bes'] bes'4( a'!8) } >> r8
 \clef bass r32 f32\p([ g f e f <ees g> <c a>]) << { bes2. } \\ { <bes, d>8..( <c ees>32 <d f>4) <d f>4 } >> \break
 \clef treble d''8(~ d''16.^\turn ees''32 f''4) \clef bass bes4
 << { a2. } \\ { <c ees>8..( <d f>32 <ees ges>4) <ees ges>4 } >> \break
 \clef treble c'''8(~  \once \override TextScript.script-priority = #-1 c'''16.^\turn^\markup { \natural } d'''32) ees'''4
 <c' ees' ges'>4\sf << { f'2~ f'8 } \\ { <c' ees'>8( <a c'>16.)[ <b d'>32] <c' ees'>4 <c' ees'>8 } >> r16 c'''16 \break
 c'''8(~  \once \override TextScript.script-priority = #-1 c'''16.^\turn^\markup { \natural } d'''32) ees'''4
 <a' c'' ees''>4\sf( <bes' d''>8) r8 << { g''2^\f } \\ { g'4\rest <g' bes' des''>8\f\staccato g'8\rest } >> \break
 << { f''2^\p } \\ { f'4\rest <f' bes' d''!>8\p\staccato g'8\rest } >> <c' ees' f' a'>8\staccato r8
 <bes d' f' bes'>8\staccato r8 r4 r4 \clef bass <aes bes f'>4( <g bes ees'> <fis bes d'>) \break
 <fis bes d'>4( <g bes ees'>8) r8 r4 \clef treble <bes f'! aes'>4( <bes ees' g'> <bes d' fis'>)
 << { <d' fis'>4( <ees' g'>4)~ <ees' g'>8[ g'] } \\ { bes2~ bes8 s8 } >>
 <g' ees''>4_\markup { \italic "cresc." }( <ees' g' c''> <d' g' bes'>) \break
 <c' f' a'>4.\p <c' f' a'>8([ <d' f' bes'> <ees' f' c''>])
 << { <ees' c''>8.([ <cis' a'>16]) <d' bes'>8\staccato } \\ { f'4. } >>
 <d' f' bes'>8_\markup { \italic "cresc." }([ <f' a' c''> <f' bes' d''>])
 << { <bes' d''>8.([ <gis' b'>16]) <a' c''>8\staccato } \\ { f'4. } >> <f' a' c''>8([ <f' bes' d''> <f' c'' ees''>]) \break
 << { <c'' ees''>8.([ <a' cis''>16]) <bes' d''>8\staccato } \\ { f'4. } >>
 <f' bes' d''>8([ <g' bes' des'' e''>\f <g' bes' des'' e''>]) <a' c'' f''>8\p\<( <f' a' c''>4)
 <f' a' c''>8\!\>([ <g' bes' e''> <g' bes' c''>\!]) <f' a' f''>8\< <f' a' c''>4
 <f' a' c''>8\!\>([ <g' bes' e''> <g' bes' c''>\!]) \break
 <f' a' f''>8 <f' a' c''>4_\markup { \italic "decresc." } <c' f' a'>4 <a c' f'>8~ <a c' f'>8 r8 r4
 r16 g'32\staccato\<[ a'\staccato bes'\staccato c''\staccato d''\staccato ees''\staccato\!]
 << { f''4\p_\markup { \italic "    dolce" }(~ f''8..[ d''32 bes''8.. g''32]) f''4(~ f''8..[ d''32 ees''8.. c''32]) } \\
 { g'4\rest bes'4 bes' g'4\rest bes'4 bes'8( g') } >> \break
 << { bes'2( d''16[ c'' bes' c'']) c''8..([ cis''32]) d''8 } \\ { b8\rest d'8( f'4) f'4 f'4 f'8 } >> r8 r32
 f'32\staccato_\markup { \italic "cresc." }[ g'\staccato a'\staccato bes'\staccato c''\staccato d''\staccato ees''\staccato]
 << { f''4\p(~ f''8..[ d''32 bes''8.. g''32]) f''4(~ f''8..[ d''32]) f''16([ ees''8 c''16]) } \\
 { g'8.\rest a'16 bes'2 g'8.\rest a'16 bes'4 bes'8( g') } >> \break
 << { bes'2( f'4) } \\ { d'8_\markup { \italic "cresc." }[( <bes d'> <d' f'> <bes d'>) <a c'>( <f a>)] } >>
 <f bes d'>8\p r8 r4 r8 \clef bass bes8
 << { \stemDown bes4_\markup { \italic "cresc." }( \stemUp ces'4.) ces'8 } \\ { s4 <d f aes>2 } >> \break
 << { \stemDown ces'4( \stemUp d'4.) d'8 } \\ { s4 <f aes>2 } \\ { s4 ces'2 } >>
 \clef treble d'4(~ <aes ces' d' f'>4 <ces' d' f' aes'>)
 << { ces''2^\sf( bes'8 aes') } \\ { d'4\rest <d' f' aes'>4 <d' f'> } >> \break
 << { fis'4^\p g'4. bes'8 } \\ { a4\rest <bes ees'>2 } >>
 << { ees''2( c''8 a') } \\ { f'4\rest a'!4\sf\>~ a'8\! s8 } \\ { \stemDown s4 <ees' ges'>2 } >>
 << { c''4\p( bes'4. d''8) } \\ { f'4\rest <d' f'>4_\markup { \italic "cresc." } <f' aes'> } >> \break
 << { f''8( ees''4.*2/3\sf \tweak Stem.transparent ##t a'8~ <a' c''>8[ a']) } \\ { e'4\rest <g' bes'>8[ <ges'~ a'!>\sf <ees' ges'> <c' ees' ges'>] } >>
 <d' f' bes'>8 r8 r4 r32 f'32\staccato[ e'\staccato f'\staccato g'\staccato a'\staccato bes'\staccato c''\staccato]
 << { <bes' d''>8..([ <c'' ees''!>32] <d'' f''>4 <c'' ees''>) } \\ { f'2 f'4 } >> \break
 <f' bes' d''>8_\markup { \italic "cresc." } r8 r4 r4 R2.
 c'''8(~  \once \override TextScript.script-priority = #-1 c'''16.^\turn^\markup { \natural } d'''32) ees'''4
 ges'4\sf f'2. \bar "" \cadenzaOn \override NoteHead.font-size = #-2 g'!32([ f' e' f' g' a' bes' c'' d'' ees''! f'' g'' a'' bes''])
 \cadenzaOff \bar "|" \override NoteHead.font-size = #0
 c'''8(~  \once \override TextScript.script-priority = #-1 c'''16.^\turn^\markup { \natural } d'''32) ees'''4
 <a' c'' ees''>4\sf \break
 << { d''8 } \\ { bes'8 } >> r8 << { g''2^\sf f''2^\p } \\ { g'4\rest <g' bes' des''>8\sf\staccato b'8\rest
 g'4\rest <f' bes' d''!>8\staccato b'8\rest } >> <c' ees' a'>8\staccato r8
 <bes d' bes'>8\staccato <f' f''>8([ <d' d''> <ces' ces''> <bes bes'> <aes aes'>])
 \clef bass <g g'>8([ <bes bes'> <ees ees'> <g g'> <c c'> <f f'>16 <ees ees'>]) \break

 <d d'>8 \clef treble << { e''8\rest e''8\rest } \\ { f'8[ d'8] } >> d''4\< d''8^\trill\!( f''8\>[ ees'']) r8
 ees''4( a'8^\trill bes'8\staccato\!) r16 a'16( bes'8\staccato) r16 <a' c''>16( <bes' d''>8\staccato)
 r16 <c'' a''>16( <d'' bes''>8_\markup { \italic "cresc." })([ d'''16. c'''32]) c'''4\p( bes''8) r8 \bar "|."
}

 \new Staff = "down" {
 \clef bass
 \key bes \major
 \time 3/4
 <bes,, f, bes,>2.\p\arpeggio r4 r <bes,, f, bes,>4 <c, f, c>2. r4 r <a, f>4 <bes, f>2. s2 s8
 r4 r <d b>4
 << { b4( c'8)[ d' ees' e'] e'4( f'8) d'8\rest } \\ { ees4. f8[ g\staccato( g\staccato)] f4. d8\rest } >> r4
 bes,,2. <bes, d f>2 <bes,, bes,>4 <f,, f,>2. <f, ees ges>4 r <bes c'>
 <a c'>8..( <b d'>32 <c' ees'>4) <c' ees'>4 << { ees'2 } \\ { f2 } \\ { c'4 a4 } >>
 \set doubleSlurs = ##t <fis c' ees'>4( <g bes d'>8) r8 r4 <e bes des'>8\f\staccato r8
 r4 <f bes d'!>8\p\staccato r8 <f, f>8\staccato r <bes,, bes,>8\staccato r16 \set doubleSlurs = ##f
 \tuplet 3/2 { bes,32([ bes,, bes,)] } bes,,8\staccato r16 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r16
 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r8 r4 r r8 r16
 \tuplet 3/2 { bes,32([ bes,, bes,)] } bes,,8\staccato r16 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r16
 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r8 r4 r r8 r16
 \tuplet 3/2 { bes,32([ bes,, bes,)] } bes,,8\staccato r16 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r16
 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r8 r4 r
 r8 r16 \tuplet 3/2 { c32([ c, c]) } c,8\staccato r16 \clef treble \tuplet 3/2 { c'''32([ c'' c''']) } c''8\staccato r
 \clef bass r8 r16 \tuplet 3/2 { c32([ c, c]) } c,8\staccato r16 \clef treble \tuplet 3/2 { c'''32([ c'' c''']) } c''8\staccato r
 \clef bass r8 r16 \tuplet 3/2 { c32([ c, c]) } c,8\staccato r16 \clef treble \tuplet 3/2 { c'''32([ c'' c''']) } c''8\staccato r
 \clef bass r8 r16 \tuplet 3/2 { c32([ c, c]) } c,8\staccato r16 \clef treble \tuplet 3/2 { c'''32([ c'' c''']) } c''8\staccato
 r16 \tuplet 3/2 { c'''32([ c'' c''']) } \clef bass r8 r16 c32([ c,]) c8\staccato r16 \clef treble c'''32([ c''])
 c'''8\staccato r8 \clef bass r8 r16 c32([ c,]) c8\staccato r16 \clef treble c'''32([ c'']) c'''8\staccato r8
 \clef bass r8 r16 c32([ c,]) c8\staccato r16 c32([ c,]) c8\staccato r16 c32([ c,]) c8
 << { s4 c'4( bes8) } \\ { c'8[ b bes a g] } >> f,8\staccato f8([ <a c'> f <bes d'> f])
 <a c'>8([ f <a c'> f d bes,]) c,8\staccato c8([ <f a> c <e g> c]) << { e8([ c f]) } \\ { f,4. } >> a,8([ bes, g,])
 f,8\p\staccato f([ <a c'> f <bes d'> f]) <a c'>([ f <a c'> f d bes,]) c2 c,4
 <f,, f,>8\staccato r16 \tuplet 3/2 { f,32\pp([ f,, f,]) } f,,8\staccato r16 \tuplet 3/2 { f,32([ f,, f,]) } f,,8\staccato r8
 \override TupletNumber.transparent = ##t  r8 r16 \tuplet 3/2 { f,32([ f,, f,]) } f,,8\staccato r16
 \tuplet 3/2 { f,32^\markup { \italic "cresc." }([ f,, f,]) } f,,8\staccato r8
 r8 r16 \tuplet 3/2 { f,32([ f,, f,]) } f,,8\staccato r16 \tuplet 3/2 { f,32([ f,, f,]) } f,,8\staccato r8
 r8 r16 \tuplet 3/2 { f,32([ f,, f,]) } f,,8\staccato r16 \tuplet 3/2 { f,32([ f,, f,]) } f,,8\staccato r8
 r8 r16 \tuplet 3/2 { <a c'>32([ f <a c'>]) } f8\staccato r8 r4 <bes,, bes,>2.\p
 <bes, d f>2 <bes,, f, bes,>4 <c, f, c>2. << { <c' ees'>2 a,4 } \\ { ges4( f) s4 } >> <bes,, bes,>2.
 \clef treble << { <f' aes'>2 } \\ { ces'4( bes) } >> \clef bass << { bes4 } \\ { d4 } >>
 << { bes8[( b c') d' ees' e'] e'4( f'8) e'8\rest } \\ { ees4.\p f8[ g\staccato( g\staccato)]
 f4. b,8\rest } >> r4 bes,,8\staccato r8 r32 \clef treble bes''32[ d''' bes'' f'' bes'' d'' f'']
 bes'[ d'' f' bes' d' f' bes d']
 \clef bass f32[ bes d f bes, d f, bes,] d,[ bes,, d, f, bes, d, f, bes,] d[ bes, f, d, bes, f, d, bes,,]
 f,,8\staccato r8 r32 \clef treble c'''32[ ees''' c''' a'' c''' ges'' a''] ees''[ ges'' c'' ees'' a' c'' ges' a']
 \clef bass ees'32[ ges' c' ees' a c' ges a] c[ ges ees a ges c' a ges] r32 ees[ bes, ges ees bes ges ees]
 a,8 r8 r32 \clef treble c'''[ ees''' c''' a'' c''' ees'' a''] c''[ ees'' a' c'' ees' a' c' ees']
 \clef bass a32[ c' f a c f a, c] f,[ a, c, f, a,, c, f,, a,,] r32 fis,,[ a,, c, fis, a, c fis]
 r32 g,,[ bes,, d, g, bes, d g] r e,[ g, bes, e g bes g] des'[ bes g e des bes, g, e,]
 r32 f,[ bes, d! f d bes, f,] r f,[ bes, d f d bes, f,] ees[ c a, f, ees, c, a,, f,,]
 bes,,8\staccato r16 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato
 r16 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r16 \tuplet 3/2 { bes,32([ bes,, bes,]) }
 bes,,8\staccato r8 r4 r4
 r8 r16 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r16 \tuplet 3/2 { bes,32([ bes,, bes,]) }
 bes,,8\staccato r16 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r8 r4 r4
 r8 r16 \tuplet 3/2 { ees32([ ees, ees]) } ees,8\staccato r16 \tuplet 3/2 { ees32([ ees, ees]) }
 ees,8\staccato r16 \tuplet 3/2 { ees32([ ees, ees]) } ees,8\staccato r8 r4 r4
 r8 r16 \tuplet 3/2 { f32([ f, f]) } f,8\staccato r16 \clef treble \tuplet 3/2 { f'''32([ f'' f''']) } f''8\staccato r8
 \clef bass r8 r16 \tuplet 3/2 { f32([ f, f]) } f,8\staccato r16 \clef treble \tuplet 3/2 { f'''32([ f'' f''']) } f''8\staccato r8
 \clef bass r8 r16 \tuplet 3/2 { f32([ f, f]) } f,8\staccato r16 \clef treble \tuplet 3/2 { f'''32([ f'' f''']) } f''8\staccato r8
 \clef bass r8 r16 \tuplet 3/2 { f32([ f, f]) } f,8\staccato r16 \clef treble \tuplet 3/2 { f'''32([ f'' f''']) } f''8\staccato
 r16 \clef treble \tuplet 3/2 { f'''32([ f'' f''']) } \clef bass r8 r16 f32([ f,]) f8\staccato r16
 \clef treble f'''32([ f'']) f'''8\staccato r8 \clef bass r8 r16 f32([ f,]) f8\staccato r16 \clef treble f'''32([ f'']) f'''8\staccato r8
 \clef bass r8 r16 f32([ f,]) f8\staccato r16 f32([ f,]) f8\staccato r16 f32([ f,])
 f8 << { s4 f'4 ees'8 } \\ { f'8([ e' ees' d' c']) } >> bes,8\staccato bes8([ <d' f'> bes <ees' g'> bes])
 <d' f'>8([ bes <d' f'> bes g ees])
 f,8\staccato f([ <bes d'> f <a c'> f]) << { a8([ f bes]) } \\ { bes,4. } >> d8([ ees c])
 bes,8\staccato bes([ <d' f'> bes <ees' g'> bes])
 <d' f'>8([ bes <d' f'> bes g ees]) f2 <f,, f,>4 bes,,8\staccato
 r16 \tuplet 3/2 { bes,32([ bes,,\pp bes,]) } bes,,8\staccato r16 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r8
 r8 r16 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r16 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r8
 r8 r16 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r16 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r8
 r8 r16 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r16 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato
 r16 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r16 \tuplet 3/2 { aes32([ bes, aes]) } bes,8\staccato
 r16 \tuplet 3/2 { aes32([ bes, aes]) } bes,8\staccato r8
 r8 r16 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r16 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r8
 r8 r16 \tuplet 3/2 { bes32([ bes, bes]) } bes,8\staccato r16 \tuplet 3/2 { bes32([ bes, bes]) } bes,8\staccato r8
 r8 r16 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r16 \tuplet 3/2 { bes,32([ bes,, bes,]) } bes,,8\staccato r8
 r8 r16 \tuplet 3/2 { bes32([ bes, bes]) } bes,8\staccato r16 \tuplet 3/2 { bes32([ bes, bes]) } bes,8\staccato
 r16 \tuplet 3/2 { bes32([ bes, bes]) } << { <bes, d>8..([ <c ees>32] <d f>4 <c ees>) } \\ { bes,2 s4 } >>
 <bes, d>8 r8 r4 r32 f32\staccato[ e\staccato f\staccato g\staccato a\staccato bes\staccato c'\staccato]
 <bes d'>8..([ <c' ees'>32] <d' f'>4) bes,,4( a,,2.\p) r4 r <bes c' ees'>4\sf
 <a c' ees'>2. s4 s8 s16 r4 r <fis c' ees'>\sf(
 <g bes d'>8) r r <e bes des'>\staccato\sf r4 r8 <f bes d'!>8\p\staccato r <f,, f,>\staccato r <f, f>\staccato
 <bes,, bes,>2. <bes,, bes,>2.

 << { s4 s8 ces'8[ bes aes] } \\ { bes,2. } >>
 << { g8([ bes ees g] c[ f16 ees]) d8([ f16 ees]) d8([ f16 ees]) d8([ f16 ees]) d8 } \\
 { bes,2. bes,4 bes, bes, bes,8 } >> r8 r4 r8 bes,,8 \bar "|."
}
>>

 \layout { }

 \midi { }

}
