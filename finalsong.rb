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

define :bassfnct do |i1,i2,i3,i4|
  play i1
  sleep i2
  play i1
  sleep i3
  play i1
  sleep i3
  play i1
  sleep i4
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
  play :b4
  sleep 1
  play :c5
  sleep 0.5
  play :b4
  sleep 1
  play :a4
  sleep 0.5
  play :g4
  sleep 0.5
  play :a4
  sleep 0.5
  
  play :b4
  sleep 1
  play :c5
  sleep 0.5
  play :b4
  sleep 1
  play :a4
  sleep 0.5
  play :g4
  sleep 0.5
  play :a4
  sleep 0.5
  
  play :b4, sustain: 4
  sleep 4
  
  restmeasure
  play :b4
  sleep 1
  play :c5
  sleep 0.5
  play :b4
  sleep 1
  play :a4
  sleep 0.5
  play :g4
  sleep 0.5
  play :a4
  sleep 0.5
  
  play :b4
  sleep 1
  play :c5
  sleep 0.5
  play :b4
  sleep 1
  play :a4
  sleep 0.5
  play :g4
  sleep 0.5
  play :a4
  sleep 0.5
  
  play :b4, sustain: 1
  sleep 2
  play :c5, sustain: 1
  sleep 2
end
sleep 16
#bass
live_loop :bass do
  use_synth :bass_foundation
  bassfnct :g2,1.5,1,0.5
  bassfnct :c3,0.5,1,1.5
  bassfnct :g2,0.5,1,1.5
  
  
  play :r
  sleep 4
end
