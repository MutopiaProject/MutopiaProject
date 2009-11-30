\version "2.12.2"
  \relative { 
    \time 2/4
    \key b \minor
    \set Staff.midiInstrument = "soprano sax"

    \tempo \markup { Vivacissimo \normal-text \italic \tiny { (à la Capricio) } }

    b'''='''4-.-> \ff b,-.->
    b,-.-> b,-.->
    fs'8-. e16( g) fs8-. \noBeam \times 2/3 { e16( d cs) } |
    b16( d) fs-. b-. <d fs>8.( b'16) |
    b,,8-. <fs' d' b'>-._\markup { \italic sempre \dynamic ff } fs-. <cs' a'>-. |

  %%%%%% measure 6 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  gs,( <ds' bs' gs'>-.) \times 8/7 { cs64([ ds es fs gs\< as bs] } 
  	\times 8/7 { cs[ ds es fs gs as bs)\! ] } |
  cs4( cs'-.)_\markup { \italic sempre \dynamic ff } |
  b-.->\downbow b,-.-> 
  b,-.-> b,-.-> |
  fs'8-. e16( g) fs8\noBeam e32( d cs b) |

  %%%%%% measure 11 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  a16( d) fs-. a-. <d fs>8.( b'16) |
  g,,8-. <e' d' b'>-. a,-. <e' cs' g'>-. |
  d( <a' fs'>-.) \times 8/7 { d,64([ e fs g\< a b cs] }
  	\times 8/7 { d[ e fs g a b cs)]\! } |
  d4(_\markup { \italic sempre \dynamic ff } d'-.) |
  fs,,--(^\markup { \center-column { \line { sul E } } } \upbow \p \< fs--)^\markup { A } |

  %%%%%% measure 16 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  fs--(^\markup { D } g--)\!^\markup { G } |
  a,,16-.(\< as-. b-. cs-. d-. e-. fs-. g-.) |
  a( g) fs-. g-. a( d,) fs-. a-. |
  d( fs) a-. d-. a'8(\ff d-.) |
  fs,,4--\p ^\markup { \center-column { \line { sul E } } } fs--^\markup { A } |
  fs--^\markup { D } g--^\markup { G } |

  %%%%%% measure 22 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  a,,16-.\< b-. cs-. d-. e-. fs-. g-. a-.
  fs( d) fs-. a-. d( fs) a-. d-.\!
  d,,8(\ff <fs' d'>) <d, g,>(\pp e16 fs) |
  <d g,>8( e16 fs) <d g,>8( e16\< fs) |

  %%%%%% measure 26 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  g16-. a-. b-. c-.\! <b d>8-.\ff <b g'>-. |
  <c e>-.\> <e g>-.\! <b d>-.\p g,16(\< a) |
  b( cs) d-. e-.\! <d fs>8( b'-.) |
  <e, cs>(\f\> as-.) <b d, b>-.\! r |
  <d, g,>8(\pp e16 fs) <d g,>8( e16 fs) |

  %%%%%% measure 31 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  <d g,>8( e16\< fs) g-.( a-. b-. c-.) \! |
  <d b>8-.\f <g b,>-. <e c>-. <g e>-. 
  <b b, d, g,>-.\sf <d,, fs>16-.(\p\< <e g>-. <fs a>-. <g b>-. <a c>-. <b d>-.)\! |
  <c e>8-.[\f <b d>-. <a c>-.] <g b>16(\> d') |

  %%%%%% measure 35 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  b'8-. d-. b'-.\p r |
  <d,,, g,>8(\pp\< e16 fs) <d g,>8( e16 fs) |
  g16( a) b-. c-.\! d8-.\f\upbow <g b, d,>-.\downbow |
  d-. <d b' e,,>-. cs-. <cs b' e,,>-. |
  cs-.\> <cs as' fs,>-. b,( <fs' d' b'>-.)\! |

  %%%%%% measure 40 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  <fs a>8(\mf\<\downbow <g b>16 <a cs> <b d> <cs e> <d fs> <e g>\! |
  <fs a>8-.) <fs a,>16( <g b,>-.) <e g,>8-. a-.-0 |
  <d, fs,>-.\> d,-. d''-0\p r |
  b'4-.->\ff b,-.-> |
  b,-.-> b,-.->
  fs'8-. e16( g) fs8-.\noBeam d'-.\p |

  %%%%%% measure 46 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  cs-. b16( cs) d8-.\noBeam fs-. |
  <a cs,>-. <gs b,>16(\> <a cs,>) <fs a,>8-.\! r |
  b'4-.->\ff b,-.-> 
  b,-.-> b,-.->
  e16( fs) g-. a-. fs( b) d-. e-. |

  %%%%%% measure 51 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  fs( b) d-. e-. fs8( b-.) |
  \times 2/3 { fs,16(\( g fs) } b8\) \times 2/3 { fs,16( g fs } b8) |
  <<
    {
      g16( fs e g) fs( e d fs) |
      e( d cs e) d8( \times 2/3 { e16 d cs) } |
    }
    \\
    {
      b4 a 
      a8 s d-. s 
    }
  >>

  %%%%%% measure 55 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  d8[(\> <a' fs' d'>) d,]-.\! r |
  <d a' f' d'>-.\ff gs'16( a) <d,, a' f' d'>8-. gs'16( a) |
  <g,, d' bf' bf'>16-. a''-. g-. fs-. g-. f-. e-. d-. |
  <a, e' cs'>-. a'-. cs-. e-. a-.\> e-. a-. cs-.\! |

  %%%%%% measure 59 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  <d f, a, d,>8-.\ff gs,16( a) <d f, a, d,>8-. gs,16( a) |
  <bf bf, d, g,>-. a-. g-. fs-. <g bf, ef,>-. f-. ef-. d-. |
  <cs e, a,>-. a-. cs-. e-. a-. e-. a-. cs-.
  <d fs,>8-.\sf cs16-. d-. <b d,>8-._\markup { \italic dimin. } as16-. b-. |

  %%%%%% measure 63 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  fs16( e) d-. cs-. b8-. \acciaccatura cs8 d-. |
  <bf g>-.\> \acciaccatura cs d-. <a fs>16(\p d) a,-. cs-. |
  d( e) <d fs>-.(\< <e g>-. <fs a>-. <g b>-. <a cs>-. <b d>-.) |
  <cs e>( a) d-. e-. <a cs,>( e) a-. cs-.\! |

  %%%%%% measure 67 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  e8-.\ff gs16( a) e,8-. gs16(\> a) |
  e,8-. gs16( a) a,8-.\! b16(\p cs) |
  d8[_(\> <d'' fs, a,>-. d,,-.)]\! fs''8-.\ff |
  b4-.-> b,-.-> 
  b,-.-> b,-.-> |
  <b fs'>8(\pp gs'16 as) <fs b,>8( gs16 as) |

  %%%%%% measure 73 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  b16-.\< cs-. ds-. e-. <fs ds>8-. <b ds,>-.\ff |
  <gs e>-. b-. <fs ds>-.\noBeam es,-.\pp |
  <fs b,>8( g!16 a!) <fs b,>8( g16 a) 
  <fs b,>8( gs16\< as) b( cs) d-. e-.\! |
  <fs d>8-.\ff b-. <g e>-.\> b-.\! |

  %%%%%% measure 78 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  <fs d>8-.\noBeam\p <as, fs>16-.(\< <b gs>-. <cs as>-. <d b>-. <e cs>-. <fs d>-.)\! |
  <g e>8-.[\f <fs d>-. <e cs>-.] <d b>16(\> fs) |
  b8-. fs'-.\! b-.\p r |
  <fs, d>8-.\pp b-. <g e>-. b-. |
  <fs d>-.\noBeam <as, fs>16(\< <b gs> <cs as>-. <d b>-. <e cs>-. <fs d>-.)\! |

  %%%%%% measure 83 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  <g e>16-._\markup { \italic poco } <g e>-. <b d,>8-.\> <e, d>16-. <e d>-. <a cs,>8-. |
  <d, cs>16-. <d cs>-. <g b,>8-. <cs, b>16-.\pp <cs b>-. <fs as,>8-. |
  b8.(\ff b'16) b,,8.( b'16) |
  b,,8.( b'16) b,8.( d16) |
  fs8-. e16( g) fs8-.\noBeam \times 2/3 { e16( d cs) } |

  %%%%%% measure 88 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  b16( d) fs-. b-. <d fs>8.( b'16) |
  b,,8-._\markup { \raise #0 \hspace #-9 \italic sempre \dynamic ff } 
  	<fs' d' b'>-. fs-. <cs' a'>-. |
  gs,( <ds' bs' gs'>-.) \times 4/7 { cs32[(\< ds es fs gs as bs] } 
  	\times 4/7 { cs32[ ds es fs gs as bs])\! } |
  cs4(_\markup { \italic sempre \dynamic ff } cs'-.) 
  b-.-> \downbow b,-.-> 
  b,-.-> b,-.->

  %%%%%% measure 94 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  fs'8-. e16( g) fs8-. \noBeam e32( d cs b) |
  a16( d) fs-. a-. <d fs>8.( b'16)_\markup { \raise #0 \hspace #-9
  	\italic sempre \dynamic ff } |
  g,,8-. <e' d' b'>-. a,-. <e' cs' g'>-. 
  d( <a' fs'>-.) \times 4/7 { d,32[(\< e fs g a b cs] } \times 4/7 { d e fs g a b cs)\! }

  %%%%%% measure 98 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  d4( \ff d'-.)
  a,--(_\markup { \center-column { "sul E" } } \p \upbow \< a--)_\markup { A }
  a--(_\markup { D } g--)_\markup { G } \!
  a,,16-.\( cs-. d-. e-. fs-. g-. a-. b32( cs)\)
  d8-.\> fs-. a,-.\! r16 gs'-. |
  a4-.\<^\markup { \center-column { "sul E" } } a-.^\markup { A } 
  a-.^\markup { D } g-.^\markup { G } \!

  %%%%%% measure 105 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  cs,,16-. d-. e-. fs-. g-. a-. b-. cs-. |
  d8-. a'16(\> cs) d8-.\p \noBeam \afterGrace fs,(\ff \startTrillSpan  
  	{ \stemDown es16[ fs])\stopTrillSpan }
  \stemNeutral
  <b,, fs' d' b'>8-. es'16( fs) <b,, fs' d' b'>8-. es'16( fs) |
  <b,, fs' d' b'>8-. <d' fs>16( <e g>) <d fs>8 \noBeam \afterGrace a'(\startTrillSpan
  	{ \stemDown gs16[ a])\stopTrillSpan } |

  %%%%%% measure 109 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  <d f, a, d,>8-. gs,16(\ff a) <d f, a, d,>8-. gs,16( a)  |
  g,,8-.-> <ef' bf' bf'>-. a,-.-> <e' cs' a'>-. |
  d16( e32\< fs g a b cs) d( e fs g gs a b cs) |
  d8-. e-.\! fs-. as-.

  %%%%%% measure 113 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  b8-._\markup { \italic { con tutta forza } } b,-. b,-. b,-. |
  <ds' fs>8-. <e g>16( b-.) c-.-> c,-.\p\< e-. g-. |
  c-._\markup { \italic { strin - gen - do } } e-. g-. c-. e-. c-. e-. g-.\! |
  \ottava #1 c(\ff e) \ottava #0 r8 \tempo \markup { Più presto }
  	fs,,,8-.->\fff <e' as>-. |
  b,4-.-> <fs' d' b'>( |
  b''8-0) r \bar "|."
  }
