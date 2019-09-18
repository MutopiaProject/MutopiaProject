\version "2.19.82"
\language "english"

\relative {
  \key b \major
  \clef bass
  \override Beam.auto-knee-gap = #4
  
  %% Something in here
  \stemDown fs,8( cs' <fs as> cs as cs <fs cs'> cs) |
  cs,8-. cs'( <es b'> cs) fs,( cs' <fs as> cs) |
  fs,8( cs' <fs as> cs) fs,( cs' cs' cs,) |
  cs,8-.( cs' <es b'> cs) << { s8 cs4 s8 } \\ { fs,^( cs' as' css,) } >> |
  %% End
  
  ds,8( as' <ds fs as> as) ds,( as' as' as,) |
  as,8( as' es' gs) ds,( as' fs' ds) |
  gss,8( ds' bs' es,) as,( es' cs' as) |
  << { fs'8( as, es' ds ) } \\ { ds,4 <es gss> } >> as,8( es' cs' <e,gs>) |
  ds,8( ds' <fs cs'> ds) gs,( ds' <gs b> ds) |
  << { e'8( gs, ds' cs) } \\ { cs,4 <ds fss> } >> gs,8( ds' <gs b> ds) |
  
  <<
    { s8 ds4*1/2 css' ds, cs' ds, b' s8 }
    \\
    { ds,,8 ds' css' ds, cs' ds, b' ds, }
  >> |
  << { s8 ds2 ds4 s8 } \\ { as'8^( ds, ds' cs b ds, css' ds, } >> |
  <<
    { ds'4*1/2 ds, css' ds, cs' ds, b' s8 }
    \\
    { ds8 ds, css' ds, cs' ds, b' ds, }
  >> |
  << 
    { s8 ds2*3/4 b'4*1/2 ds, css'4 } 
    \\ 
    { as8 ds, ds' cs b ds, css' ds,) } 
  >> |
  ds,8( fss' as ds) e,,([ e' gs cs16]) r\fermata |
  \stemNeutral
  g,,8 e''( b' e) fs,,, fs''( as e') |
}

