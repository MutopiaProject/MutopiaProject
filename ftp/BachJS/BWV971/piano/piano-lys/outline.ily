\version "2.14.2"

outlineMvtI =
{
  \tempo "Allegro" 4=96
  \time 2/4
  \set Timing.beamExceptions = #'((end . (((1 . 8) . (4))
                                          ((1 . 16) . (4 4)))))
  s2*192
  \bar "|."
}

outlineMvtII =
{
  \tempo "Andante" 8=80
  \time 3/4
  s2.*49 | \bar "|."
}

outlineMvtIII =
{
  \tempo "Presto" 2=120
  \time 2/2
  s1*210 | \bar "|."
}
