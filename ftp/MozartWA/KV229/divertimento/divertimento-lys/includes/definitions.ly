\version "2.18.0"

paddingDynamics = \override DynamicLineSpanner.padding = #1.2
paddinggDynamics = \override DynamicLineSpanner.padding = #2.4
normalDynamics = \revert DynamicLineSpanner.padding

paddingSlur = {} %\override Slur.attachment-offset = #'((0 . 0.8) 0 . 0.8)
paddinggSlur = {} %\override Slur.attachment-offset = #'((0 . 1.3) 0 . 1.3)
normalSlur = {} %\revert Slur.attachment-offset

textUpMenuettoOne =  {
s4 \skip 2 .*7 s2
s4 \skip 2 .*23 s2 s2.
\override TextScript.padding = #2
s2.^"TRIO"
\revert TextScript.padding
\skip 2 .*40
s2
}

textDownMenuettoOne =  {
s4 \skip 2 .*7 s2
s4 \skip 2 .*23 s2 s4 s2_\markup { \bold \italic Fine }
\skip 2 .*41
s2_\markup { \bold \italic \column { Menuetto "da Capo" } }
}

textUpMenuettoTwo =  {
\skip 2 .*30
\override TextScript.padding = #2.6
s2.^"TRIO"
\revert TextScript.padding
\skip 2 .*35
}

textDownMenuettoTwo =  {
\skip 2 .*29
s4 s2_\markup { \bold \italic Fine }
\skip 2 .*35
s4 s2_\markup { \bold \italic \column { Menuetto "da Capo" } }
}

\paper {
  ragged-bottom = ##t
  top-margin = 12 \mm
  bottom-margin = 10 \mm
}
\layout {
  indent = 20 \mm
}