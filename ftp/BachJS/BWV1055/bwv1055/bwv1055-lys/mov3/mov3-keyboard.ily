
upperKeyb =   \relative c'' {
    \partial 8 e8
  | a8.^\scrCourtMordentRight gis32 fis e d cis b
  | \nachschlag\appoggiatura b8 cis8~ cis32 b cis d cis b a gis
  | \nachschlag\appoggiatura gis8 a8. gis32 fis e d cis b
  | \tag #'printed { a4\trill } \tag #'played { \tuplet 5/4 { b32 a b a b } a8 } a'8
  %5
  | e16( b'cis) a b d
  | e,16( cis'd) b cis e
  | a,16( d e) cis d fis
  | \tag #'printed { \appoggiatura cis8 b4 } \tag #'played { cis8 b } e8
  | a8.^\scrCourtMordentRight gis32 fis e d cis b
  %10
  | \nachschlag\appoggiatura b8 cis8~ cis32 b cis d cis b a gis
  | \nachschlag\appoggiatura gis8 a8. gis32 fis e d cis b
  | \tag #'printed { a4\trill } \tag #'played { \tuplet 5/4 { b32 a b a b } a8 } e''8
  | fis16( cis d) fis b,d
  | gis16( cis,d) fis b,d
  %15
  | a'16( cis,d) fis b,d
  | b'8~ b32 a gis fis e d cis b
  | cis16( e gis) b a fis
  | dis16( e32 fis) e8. d16
  | cis16( a gis) b a fis
  %20
  | dis16( e32 fis) e8. fis32 gis
  | a16( b32 cis) d8. cis32 b
  | cis16( d32 e) fis8. e32 d
  | e16( fis32 gis) a8-! \tag #'printed { b,8\trill } \tag #'played { \tuplet 6/4 { cis32 b cis b cis b } }
  | a4 e'8
  %25
  | \tag #'printed { \appoggiatura d8 cis4. ~ } \tag #'played { d16 cis4~ cis16 ~ }
  | cis8. d32 e d cis b16
  | \tag #'printed { \appoggiatura b8 \once \tieUp a4. ~ } \tag #'played { b16 a4~ a16 ~ }
  | a8. a32( b cis d e16)
  | fis16 gis \tag #'printed { gis16\trill } \tag #'played { a64 gis a gis } fis32 gis a8 ~
  %30
  | a16 gis32 a b a gis fis e16. d32
  | \tag #'printed { \appoggiatura d8 cis4. ~ } \tag #'played { d16 cis16 ~ cis4 ~ }
    \hideTupletBracket \tupletUp
  | cis8. \tuplet 3/2 { cis32 d e} d16 cis
  | \tag #'printed { cis16(^\prall } \tag #'played { \tuplet 3/2 { d64 cis d } cis32( } b16) b( dis) dis( e)
  | a,8._[ \tuplet 3/2 { a32 b cis } b16 a]
  %35
  | \tag #'printed { a16(^\prall } \tag #'played { \tuplet 3/2 { b64 a b } a32( } gis16) \shapeSlurA gis( dis') dis( e)
  | fis,8. \tuplet 3/2 { fis32 gis a } gis16 fis
  | e16 dis32 e fis gis a b cis8 ~
  | cis16[ b] \tag #'printed { \appoggiatura e8 dis8.^\scrCourtPrall } \tag #'played { e16 dis8 } e16
  | e,4.\hideFF ~
  %40
  | e4 \tag #'printed { \once \stemUp b'8\turn } \tag #'played { cis32-\hideMF b a b }
  | \alignBeamQtr cis16( gis a) cis fis,a
  | dis16( gis,a) cis fis,a
  | e'16(_[ gis, a) cis fis,a]
  | \tag #'printed { \appoggiatura a16 fis'8 ~ } \tag #'played { fis8-\hideFF ~ } fis32 e-\hideMF dis cis b a gis fis
  %45
  | \tag #'printed { \appoggiatura fis8 gis4. ~ } \tag #'played { fis16 gis16 ~ gis4 ~ }
  | gis8. a32 b a gis fis16
  | \tag #'printed { \appoggiatura fis8 e4. ~ } \tag #'played { fis16 e16 ~ e4 ~ }
  | e8. e32 fis gis a b16
  | cis16 dis \tag #'printed { dis\prall } \tag #'played { e64 dis e dis } cis32 dis e8 ~
  %50
  | \lessBeamSlant e16 dis32 e fis e dis cis b16 a
  | \tag #'printed { \appoggiatura a8 gis4. ~ } \tag #'played { a16 gis16~ gis4 ~ }
  | gis8. e16 \tag #'printed { e32\prall } \tag #'played { fis64 e } dis32 e16
  | b16 fis'( gis e fis a)
  | \lessBeamSlant b,16 gis'( a fis gis b)
  %55
  | \lessBeamSlant e,16 a( b gis a cis)
  | \tag #'printed { \appoggiatura gis8 fis4 } \tag #'played { gis8 fis8 } \once\stemUp b8
  | \tag #'printed { b4.\prallprall ~ } \tag #'played { \scaleDurations 1/3 \repeat unfold 9 { cis16-\hidePPP b }  }
  | \tag #'printed { b4. ~ } \tag #'played { \scaleDurations 1/3 \repeat unfold 9 { cis16 b } }
  | \tag #'printed { b4.^~ } \tag #'played { \scaleDurations 1/3 { \repeat unfold 8 { cis16 b } cis b ~ } }
  %60
    \setBeatStructureEigth 
  | \tuplet 3/2 8 { b16 e,-\hideMP fis gis a b b cis d }
  | \tuplet 3/2 8 { cis16 fis,gis a b cis cis dis e }
  | \tuplet 3/2 8 { dis16_[ gis,a] b cis dis dis e fis }
    \setBeatStructureHalf
  | \tag #'printed { \nachschlag\appoggiatura fis8 e8. } \tag #'played { fis16 e8 } dis32( e fis e dis16)
  | \tag #'printed { \appoggiatura dis8 e8. } \tag #'played { dis16 e8 } e32( fis g fis e16)
  %65
  | \tag #'printed { \appoggiatura e8 d!8. } \tag #'played { e16 d8 } cis32( d e d cis16)
  | \tag #'printed { \appoggiatura cis8 d8. } \tag #'played { cis16 d8 } d32( e fis e d16)
    \setBeatStructureEigth
  | \tuplet 3/2 8 { cis16 a'gis fis e dis dis cis b }
  | \tuplet 3/2 8 { b16 gis'fis e dis cis cis b a }
  | \tuplet 3/2 8 { a16 fis'e dis cis b b a gis }
    \setBeatStructureHalf
  %70
  | gis8. ais32 b cis b ais16
  | g'16 fis8 e32 dis e16 cis
  | ais16 b32 cis b4 ~
  | b4 r8
  | r \tag #'printed { b,8.\mordent } \tag #'played { \tuplet 3/2 { b32 a b~ } b8 } cis32 dis
  %75
  | e16 fis32 gis a8. gis32 fis
  | \stemDown gis16 a32 b cis8. b32 a
  | b16 cis32 dis e8-! \tag #'printed { fis,8\turn } \tag #'played { gis32 fis e fis }
  | \stemUp e4 b'8
  | e8. dis32 cis b a gis fis \stemNeutral
  %80
  | gis8~ gis32 fis gis a gis fis e dis
  | \tag #'printed { \nachschlag\appoggiatura dis8 \lessBeamSlant e8. } \tag #'played { dis16 e8 } dis!32 cis b \staffDown a gis fis
  | \once\stemUp \longerStem e8 \staffUp r b''
  | \tag #'printed { b4.\prallprall ~ } \tag #'played { \scaleDurations 1/3 \repeat unfold 9 { cis16-\hidePPPP b }  }
  | \tag #'printed { b4. ~ } \tag #'played { \scaleDurations 1/3 { \repeat unfold 8 { cis16 b } cis b ~ } }
  %85
  | b16 cis32-\hideMF d e( d) cis16 d32( cis) b16
  | cis16_[ a gis a cis8-!]
  | \tag #'printed { \shapeSlurB cis4.\prallprall ~ } \tag #'played { \scaleDurations 1/3 \repeat unfold 9 { d16-\hidePPPP cis }  }
  | \tag #'printed { \shapeSlurB cis4. ~ } \tag #'played { \scaleDurations 1/3 { \repeat unfold 8 { d16 cis } d cis ~ } }
  | cis16 d32-\hideMF e fis( e) d16 e32( d) cis16
  %90
  | d16_[ b( ais b) fis b32 cis]
  | d16[( cis32 b]) \tag #'printed { \nachschlag\appoggiatura b8 gis'8. } \tag #'played { b,16 gis'8 } b,16
  | a16( gis32 fis) fis'8.[^\scrCourtMordent e16]
    \setBeatStructureEigth
  | \tuplet 3/2 8 { d16-! cis-! b-! a-! gis-! fis-! eis fis gis }
  | \tag #'printed { \setUpPrallSpanner \shapeSlurC cis,4.\startTrillSpan ~ } \tag #'played { \scaleDurations 1/3 { b16-\hidePPPP cis \repeat unfold 8 { d cis } } }
  %95
  | \tag #'printed { \shapeSlurC cis4.\stopTrillSpan ~ } \tag #'played { \scaleDurations 1/3  \repeat unfold 9 { d16 cis } }
  | \tag #'printed { \shapeSlurC cis4. ~ } \tag #'played { \scaleDurations 1/3  \repeat unfold 9 { d16 cis } }
  | \tag #'printed { \shapeSlurC cis4. ~ } \tag #'played { \scaleDurations 1/3 { \repeat unfold 8 { d16 cis } d cis ~ } }
  | \tuplet 3/2 8 { cis16 fis-\hideMF eis fis gis a a gis fis }
  | \tuplet 3/2 8 { d'16 fis,eis fis gis a a gis fis }
  %100
  | \tuplet 3/2 8 { eis'fis,eis fis gis a a gis fis }
  | \tuplet 3/2 8 { fis'16 eis fis b a gis }
        <<{ \hideNotes b'8\rest \unHideNotes }  %{ between-staff spacer %}  
        \\{ \tuplet 3/2 8 { a,16 gis fis] } }>>
  | \tuplet 3/2 8 { eis16 dis cis d cis b cis b a }
  | \tag #'printed { \appoggiatura gis8 fis ~ } \tag #'played { gis16 fis16 ~ } \tuplet 3/2 8 { fis16 eis fis g fis eis! }
  | \tag #'printed { \nachschlag\appoggiatura eis8 fis8 ^~ } \tag #'played { eis16 fis16 ~ } \tuplet 3/2 8 { fis16_[ cis'd] e! d cis }
  %105
  | \tag #'printed { \nachschlag\appoggiatura cis8 d8 ~ } \tag #'played { cis16 d16 ~ } \tuplet 3/2 8 { d16 fis,gis a gis fis }
  | \tag #'printed { \nachschlag\appoggiatura fis8 eis8 ~ } \tag #'played { fis16 eis16 ~ } \tuplet 3/2 8 { eis b'cis d cis b }
  | \tag #'printed { \nachschlag\appoggiatura b8 gis'8 ~ } \tag #'played { b,16 gis'16 ~ } \tuplet 3/2 8 { gis16 cis,dis eis fis gis }
  | \tuplet 3/2 8 { a16 gis fis } \tag #'printed { \appoggiatura fis8 g8.[ } \tag #'played { fis16 g8 } fis32 eis]
  | \tuplet 3/2 8 { fis16 e! d } \tag #'printed { \appoggiatura d8 cis8.[ } \tag #'played { d16 cis8 } fis32 e]
  %110
  | \tuplet 3/2 8 { d16 cis b a gis fis b a gis }
    \setBeatStructureHalf
  | \alignBeamSix fis16 eis fis a d,fis
  | b fis gis b e,! gis
  | \alignBeamQtr cis16 gis ais cis fis,ais
  | d8^[ ~ d32 e d cis b a! gis fis]
  %115
  | \alignBeamSix gis16 dis e gis cis,e
  | \alignBeamSix a16 e fis a d,fis
  | b16 fis gis b e,gis
  | cis8 r cis
  | \tuplet 3/2 { dis16[ e fis] } a,8. gis32 fis
  %120
  | \tuplet 3/2 { gis16[ bis dis] } fis8. e32 dis
  | \tuplet 3/2 { e16[ fis gis] } b,!8. a32 gis
  | \tuplet 3/2 { a16[ cis e] } gis8. fis32 e
  | \tuplet 3/2 { fis16[ gis a] } cis,8. bis32 ais
  | \tuplet 3/2 { bis16[ dis fis] } a!8. gis32 fis
  %125
    \setBeatStructureEigth
  | \tuplet 3/2 8 { gis16 fis e dis e fis e dis cis }
    \setTrillSpanner
  | \tag #'printed { \shapeSlurC gis4.\startTrillSpan ~ } \tag #'played { \scaleDurations 1/3 { \repeat unfold 9 { a16-\hidePPPP gis } } }
  | \tag #'printed { \shapeSlurC gis4.\stopTrillSpan ~ } \tag #'played { \scaleDurations 1/3 { \repeat unfold 9 { a16 gis } } }
  | \tag #'printed { \shapeSlurC gis4.~ } \tag #'played { \scaleDurations 1/3 { \repeat unfold 9 { a16 gis } } }
  | \tag #'printed { \shapeSlurC gis4.~ } \tag #'played { \scaleDurations 1/3 { \repeat unfold 8 { a16 gis } a gis ~ } }
  %130
  | \tuplet 3/2 8 { gis16-\hideMF fis eis fis gis a b cis d }
  | \tuplet 3/2 8 { e16 cis d } a8.[ cis32 d]
  | \tuplet 3/2 8 { fis16 cis d a cis d fis,_[ cis'd] }
  | \tuplet 3/2 8 { e16 cis d } a8.[ cis32 d]
  | \tuplet 3/2 8 { fis16 cis d a cis d fis,_[ cis'dis] }
  %135
  | \tuplet 3/2 8 { e16 fis gis } 
    << { \hideNotes e''8\rest \unHideNotes } \\  %{ <-------- Spacer between staves  %}
       { \tuplet 3/2 8 { \tupletUp a,,16[ gis fis] } } >>
       \tag #'printed { \appoggiatura fis8 gis ~ } \tag #'played { fis16 gis ~ }
  | \tuplet 3/2 8 { gis16 fis e dis e fis bis,cis dis }
    \setBeatStructureHalf
  | << { \hideNotes e'4.\rest \unHideNotes } \\  %{ <-------- Spacer between staves  %}
       { gis,,16 cis e8^! \tag #'printed { dis^\turn } \tag #'played { e32 dis cis dis } } >>
  | cis4 e8
  | a8.^\scrCourtMordentRight gis32( fis e d cis b)
  %140
  | \tag #'printed { \nachschlag\appoggiatura b8 cis ~ } \tag #'played { b16 cis ~ } cis32 b( cis d cis b a gis)
  | \tag #'printed { \nachschlag\appoggiatura gis8 a8. } \tag #'played { gis16 a8 } gis32 fis e d cis b
  | a4^\scrCourtPrall a'8
  | \stemDown e16( b' cis) a b d
  | e,16( cis'd) b cis e
  %145
  | a,16( d e) cis d fis
  | \tag #'printed { \nachschlag\appoggiatura cis8 b4 } \tag #'played { cis8 b8 } e8
  | \tag #'printed { \appoggiatura d8 \shapeSlurB cis4.~ } \tag #'played { d16 cis4~ cis16 ~ }
  | cis8. d32 e d cis b16
  | \tag #'printed { \nachschlag\appoggiatura b8 \shapeSlurB \once\stemUp a4.^~ } \tag #'played { b16 a4~ a16~ }
  %150
  | a8. a32 b cis d e16
  | fis16 gis \tag #'printed { gis\prall } \tag #'played { \tuplet 3/2 { gis32 fis gis } } fis32 gis a8~
  | a16 gis32 a b a gis fis e16. d32
  | \tag #'printed { \appoggiatura d8 \shapeSlurB cis4.~ } \tag #'played { d8 cis4 ~ }
    \setBeatStructureEigth \stemNeutral
  | \tuplet 3/2 8 { \lessBeamSlant cis16 a, b cis d e e fis g
  %155
  | fis b,cis d e fis fis gis! a
  | gis cis,d e fis gis gis a b } %end tuplets
    \setBeatStructureHalf
  | \tag #'printed { \nachschlag\appoggiatura b8 a8. } \tag #'played { b16 a8 } gis32 a b a gis16
  | \tag #'printed { \nachschlag\appoggiatura gis8 a8. } \tag #'played  { gis16 a8 } a32 b c b a16
  | \tag #'printed { \nachschlag\appoggiatura a8 g8. }  \tag #'played  { a16 g8 } fis32 g a g fis16
  %160
  | \tag #'printed { \nachschlag\appoggiatura fis8 g8. }  \tag #'played  { fis16 g8 } g32 a b a g16
    \setBeatStructureEigth
  | \tuplet 3/2 8 { fis16 d'cis b a gis! gis fis e
  | e16 cis'b a gis fis fis e d
  | d16 b'a gis fis e e d cis } % end tuplets
    \setBeatStructureHalf
  | cis8.^\scrCourtMordentRight dis32 e fis e dis16
  %165
  | c'16 b8 a32 gis! a16 fis
  | dis16 e32 fis e4~
  | e4 r8
  | r8 r \shapeSlurH e'^\scrCourtMordentRight ~
    \setBeatStructureEigth
  | \tuplet 3/2 8 { e16 cis d e fis gis a gis a }
  %170
  | \tag #'printed { \nachschlag\appoggiatura e8 d8.[ } \tag #'played { e16 d8 } d32 e fis e d16]
  | \tuplet 3/2 8 { d16 cis b \alignBeamSep cis e gis a gis a }
    \setBeatStructureHalf
  | \tag #'printed { \nachschlag\appoggiatura cis,8 b8. } \tag #'played { cis16 b8 } b32 cis d cis b16
  | a16 gis32 a b cis d e fis8~
  | fis16[ e] \tag #'printed { \nachschlag\appoggiatura a,8 gis8. } \tag #'played { a16 gis8 } a16
  %175
  | \shapeSlurH a4.^~
  | a16 cis e b cis e
  | a8. gis32 fis e d cis b
  | \tag #'printed { \nachschlag\appoggiatura b8 cis8_[ ~ }  \tag #'played { b16 cis16 ~ } cis32 b cis d cis b a gis]
  | \tag #'printed { \nachschlag\appoggiatura gis8 a8. } \tag #'played { gis16 a8 } gis32 fis e d cis b
  %180
  | \tag #'printed { a4\trill } \tag #'played { \tuplet 5/4 { gis32 a gis a gis } a8 } a'8
  | \stemDown e16( b' cis) a b d
  | e,16( cis' d) b cis e
  | a,16( d e) cis d fis
  | \tag #'printed { \appoggiatura cis8 b4\trill } \tag #'played { cis16 \tuplet 5/4 { b32 cis b cis b } cis16 } e8
  %185
  | a8.^\scrCourtMordentRight gis32 fis e d cis b
  | \tag #'printed { \nachschlag\appoggiatura b8 cis8~ } \tag #'played { b16 cis~ } cis32 b cis d cis b a gis
  | \stemNeutral a8. gis32 fis e d cis b
  | \tag #'printed { a4\trill } \tag #'played { \tuplet 5/4 { b32 cis b cis b } cis8 } e'8
  | fis16( cis d) fis b,d
  %190
  | gis16( cis,d) fis b,d
  | a'16( cis,d) fis b,d
  | \tag #'printed { \nachschlag\appoggiatura d8 b'8~ } \tag #'played { d,16 b'16 ~ } b32 a gis fis e d cis b
  | cis16( e gis) b a fis
  | dis16( e32 fis) e8. d16
  %200
  | cis16 a gis b a fis
  | dis16 e32 fis e8. fis32 gis
  | a16( b32 cis) d8. cis32 b
  | cis16( d32 e) fis8. e32 d
  | e16( fis32 gis) a8-! \tag #'printed { b,8\turn } \tag #'played { cis32 b a b }
  %210
  | a4*3/2\fermata-\hideFF
  | \bar "|."
}

lowerKeyb = \relative c {
    \partial 8 a8
  | a'8( a gis)
  | a8( a e)
  | fis8-! d-! e-!
  | a,16 b cis d e fis
  %5
  | gis8( fis gis)
  | a8( gis a)
  | fis8( a d,)
  | e16 fis e d cis b
  | a8( a gis)
  %10
  | a8( a e)
  | fis8 d e
  | a16 gis a b cis a
  | d8 d,d'
  | e8 e,e'
  %15
  | fis8 fis,fis'
  | gis8 gis,gis'
  | a8( a a)
  | a8 gis16 fis gis e
  | \lessBeamSlant a8 a,a
  %20
  | a8 gis16 fis e d!
  | cis8 fis gis
  | a d,d'
  | a'cis,e
  | a,4 a'8
  %25
    \clef treble
  | a'8( a a)
  | e8( e e)
  | fis8( fis fis)
  | cis8( cis cis)
  | d8( d cis)
  %30
  | b8[ e] \clef bass e,
  | \alignBeamQtr a,16( cis e) b cis e
  | a8 e'a
  | gis8( fis e)
  | fis8( e dis)
  %35
  | e8( cis b)
  | a8( fis a)
  | b8( b a)
  | gis8( a) b,
  | e,16( gis b) fis gis b
  %40
  | e16 dis e fis gis e
  | a8 a,a'
  | b8 b,b'
  | cis8 cis,cis'
  | dis8 dis,dis'
  %45
  | e8( e e)
  | b8( b b)
  | cis8( cis cis)
  | gis8( gis gis)
  | a8( a gis)
  %50
  | \lessBeamSlant fis8 b b,
  | e,16( gis b) fis gis b
  | e8^[( dis cis])
  | dis8 cis dis
  | e8 dis e
  %55
  | cis8_[ e a,]
  | b16 fis'b a gis fis
  | gis8 e dis
  | e8 e,fis
  | gis8 a b
  | e,8 r gis
  %60
  | a8 r fis
  | b8 r gis
    \setBeatStructureHalf
  | cis8 cis'bis
  | cis8 ais fis
  | b,8 b'ais
  %65
  | b8 gis e
  | a,8 r fis'
  | gis,8 r e'
  | fis,8 r \once\stemUp dis'
  %70
  | e,8 r e''
  | ais,8 b g
  | cis,8 dis b
  | e8( e e)
  | e8 dis16 cis b a
  %75
  | gis8 fis b
  | e,8 a fis
  | gis8 r16 gis'a b
  | e,16 b e dis e fis
  | gis8 e dis
  %80
  | e8 e,fis
  | gis8 a b
  | \shiftOn \alignBeamTre e,16( gis b) fis gis b
  | e8 e'e
  | d8 d d
  %85
  | cis8 cis,e
  | a,8 a'gis
  | fis8 fis'fis
  | e8 e e
  | d8 d, fis
  %90
  | b,8 b'd
  | eis,8 r cis
  | fis8 r fis,
  | b8 cis d
  | eis,16 gis( cis b a gis)
  %95
  | a8 fis eis
  | fis8 fis gis
  | a8 b cis
  | fis,8 a fis
  | b8 r r
  %100
  | cis8 r r
  | d8 r r
  | cis8 r b
  | ais8 ais' r
  | fis,8 fis' r
  %105
  | b,8 b'r
  | gis,8_[ gis'] r
  | \stemDown cis,8 eis cis
  | fis8 b cis
  | d8 a fis
  %110
  | b8 cis cis,
  | fis,8 fis'16 eis \shapeSlurD fis8 ~
  | fis8 e!16 dis \shapeSlurD e8 ~ \stemNeutral
  | e8 cis fis
  | b,8 cis d
  %115
  | cis,8 e'16 dis \shapeSlurE e8 ~
  | e8^[ d!16 cis \shapeSlurE d8] ~
  | d8 b e
  | a,8 a'gis
  | fis8 r dis
  %120
  | bis8 r gis
  | cis8 r cis
  | cis,8 r cis'
  | dis8 r dis
  | dis,8 r dis'
  %125
  | e8 a fis
  | gis16 a gis fis e dis
  | cis8 r r
  | dis8 r r
  | e8 r r
  %130
  | fis8 fis,( fis)
  | r8 fis( fis)
  | r8 fis( fis)
  | r8 fis( fis)
  | r8 fis'^[ bis,]
  %135
  | cis8 r bis
  | cis8 r dis
  | e16_[ fis gis8 gis,]
  | cis16 gis'cis d cis b
  | a8( a gis)
  %140
  | a8( a e)
  | fis8 d e
  | a,16_[ b cis d e fis]
  | gis8( fis gis)
  | a8( gis a)
  %145
  | fis8( a d,)
  | e16 fis e d cis b
  | a8 a'( a)
  | e8 e' e
  | fis,8 fis'fis
  %150
  | cis,8 cis'cis
  | d,8 d'cis
  | b8_[ e,e,]
  | \alignBeamQtr a16( cis e) b cis e
  | a8 r cis,
  %155
  | d8 r b
  | e8 r cis
  | fis,8 fis'eis
  | fis^[ dis b]
  | e,8 e'dis
  %160
  | e8 cis a
  | \once\stemUp d8 r b
  | cis8 r a
  | b8 r gis
  | a8 r a'
  %165
  | dis,8 e c'
  | fis,8 gis e
  | a8( a a)
  | a8 gis16 fis e d
  | cis8 r r
  %170
  | b8 r r
  | a8 r r
  | d8 r r
  | d8 r r
  | cis8 d e
  %175
  | a,8 a'e
  | cis8 a r
  | a8 a'( gis)
  | a8( a e)
  | fis8-! d-! e-!
  %180
  | a,16_[ b cis d e fis]
  | gis8( fis gis)
  | a8( gis a)
  | fis8( a d,)
  | e16 fis e d cis b
  %185
  | a8( a gis)
  | a8( a e)
  | fis8 d e
  | \alignBeamSix a16 gis a b cis a
  | d8 d,d'
  %190
  | e8 e,e'
  | fis8 fis,fis'
  | gis8 gis,gis'
  | a8( a a)
  | a8 gis16 fis gis e
  %200
  | \lessBeamSlant a8 a,( a)
  | a8 gis16 fis e d!
  | cis8 fis gis
  | a8 d,d'
  | a'8 cis,e
  %210
  | a,4*3/2\fermata-\hideFF
  | \bar "|."
}

figuredKeyb = { }
