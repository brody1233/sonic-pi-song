use_bpm 120
define :restmeasure do
  play :r
  sleep 1
  play :e5
  sleep 1
  play :d5
  sleep 0.5
  play :c5
  sleep 0.5
  play :b4
  sleep 1
end

low = [:g2, :c3, 1, 1.5, 0.5]

define :measure6 do |i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12|
  play i1
  sleep i2
  play i3
  sleep i4
  play i5
  sleep i6
  play i7
  sleep i8
  play i9
  sleep i10
  play i11
  sleep i12
end
live_loop :drum do
  32.times do
    sample :drum_cymbal_closed, amp: 0.5
    sleep 0.5
  end
end
sleep 16
live_loop :voice do
  use_synth :organ_tonewheel
  restmeasure
  2.times do
    measure6 :b4,1,:c5,0.5,:b4,1,:a4,0.5,:g4,0.5,:a4,0.5
  end
  
  play :b4, sustain: 4
  sleep 4
  
  restmeasure
  3.times do
    measure6 :b4,1,:c5,0.5,:b4,1,:a4,0.5,:g4,0.5,:a4,0.5
  end
  
  play :b4, sustain: 1
  sleep 2
  play :c5, sustain: 1
  sleep 2
end
sleep 16
#bass
live_loop :bass do
  use_synth :bass_foundation
  play low[0]
  sleep low[3]
  play low[0]
  sleep low[2]
  play low[0]
  sleep low[2]
  play low[0]
  sleep low[4]
  2.times do
    play low[1]
    sleep low[3]
    play low[1]
    sleep low[2]
    play low[1]
    sleep low[2]
    play low[1]
    sleep low[4]
   
  end
  play :r
  sleep 4
end
