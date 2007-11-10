\version "2.10.3"

 \header {
  title = "Piano Sonate Opus 78 (1st Movement)"
  composer = "Ludwig Van Beethoven"
  mutopiatitle = "Sonata No. 24 (1st Movement: Adagio cantabile)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano"
  mutopiaopus = "Op. 78"
  date = "1809"
  source = "Breitkopf & Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/November/10"
  version = "2.10.3"

 footer = "Mutopia-2007/11/10-1137"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \new GrandStaff
 <<
 \new Staff = "up" {
 \clef treble
 \key fis \major
 \time 2/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 40
 \override TextScript #'padding = #2.0
 <ais cis'>4\p^\markup { \large "Adagio cantabile." }( <ais cis' fis'>8. <b eis' gis'>16)
 <b eis' gis'>4( <cis' fis' ais'>8) <cis' e' ais'>
 << { b'4^\markup { \translate #(cons 3 -1) { \musicglyph #"scripts.turn" } }( dis''8. cis''16)
 b'32([ ais' dis'' cis'']) cis''8^\fermata } \\ { <dis' fis'>4 <eis'! gis'> fis'8 s8 } >> \bar "||"

 \time 4/4
 \tempo 4 = 132
 \partial 4 << { ais'8.^\markup { \large "Allegro ma non troppo." }( b'16 s4 fis'4 eis' fis') } \\
 { s4 cis''4 cis' cis' cis' } >> \break
 \repeat volta 2 { <b cis' eis' b'>2. <gis cis' gis'>4( <ais cis' ais'>\< <dis' dis''> <cis' cis''> <fis' fis''>\!
 <eis' eis''>\> <dis' dis''> <cis' cis''>\!) ais'16_\markup { \italic "leggiermente" } b' ais' fis'
 b'16 cis'' b' gis' eis'4 r4 b'16 cis'' b' gis' \break
 cis''16 dis'' cis'' ais' fis'4 r4 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { fis''8_\markup { \italic "cresc." }([ eis'' dis''] cis''[ b' ais'] gis'[ fis' eis'] dis'[ cis' bis] cis'[ dis' eis']) }
 <cis' fis'>4\p( <cis' eis' gis'> <cis' fis' ais'>) r <cis' fis' ais'> r <dis' gis' b'> r
 <cis' eis' gis'>4( <cis' fis' ais'> <cis' gis' b'>) r \break
 <cis' gis' b'>4 r <cis' eis' gis' cis''> r <cis' fis' ais'>4 cis''16( dis'' cis'' ais') fis''2(~ fis''4
 eis''8.^\turn fis''16 gis''4\sf eis''4)
 cisis''16\p b'' ais'' cisis'' cisis'' b'' ais'' cisis'' cisis'' b'' ais'' cisis'' cisis'' b'' ais'' cisis'' \break
 dis''16 b'' ais'' dis'' eis'' b'' ais'' eis'' fis'' b'' ais'' fis'' dis''' ais'' fis'' dis''
 bis'' fis'' dis'' bis'' dis''' fis'' dis'' cis''' bis'' fis'' dis'' bis'' dis''' fis'' dis'' cis'''
 bis'' fis'' dis'' bis'' dis''' fis'' dis'' dis''' gis'' fis'' dis'' gis'' ais'' fis'' dis'' ais'' \break
 bis''16 fis'' dis'' bis'' dis''' fis'' dis'' cis''' bis'' fis'' dis'' bis'' dis''' fis'' dis'' cis'''
 bis'' fis'' dis'' bis'' dis''' fis'' dis'' dis''' gis'' fis'' dis'' gis'' ais'' fis'' dis'' ais''
 bis'' gis'' dis'' bis'' cis'''_\markup { \italic "cresc." }( gis'' cis'' cis'''\staccato)
 cis'''( gis'' cis'' cis'''\staccato) cis'''( gis'' cis'' cis'''\staccato) \break
 cis'''( fisis'' cis'' cis'''\staccato) cis'''( fisis'' cis'' cis'''\staccato)
 cis'''( fisis'' cis'' cis'''\staccato) cis'''( fisis'' cis'' cis'''\staccato)
 cis'''\f( fisis'' cis'' cis'''\staccato) cis'''( fisis'' cis'' cis'''\staccato)
 cis'''( fisis'' cis'' cis'''\staccato) cis'''( fisis'' cis'' cis'''\staccato)
 cis'''\ff( fis'' cis'' cis'''\staccato) cis'''( fis'' cis'' cis'''\staccato)
 bis''( fis'' bis' bis''\staccato) bis''( fis'' bis' bis''\staccato) \break
 <cis'' eis'' cis'''>4 r \times 2/3 { eis''8\p_\markup { \italic "   dolce" }([ cis'' gis'] ais'[ cis'' ais']
 gis'[ cis'' dis''] eis''[ cis'' gis''] eis''[ cis'' gis'] fis'[ dis' gis'] } eis'4)
 \times 2/3 { gis'8([ cis'' dis''] eis''[ cis'' gis'] ais'[ cis'' ais'] gis'[ cis'' dis''] eis''[ cis'' gis'']) }
 \set doubleSlurs = ##t <gis' cisis''>4\f( <fis' dis''>) <fis' bis'>2\sf fis'16\p gis' fis' eis' fis' dis'' cis''! bis'
 cis''16 gis' cis'' eis'' gis'' cis''' eis''' dis''' <gis'' cisis'''>4\f( <fis'' dis'''>) \set doubleSlurs = ##f
 <fis'' bis''>2\sf fis''16\p gis'' fis'' eis'' fis'' dis''' cis'''! bis'' \break
 cis'''16 gis'' eis'' cis'' gis' cis'' gis' eis' fis' gis' fis' eis' fis' dis'' cis'' bis'
 cis''16 gis' eis' cis' s4 r4 <gis bis dis' fis'>4 r4 <bis dis' fis'> r <bis dis' fis' gis'> \break }
 \alternative {
 { r4 <b! cis' eis' gis'>4\p r <ais ais'>8.( <b b'>16) <cis' cis''>4( <cis' fis'> <cis' eis'> <cis' fis'>) }
 { r4 <b! cis' eis' gis'>4\p r a'8.( b'16) } } \break
 \repeat volta 2 { cis''4( <cis' fis'> <cis' eis'> <cis' fis'>)
 <d' fis' d''>2._\markup { \italic "cresc." } <d' fis' d''>4 \noBreak
 << { d''2^\trill( e''4. b'8) } \\ { b'2 gis'4_\markup { \italic "dim." } e'4 } >>
 cis''16\p e'' cis'' e'' cis'' e'' cis'' e'' cis'' e'' cis'' e'' cis'' e'' cis'' e'' \break
 cis''16 dis'' cis'' dis'' b' dis'' b' dis'' b' dis'' b' dis'' << { b''8.^\f( cis'''16) } \\ { b'16[ dis'' b'] a'16\rest } >> 
 <dis'' dis'''>4\f( <gis' gis''> <fisis' fisis''> <gis' gis''>)
 gis''16 b'' ais'' gis'' gis'' b'' ais'' gis'' gis''16 b'' ais'' gis'' gis'' b'' ais'' gis'' \break
 gis''16 b'' ais'' gis'' b'' gis'' fis''! eis''! b'' gis'' fis'' eis'' ais'' gis'' fis'' eis''
 fis'' ais'' gis'' fis'' gis'' fis'' eis'' dis'' cisis'' eis'' dis'' cisis'' ais'' gis'' fis'' eis''
 fis'' ais'' gis'' fis'' gis'' fis'' eis'' dis'' bis' dis'' cis''! bis' gis'' fis'' e'' dis'' \break
 e''16 gis'' fis'' e'' fis'' e'' dis'' cis'' bis' dis'' cis'' bis' gis'' fis'' e'' dis''
 e'' gis'' fis'' e'' fis'' e'' dis'' cis'' ais' cis'' b'! ais' fis'' e'' dis'' cis''
 b' dis'' cis'' b' fis'' e'' dis'' cis'' b' dis'' cis'' b' \setTextCresc fis''\< e'' dis'' cis'' \break
 b' dis'' cis'' b' b'' ais'' gis'' fis'' eis''! gis'' fis'' eis'' b'' ais'' gis'' fis''
 eis'' gis'' fis'' eis'' dis''' cis''' b'' ais'' gis'' b'' ais'' gis'' fis'' eis'' dis'' cis''
 b' dis'' cis'' b' ais' gis' fis' eis' b' ais' gis' fis' eis' dis' cis' bis\! \break
 << { cis'2 eis'2 <eis' gis'>2. <fis' ais'>8.( <gis' b'>16 <ais' cis''>4 fis' eis' fis') } \\
 { cis'1\ff cis'1 cis'4\p cis' cis' cis' } >> \noBreak <b cis' eis' b'>2. <gis cis' gis'>4(
 <ais cis' ais'>\< <dis' dis''> <cis' cis''> <fis' fis''>\! \break
 <eis' eis''>\> <dis' dis''> <cis' cis''>\!) ais'16_\markup { \italic "leggiermente" } b' ais' fis'
 b'16 cis'' b' gis' eis'4 r4 b'16 cis'' b' gis' \noBreak cis'' dis'' cis'' ais' fis'4 r4 ais'16 b' ais' fis'
 cis''16 dis'' cis'' ais' fisis'4 r cis''16 dis'' cis'' ais' \break
 dis''16 e'' dis'' b' gis'4 r \times 2/3 { e'''8\f([ dis''' cis'''] b''[ a'' gis''] fis''[ e'' dis''] cis''[ b' ais'!] b'[ cis'' dis'']) }
 <e' gis' b' e''>4\f( <fis' b' dis'' fis''> <gis' b' e'' gis''>) r <b e' gis'>4\p r <cis' fis' a'>4 r \break
 <b' dis'' fis''>4\f( <b' cis'' eis''! gis''> <a' cis'' fis'' a''>) r <cis' fis' a'>\p r <d' gis' b'> r
 <b' cis'' eis'' gis''>\f( <ais'! cis'' e'' ais''!> <b' d'' b''>) r <fis' b' d''>4\p r <g' cis'' e''> r \noBreak
 <ais'! cis'' e'' ais''>4\f( <b' d'' b''> <cis'' e'' cis'''>) r <ais' cis''>\p( <b' dis''!> <cis'' e''>) r
 <fis' ais' cis''> r <fis' cis'' e''> r \break
 <fis' b' dis''>4 fis''16 gis'' fis'' dis'' b''2~ b''4 ais''8.^\turn( b''16 cis'''4\f ais'')
 fisis''16\p e''' dis''' fisis'' fisis'' e''' dis''' fisis'' fisis'' e''' dis''' fisis'' fisis'' e''' dis''' fisis'' \break
 gis''16 e''' dis''' gis'' ais'' e''' dis''' ais'' b'' e''' dis''' b'' gis''' dis''' b'' gis''
 eis'''! b'' gis'' eis''' gis''' b'' gis'' fis''' eis''' b'' gis'' eis''' gis''' b'' gis'' fis''' \break
 eis''' b'' gis'' eis''' gis''' b'' gis'' gis''' cis''' b'' gis'' cis''' dis'''! b'' gis'' dis'''
 eis'''16 b'' gis'' eis''' gis''' b'' gis'' fis''' eis''' b'' gis'' eis''' gis''' b'' gis'' fis''' \break
 eis''' b'' gis'' eis''' gis''' b'' gis'' eis''' cis''' b'' gis'' cis''' dis'''! b'' gis'' dis'''
 eis''' cis''' gis'' eis''' fis'''_\markup { \italic "cresc." }( cis''' fis'' fis'''\staccato)
 fis'''( cis''' fis'' fis'''\staccato) fis'''( cis''' fis'' fis'''\staccato) \break
 fis'''( bis'' fis'' fis'''\staccato) fis'''( bis'' fis'' fis'''\staccato) fis'''( bis'' fis'' fis'''\staccato)
 fis'''( bis'' fis'' fis'''\staccato) fis'''\f( bis'' fis'' fis'''\staccato) fis'''( bis'' fis'' fis'''\staccato)
 fis'''( bis'' fis'' fis'''\staccato) fis'''( bis'' fis'' fis'''\staccato) fis'''\ff( b''! fis'' fis'''\staccato)
 fis'''( b'' fis'' fis'''\staccato) eis'''( b'' eis'' eis'''\staccato) eis'''( b'' eis'' eis'''\staccato) \break
 <fis'' ais'' fis'''>4 r \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { ais''8\p_\markup { \italic "   dolce" }([ fis'' cis''] dis''[ fis'' dis'']
 cis''[ fis'' gis''] ais''[ fis'' cis'''] ais''[ fis'' cis''] b'[ gis' cis''] } ais'4)
 \times 2/3 { cis''8([ fis'' gis''] ais''[ fis'' cis''] dis''[ fis'' dis''] cis''[ fis'' gis''] ais''[ fis'' cis''']) }
 <cis'' dis'' fisis''>4\f( <b' dis'' gis''>) \break
 <b' cis'' eis''>2\sf b'16\p cis'' b' ais' b' gis'' fis''! eis'' fis''16 cis'' ais' cis'' fis'' ais'' cis''' fis'''
 <fisis'' ais'' cis''' dis''' fisis'''>4\f( <gis'' b'' dis''' gis'''>) \noBreak
 <eis'' gis'' b'' cis''' eis'''>2 b''16\p cis''' b'' ais'' b'' gis''' fis'''! eis'''
 fis''' cis''' ais'' fis'' cis'' fis'' cis'' ais' b' cis'' b' ais' b' gis'' fis'' eis'' \break
 fis''16 cis'' ais' fis' cis' fis' cis' ais r4 <cis' eis' gis' b'>4 r4 <eis' gis' b'> r <eis' gis' b' cis''>
 r4 <fis' ais' cis''> r ais'8.( b'16) \break
 r4 <e' fis' ais' cis''> r <ais ais'>8.( <b b'>16
 \setTextCresc <cis' e' cis''>4\< <cis' e' fis'> <cis' e' g'> <cis' e' fis'>)
 <e' g' e''>4( <e' fis' cis''> <d' fis' d''> <d' fis' b'>) \break
 <b' d'' b''>4( <b' d'' gis''> <gis'' b'' d'''>\!\f\> <gis'' b'' cis'''>) r4\!\p <gis'' b'' cis'''> r <ais'' cis'''>
 r4 <ais'' cis'''> r <ais'' cis'''> \break
 r4 <fis'' ais'' cis''' fis'''>\f\staccato <fis'' ais'' cis''' fis'''>\staccato <fis'' ais'' cis''' fis'''>\staccato }
 \alternative { { <fis'' ais'' cis''' fis'''>4\staccato r4_\markup { \italic "dimin." } r4 a'8.( b'16) }
 { <fis'' ais'' cis''' fis'''>4\staccato r4 r2 } }
 \bar "|."
}

 \new Staff = "down" {
 \clef bass
 \key fis \major
 \time 2/4
 <fis,, fis,>2\p <fis,, fis,>2 <fis,, fis,>2 <fis,, fis,>4^\fermata \bar "||"

 \time 4/4
 r4 fis,8( fis ais fis b fis ais fis)
 \repeat volta 2 { gis8 cis gis cis gis cis eis cis << { fis,8 fis b, fis ais, fis dis fis cis fis b, fis ais,[ fis] } \\
 { fis,2. fis,4 fis, fis, fis, } >> r4 r4 cis16 eis gis b b,4 r4
 r4 ais,16 cis fis ais ais,4 \times 2/3 { fis,8([ gis, ais,]) } b,2 << { cis4( b!) } \\ { cis2 } >>
 <fis ais>4\p( <cis gis> <fis, fis>) r <fis ais>4 r <b, dis gis> r cis4( fis, cis,) r
 <eis gis b>4 r <cis eis gis b> r <fis ais>4 r \clef treble r4 \set doubleSlurs = ##t <fis' ais'>4( <gis' b'>2.\sf)
 \set doubleSlurs = ##f <gis' b'>4\sf\>( <gis' ais'>2\!)( <eis' gis'>4) \clef bass <ais eis' gis'>4(
 <ais dis' fis'> <gis cisis' eis'> <fis ais dis'>) <fis ais dis'>
 <fis gisis dis'>4^\accent <fis gis dis'> <fis gisis dis'>^\accent <fis gis dis'>
 <fis gisis dis'>^\accent <fis gis dis'> r <fis ais dis'>
 <fis gisis dis'>4^\accent <fis gis dis'> <fis gisis dis'>^\accent <fis gis dis'>
 <fis gisis dis'>^\accent <fis gis dis'> r <fis ais dis'>
 <fis gis dis'>4_\markup { "tenuto." } <eis gis cis'> <eis gis cis'> <eis gis cis'>
 <e fisis cis'>4 <e fisis cis'> <e fisis cis'> <e fisis cis'>
 <a, cis e fisis> <a, cis e fisis> <a, cis e fisis> <a, cis e fisis> <gis dis'>1 \startTrillSpan
 <cis cis'>4 \stopTrillSpan r4 \clef treble
 << { \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { cis'8([ dis' eis'] fis'[ cis' fis'] } eis'4) } \\ { s2 cis'4 } >> r4
 \clef bass << { \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { cis8([ dis eis] fis[ dis gis] } eis4) } \\ { e,4\rest gis,4 cis4 } >> r4
 \clef treble << { \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { cis'8([ dis' eis'] fis'[ cis' fis'] } eis'4) } \\ { s2 cis'4 } >> r4
 \clef bass <ais eis'>4\f( <dis dis'>) <gis dis'>2\sf <gis, dis fis>2\p
 <cis eis>4 r \clef treble <ais' eis''>4( <dis' dis''>) <gis' dis''>2\sf \clef bass <gis dis' fis'>2\p
 <cis' eis'>4 r <gis, dis fis>2
 <cis eis>4 << { gis16 cis' gis eis s2 } \\ { f,4\rest fis,16\p gis, fis, eis, fis, gis, ais, bis,  } >>
 cis16 dis eis fis gis fis eis dis cis bis, ais, gis, ais, gis, ais, bis, }
 \alternative { { cis16 dis eis fis gis fis eis fis gis fis eis dis cis b,! ais, gis, fis,8( fis ais fis b fis ais fis) }
 { cis16 dis eis fis gis a b! cis' d' cis' b a cis' b a gis } }
 \repeat volta 2 { <fis, fis>8 fis([ a fis] b fis a fis)
 << { b,8 fis b fis b fis a fis gis e fis e e, e gis, gis } \\ { b,2. a,4 gis, fis, s2 } >> <a, a>4\p r \clef treble gis'4\pp r
 fisis'4 \clef bass b,8.( cis16 dis4 gis,)
 <gis b>16 dis' <gis b> dis' <gis b> dis' <gis b> dis' <ais cis'> dis' <ais cis'> dis' <gis b> dis' <gis b> dis'
 <cisis' eis'!>4 r4 r \clef treble << { eis'!8.( fis'16) } \\ { cisis'4 } >>
 <cisis' eis' gis'>4 r4 r << { eis'8.( ais'16) fis'8 } \\ { cisis'4 dis'8 } >> r8 \clef bass <dis fis>8.( ais16) <eis gis>8
 r8 \clef treble <cisis' eis'>8.( ais'16) <dis' fis'>8 r8 \clef bass <dis fis>8.( ais16) <dis fis>8 r8
 \clef treble <bis dis'>8.( gis'16) <cis' e'>8 r8 \clef bass <cis e>8.( gis16) <dis fis>8 r8
 \clef treble <bis dis'>8.( gis'16) <cis' e'>8 r8 \clef bass <cis e>8.( gis16) <cis e fis>8 r8
 \clef treble <ais cis'>8.( fis'16) <b dis'>8 r8 \clef bass <ais, cis>8.( fis16) <b, dis>8 r8
 \clef treble \setTextCresc fis'16\< e' dis' cis' b8 r b'16 ais' gis' fis' eis'!8 r b'16 ais' gis' fis'
 eis'8 r dis''16 cis'' b' ais' gis' b' ais' gis' fis' eis' dis' cis'
 \clef bass b dis' cis' b ais gis fis eis b ais gis fis eis dis cis bis,\!
 << { cis2 eis2 } \\ { cis1\ff } >> \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { gis8([ ais gis] fis[ eis dis] cis[ dis cis] b,![ ais, gis,]) } fis,8\p( fis ais fis b fis ais fis)
 gis8 cis gis cis gis cis eis cis << { fis,8 fis b, fis ais, fis dis fis cis fis b, fis ais,[ fis] } \\
 { fis,2. fis,4 fis,4 fis, fis, } >> r4 r4 cis16 eis gis b b,4 r r4 ais,16 cis fis ais ais,4 r r4 dis16 fisis ais cis' cis4 r
 r4 b,16 dis gis b b,4 <gis, b, e gis> <a, cis fis! a>2 <b, fis a b>2 <e gis b>4\f( <b, dis fis b> <e, gis, b, e>) r
 <e gis>4\p r <a, cis fis> r <b dis' fis'>4\f( <gis b cis' eis'!> <fis a cis' fis'>) r <fis a>4\p r <b, gis> r
 <cis' eis'>4\f( <fis cis' e'> <b d'>) r <b d'>4\p r <e g cis'> r <fis ais! cis'>4\f( <b, fis b> <ais, fis ais>) r
 <cis' e'>4\p( <b dis'!> <ais cis'>) r <ais cis'> r <fis ais> r
 <b dis'>4 r \clef treble r4 \set doubleSlurs = ##t <b' dis''>4( <cis'' e''>2.\sf) \set doubleSlurs = ##f
 <cis'' e''>4\sf\>( <cis'' dis''>2\!\p)( <ais' cis''>4) <dis' ais' cis''>4
 <dis' gis' b'>4( <cis' fisis' ais'> <b dis' gis'>) <b dis' gis'> <b d' gis'>4^\accent <b cis' gis'>
 <b d' gis'>^\accent <b cis' gis'> <b d' gis'>^\accent <b cis' gis'> r <b dis' gis'>
 <b d' gis'>4^\accent <b cis' gis'> <b d' gis'>^\accent <b cis' gis'> <b d' gis'>^\accent <b cis' gis'> r <b dis' gis'>
 <b cis' gis'>4^\markup { "tenuto." } <ais cis' fis'> <ais cis' fis'> <ais cis' fis'>
 <a bis fis'>4 <a bis fis'> <a bis fis'> <a bis fis'>
 \clef bass <d, fis, a, bis,>\f <d, fis, a, bis,> <d, fis, a, bis,> <d, fis, a, bis,>
 <cis gis>1\ff \startTrillSpan <fis, fis>4 \stopTrillSpan r4
 \clef treble << { \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { fis'8\p([ gis' ais'] b'[ fis' b'] } ais'4) } \\ { s2 fis'4 } >> r4
 \clef bass << { \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { fis8([ gis ais] b[ gis cis'] } ais4) } \\ { f,4\rest cis4 fis } >> r4
 \clef treble << { \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { fis'8([ gis' ais'] b'[ fis' b'] } ais'4) } \\ { s2 fis'4 } >> r4 <dis' fisis' ais'>4\f( <gis b dis' gis'>)
 <cis' eis' gis'>2\sf \clef bass <cis gis b>2\p <fis ais>4 r \clef treble <dis' fisis' ais' cis'' dis''>4\f( <gis' b' dis''>)
 <cis' eis' gis' b' cis''>2\sf \clef bass <cis gis b>2\p <fis ais>4 r <cis, gis, b,>2
 <fis, ais,>4 r b,16\p cis b, ais, b, cis dis eis fis gis ais b cis' b ais gis fis eis dis cis dis cis dis eis
 fis16 gis ais b cis' dis' cis' b ais b cis' b ais b ais gis
 fis16 gis ais b cis' b ais gis fis ais gis fis e dis cis b,
 \setTextCresc ais,16\< b, cis b, ais, cis e fis g e cis b, ais, cis e fis g e cis b, ais, cis fis ais b, d fis b d fis b d'
 eis! gis! b d' \clef treble eis'! gis' b' gis' eis'\!\f\> gis' b' gis' eis' gis' b' gis'
 eis'\!\p b' ais' gis' cis'' b' ais' gis' fis' cis'' b' ais' fis'' eis'' dis''! cis''
 b'16 ais' dis'' cis'' b' ais' gis' fis' eis' fis' gis' fis' bis cis' dis' cis'
 \clef bass gisis16 ais b ais eis fis gis fis bis, cis dis cis gisis, ais, b, ais, }
 \alternative { { fis,4 eis16 fis gis fis eis fis gis fis eis fis gis fis } { fis,4 r4 r2 } }
 \bar "|."
}
>>

 \layout { }

 \midi { }

}
