\version "2.0.1"

paddingDynamics = \property Voice.DynamicLineSpanner \override #'padding = #1.2
paddinggDynamics = \property Voice.DynamicLineSpanner \override #'padding = #2.4
normalDynamics = \property Voice.DynamicLineSpanner \revert #'padding

paddingSlur = \property Voice.Slur \override #'attachment-offset = #'((0 . 0.8) 0 . 0.8)
paddinggSlur = \property Voice.Slur \override #'attachment-offset = #'((0 . 1.3) 0 . 1.3)
normalSlur = \property Voice.Slur \revert #'attachment-offset

textUpMenuettoOne = \notes {
s4 \skip 2 .*7 s2
s4 \skip 2 .*23 s2 s2.
\property Voice.TextScript \override #'padding = #2
s2.^"TRIO"
\property Voice.TextScript \revert #'padding
\skip 2 .*40
s2
}

textDownMenuettoOne = \notes {
s4 \skip 2 .*7 s2
s4 \skip 2 .*23 s2 s4 s2_\markup { \bold \italic Fine }
\skip 2 .*41
s2_\markup { \bold \italic \column < Menuetto "da Capo" > }
}

textUpMenuettoTwo = \notes {
\skip 2 .*30
\property Voice.TextScript \override #'padding = #2.6
s2.^"TRIO"
\property Voice.TextScript \revert #'padding
\skip 2 .*35
}

textDownMenuettoTwo = \notes {
\skip 2 .*29
s4 s2_\markup { \bold \italic Fine }
\skip 2 .*35
s4 s2_\markup { \bold \italic \column < Menuetto "da Capo" > }
}
