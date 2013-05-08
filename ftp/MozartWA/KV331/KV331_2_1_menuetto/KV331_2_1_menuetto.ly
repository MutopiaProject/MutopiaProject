\version "2.6.0"

\header {
  title = "Sonate Opus KV 331 - Menuetto"
  composer = "Wolfgang Amadeus Mozart"
  mutopiatitle = "Sonate Opus KV 331 - Menuetto"
  mutopiacomposer = "MozartWA"
  mutopiapoet = "Wolfgang Amadeus Mozart"
  mutopiainstrument = "Piano"
  date = "1778 or 1781-3"
  source = "Breitkopf & Härtel, Leipzig"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2005/October/23"
  version = "2.6.0"
  
  footer = "Mutopia-2005/10/29-613"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key a \major
 \time 3/4
 \repeat volta 2 { \grace { cis'32([ e'] } a'2\f^\markup { \large "MENUETTO." })( e'4)
 cis''8( d''16 b' a'4) r4 e''8\p( fis''16 d'' cis''4) cis'''4\staccato dis''4( e''4.) eis''8\staccato
 gis''8\>( fis'' e''! d''! cis'' b'\! a' gis' e'' d'') r4 b'8( a'_\markup { \italic "cresc." } fis'' e'') r4
 cis''8\f( b' g''! fis'') r4 fis'4\p e''8( d'' cis'' b' a' gis'! a'4) r4
 \grace { b'32[ e'' gis''] } b''2.\f b''16( a'' gis'' fis'') fis''( e'' dis'' cis'' b' a' gis' a' gis' b' e'' gis'' b''2)
 b''16( a'' gis'' fis'') fis''( e'' dis'' cis'' b' a' gis' a' gis' b' a' gis' a' b' cis'' dis'' e'' fis'' gis'' a''
 b'' cis''' dis''' e''' dis''' cis''' b'' a'' gis'' fis'' e'' dis'')
 << { \stemDown cis''8\p[ r16 cis''']( s4 \stemUp gis''8 fis'' e''4) } \\ { s4 e''4 dis'' e'' } >> r4 r }
 \repeat volta 2 { \appoggiatura e'32 e''4\f \appoggiatura fis'32 fis''4 \appoggiatura g'32 g''4
 b'4\p( ais') r8 r16 ais'\staccato \setTextCresc cis''4\<( b') r8 r16 b'16\staccato d''!4( cis'') r8 r16 cis''16\staccato\!
 e''8\f( d'') f''( e'') g''( f'') a'4\p( gis'!) r8 r16 gis'\staccato b'4( a') r8 r16 a'\staccato
 \setTextCresc cis''4\<( b') r8 r16 b'\staccato d''8([ c'' b' a'] a''\staccato) a''\staccato\! b''8\f( a'' g'' f'' e'' dis'')
 c'''2( dis''4) e''4. fis''!16( e'') e''( d''! cis''! b')
 \grace { cis'32([ e'] } a'2\f)( e'4) cis''8( d''16 b' a'4) r4 e''8\p( fis''16 d'' cis''4) cis'''4\staccato
 dis''4( e''4.) eis''8\staccato gis''8\>( fis'' e''! d''! cis'' b'\! a' gis' e'' d'') r4
 b'8( a'_\markup { \italic "cresc." } fis'' e'') r4 b'8\f( a' a'' g'') r4 g''8\p( fis'' e'' d'' cis'' b')
 e''8[ \grace { fis''32[ e'' d''] } e''16 fis''] a'4( gis') \grace { a'16[ cis''] } e''4\f e''2
 e''16( d'' cis'' b') b'( a' gis' fis' e' d' cis' d' cis' e' a' cis'' e''4.) e'''8
 e'''16( d''' cis''' b'') b''( a'' gis'' fis'' e'' d'' cis'' d'' cis'' e'' d'' cis'' d'' e'' fis'' gis'' a'' b'' cis''' d'''
 e''' d''' cis''' b'' a'' gis'' fis'' e'' d'' cis'' b' a') fis''8.^\trill([ gis''32 a''] a'4) << { cis''8 b' a'4 } \\ { gis'4 a' } >> r4 r }
 \break

 \key d \major
 \repeat volta 2 { <fis' a'>8\p^\markup { \large "Trio." }( a <d' fis'> a <e' g'> a
 <fis' a'> a) <d' fis'>( <cis' e'> <d' fis'> <e' g'>) <fis' a'>( d' <g' b'> d' <g' cis''> e' <fis' d''> a')
 \new Voice { \stemDown \slurUp <d' fis'>( <cis' e'> <d' fis'> <e' g'>)
 \slurDown <fis' a'>( d' <g' b'> d' <g' cis''> e' <fis' d''>) a' <fis' d''> <e' cis''> <d' b'> <cis' a'> }
 \new Voice { \stemDown <b gis'>8( e' <cis' a'> e' <a' cis''> e' <gis' b'> e') <fis' d''> <e' cis''> <d' b'> <cis' a'>
 \slurDown <b gis'>8( e' <cis' a'> e' <a' cis''> e' <gis' b'>[ e']) }
 \new Voice { << { \stemUp \slurUp cis''8( b' cis'' d''! e'' a') cis''( e' b' e' \stemDown a' e')
 \slurDown <a' cis''>8\p( <gis' b'> <a' cis''> <b' d''>) } \\
 { \stemDown e'2\f ~ e'4 a' gis' s2 s4 } >> \stemDown \slurDown <cis'' e''>8( e' <a' cis''> e' <gis' b'> e' a' e' fis'\f d'' b' gis'
 \stemUp a' e' fis' d'' b' gis' a'\> gis' a' b' g' e'\!) } }
 \repeat volta 2 { \new Voice { \stemUp \slurDown <fis' a'>8\p( b <dis' fis'> b <e' g'> b \stemDown <fis' a'> b <dis' fis'> b <e' g'> b
 <fis' a'>8 b <dis' fis'> b <e' g'> b <fis' a'>4) } <b' b''>8\f <a' a''> <g' g''> <fis' fis''>
 <e' e''>4 <e' e''> <b' b''> <e' e''> <b' b''>8 <a' a''> <g' g''> <fis' fis''>
 <e' e''>4 <e' e''> <b' b''> <e' e''> e''8\p\staccato d''\staccato e''\staccato f''\staccato
 g''4 g''4. g''8 c'''!4( g'') r g''4 \setTextCresc g''4.\< g''8 c'''!4( g'') r8 r16 g'' e'''4( g'') r8 r16 g'' e'''4( g'') r8 r16 g''\!
 g''8\f( f'' e'' f'' e'' d'' cis''\staccato) gis''( a'' gis'' a'' e'' g''! f'' e'' f'' e'' d'' a'' gis'' a'' e'' f'' d''
 a''8 gis'' a'' e'' f'' d'' a'\> gis' a' gis' a' gis'\!)
 <fis'! a'>8\p( a <d' fis'> a <e' g'!> a <fis' a'> d') <b' d''>( <a' cis''> <g' b'> <fis' a'>)
 \new Voice { \stemDown \slurUp g'8( d' <fis' a'> d' <g' b'> d' <fis' a'> d') <b' d''>( <a' cis''> <g' b'> <fis' a'>)
 \slurDown <e' g'>( d' <fis' a'> d' <g' b'> d' <fis' a'> d') \slurUp <g' b'>( <fis' a'> <e' g'> <d' fis'>)
 <cis' e'>( a <d' a'> a <d' fis'> a <cis' e'> a) <g' b'>( <fis' a'> <e' g'> <d' fis'>) <cis' e'>8( a <fis' a'> a <d' fis'> a <cis' e'> a')
 << { d''8( cis'' d'' b') a'4 g' e' fis'8[ a'] } \\ { d'2\f ~ d'8 a d' b cis' a d'4 } >> \slurDown <b' d''>8\p( <ais' cis''> <b' d''> <g' b'>)
 <fis' a'!>( d' <e' g'> b <cis' e'> a <d' fis'>[ a']) }
 \slurUp a'8( g' e' cis' d' fis' a' g' e' cis' }
 \alternative { { d'8\staccato) \slurDown cis'\>( d' e' fis' g'\!) } { d'4 r r \bar "||" } }
}

 \context Staff = "down" {
 \clef bass
 \key a \major
 \time 3/4
 \repeat volta 2 { \grace { s32 s32 } <a, a>2( <e, e>4) <cis cis'>4( <a, a>4) r4 r r \clef treble <a fis'>4\staccato <b a'>4( <e' gis'>) r
 R2. \clef bass e8( d' b d' b d' e cis' a cis' a cis' d b fis b fis b) d4 r r <d d'>4( <a cis'>) r
 e8( gis b gis fis e dis e fis b, cis dis e gis b gis fis e dis e fis b, cis dis e4) r r R2.
 \clef treble << { fis'4( gis' a') gis' } \\ { a4 b2 } >> \clef bass e4 r }
 \repeat volta 2 { \appoggiatura s32 R2. fis8( cis' fis' e' d' cis' fis d' fis' d' cis' b fis ais e' cis' b ais b4) r r
 e8( b e' d' cis' b e cis' e' cis' b a e gis d' b a gis a2) <g, g>4 <f, f>2 r4
 << { a8( gis a c' b a gis4) } \\ { f2.\sfp e4 } >> r4 r
 <a, a>2 <e, e>4 <cis cis'>4 <a, a> r r r \clef treble <a fis'>4\staccato <b a'>( <e' gis'>4) r R2.
 \clef bass e8( d' b d' b d' e cis' a cis' a cis' e cis' a cis' a cis') <d a d'>4 r r
 << { cis8.( d16) cis'4( b) } \\ { s4 e2 } >> a8( cis' e' cis' b a gis a b e fis gis a cis' e' cis' b a gis a b e fis gis a4)
 <fis a>4 <d fis a> <cis e a> r r << { a4( cis' d') cis' } \\ { d4 e2 a4 } >> a,4 r }
 \break

 \key d \major
 \repeat volta 2 { <d, d>2. ~ <d, d>4 r4 r r r <a, a>4 <d, d>
 \new Voice { \change Staff="up" \stemUp \slurUp fis''8^\markup { "L.H." }( e'' fis'' g'') a''4( b'' cis''') d''' d'''4\rest d'''4\rest }
 e4 cis a, e \new Voice { \change Staff="up" \stemUp \slurUp d'''8( cis''' b'' a'')
 \appoggiatura dis'''32 e'''4 \appoggiatura dis'''32 e'''4 \appoggiatura dis'''32 e'''4 \appoggiatura dis'''32 e'''4 }
 a,8( gis, a, b, cis4) e e, a, \new Voice { \change Staff="up" \stemUp \slurUp cis'''8( b'' cis''' d''' e'''4 cis''' b'' a'') }
 <d b>4 <e d'> <a cis'> <d b> <e d'> <a cis'> r4 r }
 \repeat volta 2 { <b,, b,>2. ~ <b,, b,>4
 \new Voice { \change Staff="up" \stemUp \slurUp c'''8( b'' a'' g'' fis''4) a''8( g'' fis'' e'' dis''4) } <b, b>8 <a, a> <g, g> <fis, fis>
 <e, e>4 <e, e> <b, b> <e, e> <b, b>8 <a, a> <g, g> <fis, fis> <e, e>4 <e, e> <b, b> <e, e> r r \clef treble
 << { \override Staff.NoteCollision #'merge-differently-headed = ##t
 c'8( e' g' e' f' d' c' e' g' e' f' d' c' e' g' e' f' d' c' e' g' e' c' e' bes c' e' g' e' c' a cis'! e' g' e' cis' <a d'>2) e'8( f' <a e'>4) } \\
 { c'2 b4 c'2 b4 c'2 b4 c'2 f4\rest bes2 f4\rest a2 f4\rest s2 gis4 s4 } >> r4 r
 <bes d' gis'>2. <a cis'! a'>4 r <a d' f'> <a cis' e'> r <a d' f'> <a cis' e'> r r
 \clef bass <d, d>2. ~ <d, d>4 r r
 \new Voice { b,4( a, g,) d4 \change Staff="up" \stemUp \slurUp d'''8( cis''' b'' a'') g''4( a'' b'') a'' b''\rest b''\rest
 \change Staff="down" \stemUp a,4( fis, d,) a,4 \change Staff="up"  \slurUp b''8( a'' g'' fis'')
 \appoggiatura gis''32 a''4 \appoggiatura gis''32 a''4 \appoggiatura gis''32 a''4 \appoggiatura gis''32 a''4
 \change Staff="down" \stemDown \slurUp b8( ais b g) fis4 e \stemUp a, \stemDown d
 \change Staff="up" \stemUp \slurUp d'''8( cis''' d''' b'') a''4( g'' e'') fis'' }
 << { \new Voice { \change Staff="up" \stemDown d'4\f } g fis
 \new Voice { \change Staff="up" \stemDown d'4 } g } \\ { g,4 a, d g, a, } >> }
 \alternative { { << { fis4 } \\ { d4 } >> r4 r } { <d fis>4 d,_\markup { \center-align { "Menuetto D.C." } } r4 \bar"||" } }
}
>>

 \layout { }

}



\score {

 \unfoldRepeats

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key a \major
 \time 3/4
 \repeat volta 2 { \grace { cis'32([ e'] } a'2\f^\markup { \large "MENUETTO." })( e'4)
 cis''8( d''16 b' a'4) r4 e''8\p( fis''16 d'' cis''4) cis'''4\staccato dis''4( e''4.) eis''8\staccato
 gis''8\>( fis'' e''! d''! cis'' b'\! a' gis' e'' d'') r4 b'8( a'_\markup { \italic "cresc." } fis'' e'') r4
 cis''8\f( b' g''! fis'') r4 fis'4\p e''8( d'' cis'' b' a' gis'! a'4) r4
 \grace { b'32[ e'' gis''] } b''2.\f b''16( a'' gis'' fis'') fis''( e'' dis'' cis'' b' a' gis' a' gis' b' e'' gis'' b''2)
 b''16( a'' gis'' fis'') fis''( e'' dis'' cis'' b' a' gis' a' gis' b' a' gis' a' b' cis'' dis'' e'' fis'' gis'' a''
 b'' cis''' dis''' e''' dis''' cis''' b'' a'' gis'' fis'' e'' dis'')
 << { \stemDown cis''8\p[ r16 cis''']( s4 \stemUp gis''8 fis'' e''4) } \\ { s4 e''4 dis'' e'' } >> r4 r }
 \repeat volta 2 { \appoggiatura e'32 e''4\f \appoggiatura fis'32 fis''4 \appoggiatura g'32 g''4
 b'4\p( ais') r8 r16 ais'\staccato \setTextCresc cis''4\<( b') r8 r16 b'16\staccato d''!4( cis'') r8 r16 cis''16\staccato\!
 e''8\f( d'') f''( e'') g''( f'') a'4\p( gis'!) r8 r16 gis'\staccato b'4( a') r8 r16 a'\staccato
 \setTextCresc cis''4\<( b') r8 r16 b'\staccato d''8([ c'' b' a'] a''\staccato) a''\staccato\! b''8\f( a'' g'' f'' e'' dis'')
 c'''2( dis''4) e''4. fis''!16( e'') e''( d''! cis''! b')
 \grace { cis'32([ e'] } a'2\f)( e'4) cis''8( d''16 b' a'4) r4 e''8\p( fis''16 d'' cis''4) cis'''4\staccato
 dis''4( e''4.) eis''8\staccato gis''8\>( fis'' e''! d''! cis'' b'\! a' gis' e'' d'') r4
 b'8( a'_\markup { \italic "cresc." } fis'' e'') r4 b'8\f( a' a'' g'') r4 g''8\p( fis'' e'' d'' cis'' b')
 e''8[ \grace { fis''32[ e'' d''] } e''16 fis''] a'4( gis') \grace { a'16[ cis''] } e''4\f e''2
 e''16( d'' cis'' b') b'( a' gis' fis' e' d' cis' d' cis' e' a' cis'' e''4.) e'''8
 e'''16( d''' cis''' b'') b''( a'' gis'' fis'' e'' d'' cis'' d'' cis'' e'' d'' cis'' d'' e'' fis'' gis'' a'' b'' cis''' d'''
 e''' d''' cis''' b'' a'' gis'' fis'' e'' d'' cis'' b' a') fis''8.^\trill([ gis''32 a''] a'4) << { cis''8 b' a'4 } \\ { gis'4 a' } >> r4 r }
 \break

 \key d \major
 \repeat volta 2 { <fis' a'>8\p^\markup { \large "Trio." }( a <d' fis'> a <e' g'> a
 <fis' a'> a) <d' fis'>( <cis' e'> <d' fis'> <e' g'>) <fis' a'>( d' <g' b'> d' <g' cis''> e' <fis' d''> a')
 \new Voice { \stemDown \slurUp <d' fis'>( <cis' e'> <d' fis'> <e' g'>)
 \slurDown <fis' a'>( d' <g' b'> d' <g' cis''> e' <fis' d''>) a' <fis' d''> <e' cis''> <d' b'> <cis' a'> }
 \new Voice { \stemDown <b gis'>8( e' <cis' a'> e' <a' cis''> e' <gis' b'> e') <fis' d''> <e' cis''> <d' b'> <cis' a'>
 \slurDown <b gis'>8( e' <cis' a'> e' <a' cis''> e' <gis' b'>[ e']) }
 \new Voice { << { \stemUp \slurUp cis''8( b' cis'' d''! e'' a') cis''( e' b' e' \stemDown a' e')
 \slurDown <a' cis''>8\p( <gis' b'> <a' cis''> <b' d''>) } \\
 { \stemDown e'2\f ~ e'4 a' gis' s2 s4 } >> \stemDown \slurDown <cis'' e''>8( e' <a' cis''> e' <gis' b'> e' a' e' fis'\f d'' b' gis'
 \stemUp a' e' fis' d'' b' gis' a'\> gis' a' b' g' e'\!) } }
 \repeat volta 2 { \new Voice { \stemUp \slurDown <fis' a'>8\p( b <dis' fis'> b <e' g'> b \stemDown <fis' a'> b <dis' fis'> b <e' g'> b
 <fis' a'>8 b <dis' fis'> b <e' g'> b <fis' a'>4) } <b' b''>8\f <a' a''> <g' g''> <fis' fis''>
 <e' e''>4 <e' e''> <b' b''> <e' e''> <b' b''>8 <a' a''> <g' g''> <fis' fis''>
 <e' e''>4 <e' e''> <b' b''> <e' e''> e''8\p\staccato d''\staccato e''\staccato f''\staccato
 g''4 g''4. g''8 c'''!4( g'') r g''4 \setTextCresc g''4.\< g''8 c'''!4( g'') r8 r16 g'' e'''4( g'') r8 r16 g'' e'''4( g'') r8 r16 g''\!
 g''8\f( f'' e'' f'' e'' d'' cis''\staccato) gis''( a'' gis'' a'' e'' g''! f'' e'' f'' e'' d'' a'' gis'' a'' e'' f'' d''
 a''8 gis'' a'' e'' f'' d'' a'\> gis' a' gis' a' gis'\!)
 <fis'! a'>8\p( a <d' fis'> a <e' g'!> a <fis' a'> d') <b' d''>( <a' cis''> <g' b'> <fis' a'>)
 \new Voice { \stemDown \slurUp g'8( d' <fis' a'> d' <g' b'> d' <fis' a'> d') <b' d''>( <a' cis''> <g' b'> <fis' a'>)
 \slurDown <e' g'>( d' <fis' a'> d' <g' b'> d' <fis' a'> d') \slurUp <g' b'>( <fis' a'> <e' g'> <d' fis'>)
 <cis' e'>( a <d' a'> a <d' fis'> a <cis' e'> a) <g' b'>( <fis' a'> <e' g'> <d' fis'>) <cis' e'>8( a <fis' a'> a <d' fis'> a <cis' e'> a')
 << { d''8( cis'' d'' b') a'4 g' e' fis'8[ a'] } \\ { d'2\f ~ d'8 a d' b cis' a d'4 } >> \slurDown <b' d''>8\p( <ais' cis''> <b' d''> <g' b'>)
 <fis' a'!>( d' <e' g'> b <cis' e'> a <d' fis'>[ a']) }
 \slurUp a'8( g' e' cis' d' fis' a' g' e' cis' }
 \alternative { { d'8\staccato) \slurDown cis'\>( d' e' fis' g'\!) } { d'4 r r \bar "||" } }

 \key a \major
 \grace { cis'32([ e'] } a'2\f^\markup { \large "MENUETTO." })( e'4)
 cis''8( d''16 b' a'4) r4 e''8\p( fis''16 d'' cis''4) cis'''4\staccato dis''4( e''4.) eis''8\staccato
 gis''8\>( fis'' e''! d''! cis'' b'\! a' gis' e'' d'') r4 b'8( a'_\markup { \italic "cresc." } fis'' e'') r4
 cis''8\f( b' g''! fis'') r4 fis'4\p e''8( d'' cis'' b' a' gis'! a'4) r4
 \grace { b'32[ e'' gis''] } b''2.\f b''16( a'' gis'' fis'') fis''( e'' dis'' cis'' b' a' gis' a' gis' b' e'' gis'' b''2)
 b''16( a'' gis'' fis'') fis''( e'' dis'' cis'' b' a' gis' a' gis' b' a' gis' a' b' cis'' dis'' e'' fis'' gis'' a''
 b'' cis''' dis''' e''' dis''' cis''' b'' a'' gis'' fis'' e'' dis'')
 << { \stemDown cis''8\p[ r16 cis''']( s4 \stemUp gis''8 fis'' e''4) } \\ { s4 e''4 dis'' e'' } >> r4 r \bar ":|:"
 \appoggiatura e'32 e''4\f \appoggiatura fis'32 fis''4 \appoggiatura g'32 g''4
 b'4\p( ais') r8 r16 ais'\staccato \setTextCresc cis''4\<( b') r8 r16 b'16\staccato d''!4( cis'') r8 r16 cis''16\staccato\!
 e''8\f( d'') f''( e'') g''( f'') a'4\p( gis'!) r8 r16 gis'\staccato b'4( a') r8 r16 a'\staccato
 \setTextCresc cis''4\<( b') r8 r16 b'\staccato d''8([ c'' b' a'] a''\staccato) a''\staccato\! b''8\f( a'' g'' f'' e'' dis'')
 c'''2( dis''4) e''4. fis''!16( e'') e''( d''! cis''! b')
 \grace { cis'32([ e'] } a'2\f)( e'4) cis''8( d''16 b' a'4) r4 e''8\p( fis''16 d'' cis''4) cis'''4\staccato
 dis''4( e''4.) eis''8\staccato gis''8\>( fis'' e''! d''! cis'' b'\! a' gis' e'' d'') r4
 b'8( a'_\markup { \italic "cresc." } fis'' e'') r4 b'8\f( a' a'' g'') r4 g''8\p( fis'' e'' d'' cis'' b')
 e''8[ \grace { fis''32[ e'' d''] } e''16 fis''] a'4( gis') \grace { a'16[ cis''] } e''4\f e''2
 e''16( d'' cis'' b') b'( a' gis' fis' e' d' cis' d' cis' e' a' cis'' e''4.) e'''8
 e'''16( d''' cis''' b'') b''( a'' gis'' fis'' e'' d'' cis'' d'' cis'' e'' d'' cis'' d'' e'' fis'' gis'' a'' b'' cis''' d'''
 e''' d''' cis''' b'' a'' gis'' fis'' e'' d'' cis'' b' a') fis''8.^\trill([ gis''32 a''] a'4) << { cis''8 b' a'4 } \\ { gis'4 a' } >> r4 r \bar ":|"
}

 \context Staff = "down" {
 \clef bass
 \key a \major
 \time 3/4
 \repeat volta 2 { \grace { s32 s32 } <a, a>2( <e, e>4) <cis cis'>4( <a, a>4) r4 r r \clef treble <a fis'>4\staccato <b a'>4( <e' gis'>) r
 R2. \clef bass e8( d' b d' b d' e cis' a cis' a cis' d b fis b fis b) d4 r r <d d'>4( <a cis'>) r
 e8( gis b gis fis e dis e fis b, cis dis e gis b gis fis e dis e fis b, cis dis e4) r r R2.
 \clef treble << { fis'4( gis' a') gis' } \\ { a4 b2 } >> \clef bass e4 r }
 \repeat volta 2 { \appoggiatura s32 R2. fis8( cis' fis' e' d' cis' fis d' fis' d' cis' b fis ais e' cis' b ais b4) r r
 e8( b e' d' cis' b e cis' e' cis' b a e gis d' b a gis a2) <g, g>4 <f, f>2 r4
 << { a8( gis a c' b a gis4) } \\ { f2.\sfp e4 } >> r4 r
 <a, a>2 <e, e>4 <cis cis'>4 <a, a> r r r \clef treble <a fis'>4\staccato <b a'>( <e' gis'>4) r R2.
 \clef bass e8( d' b d' b d' e cis' a cis' a cis' e cis' a cis' a cis') <d a d'>4 r r
 << { cis8.( d16) cis'4( b) } \\ { s4 e2 } >> a8( cis' e' cis' b a gis a b e fis gis a cis' e' cis' b a gis a b e fis gis a4)
 <fis a>4 <d fis a> <cis e a> r r << { a4( cis' d') cis' } \\ { d4 e2 a4 } >> a,4 r }
 \break

 \key d \major
 \repeat volta 2 { <d, d>2. ~ <d, d>4 r4 r r r <a, a>4 <d, d>
 \new Voice { \change Staff="up" \stemUp \slurUp fis''8^\markup { "L.H." }( e'' fis'' g'') a''4( b'' cis''') d''' d'''4\rest d'''4\rest }
 e4 cis a, e \new Voice { \change Staff="up" \stemUp \slurUp d'''8( cis''' b'' a'')
 \appoggiatura dis'''32 e'''4 \appoggiatura dis'''32 e'''4 \appoggiatura dis'''32 e'''4 \appoggiatura dis'''32 e'''4 }
 a,8( gis, a, b, cis4) e e, a, \new Voice { \change Staff="up" \stemUp \slurUp cis'''8( b'' cis''' d''' e'''4 cis''' b'' a'') }
 <d b>4 <e d'> <a cis'> <d b> <e d'> <a cis'> r4 r }
 \repeat volta 2 { <b,, b,>2. ~ <b,, b,>4
 \new Voice { \change Staff="up" \stemUp \slurUp c'''8( b'' a'' g'' fis''4) a''8( g'' fis'' e'' dis''4) } <b, b>8 <a, a> <g, g> <fis, fis>
 <e, e>4 <e, e> <b, b> <e, e> <b, b>8 <a, a> <g, g> <fis, fis> <e, e>4 <e, e> <b, b> <e, e> r r \clef treble
 << { \override Staff.NoteCollision #'merge-differently-headed = ##t
 c'8( e' g' e' f' d' c' e' g' e' f' d' c' e' g' e' f' d' c' e' g' e' c' e' bes c' e' g' e' c' a cis'! e' g' e' cis' <a d'>2) e'8( f' <a e'>4) } \\
 { c'2 b4 c'2 b4 c'2 b4 c'2 f4\rest bes2 f4\rest a2 f4\rest s2 gis4 s4 } >> r4 r
 <bes d' gis'>2. <a cis'! a'>4 r <a d' f'> <a cis' e'> r <a d' f'> <a cis' e'> r r
 \clef bass <d, d>2. ~ <d, d>4 r r
 \new Voice { b,4( a, g,) d4 \change Staff="up" \stemUp \slurUp d'''8( cis''' b'' a'') g''4( a'' b'') a'' b''\rest b''\rest
 \change Staff="down" \stemUp a,4( fis, d,) a,4 \change Staff="up"  \slurUp b''8( a'' g'' fis'')
 \appoggiatura gis''32 a''4 \appoggiatura gis''32 a''4 \appoggiatura gis''32 a''4 \appoggiatura gis''32 a''4
 \change Staff="down" \stemDown \slurUp b8( ais b g) fis4 e \stemUp a, \stemDown d
 \change Staff="up" \stemUp \slurUp d'''8( cis''' d''' b'') a''4( g'' e'') fis'' }
 << { \new Voice { \change Staff="up" \stemDown d'4\f } g fis
 \new Voice { \change Staff="up" \stemDown d'4 } g } \\ { g,4 a, d g, a, } >> }
 \alternative { { << { fis4 } \\ { d4 } >> r4 r } { <d fis>4 d,_\markup { \center-align { "Menuetto D.C." } } r4 \bar"||" } }

 \key a \major
 <a, a>2( <e, e>4) <cis cis'>4( <a, a>4) r4 r r \clef treble <a fis'>4\staccato <b a'>4( <e' gis'>) r
 R2. \clef bass e8( d' b d' b d' e cis' a cis' a cis' d b fis b fis b) d4 r r <d d'>4( <a cis'>) r
 e8( gis b gis fis e dis e fis b, cis dis e gis b gis fis e dis e fis b, cis dis e4) r r R2.
 \clef treble << { fis'4( gis' a') gis' } \\ { a4 b2 } >> \clef bass e4 r \bar ":|:"
 \appoggiatura s32 R2. fis8( cis' fis' e' d' cis' fis d' fis' d' cis' b fis ais e' cis' b ais b4) r r
 e8( b e' d' cis' b e cis' e' cis' b a e gis d' b a gis a2) <g, g>4 <f, f>2 r4
 << { a8( gis a c' b a gis4) } \\ { f2.\sfp e4 } >> r4 r
 <a, a>2 <e, e>4 <cis cis'>4 <a, a> r r r \clef treble <a fis'>4\staccato <b a'>( <e' gis'>4) r R2.
 \clef bass e8( d' b d' b d' e cis' a cis' a cis' e cis' a cis' a cis') <d a d'>4 r r
 << { cis8.( d16) cis'4( b) } \\ { s4 e2 } >> a8( cis' e' cis' b a gis a b e fis gis a cis' e' cis' b a gis a b e fis gis a4)
 <fis a>4 <d fis a> <cis e a> r r << { a4( cis' d') cis' } \\ { d4 e2 a4 } >> a,4 r \bar ":|"
}
>>

 \midi { \tempo 4 = 134 }

}
