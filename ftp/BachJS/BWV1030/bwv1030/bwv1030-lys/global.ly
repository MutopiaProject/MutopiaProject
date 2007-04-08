globalA = {
   \key h \minor
   \time 4/4
   #(revert-auto-beam-setting '(end 1 32 4 4) 1 8)
   #(revert-auto-beam-setting '(end 1 32 4 4) 3 8)
   #(revert-auto-beam-setting '(end 1 32 4 4) 5 8)
   #(revert-auto-beam-setting '(end 1 32 4 4) 7 8)
   \set tupletSpannerDuration = #(ly:make-moment 1 8)
}

globalB = {
   \key d \major
   \time 6/8
}

globalC = {
   \key h \minor
   \time 2/2
}
