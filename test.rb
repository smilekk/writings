if $SAFE > 0
  tmp = @@systmpdir
else
  tmp = nil
for dir in [ENV['TMPDIR'], ENV['TMP'], ENV['TEMP'],  '/tmp', '.']
  next if !dir
        dir = File.expand_path(dir)
        if stat = File.stat(dir) and stat.directory? and stat.writable? and
           (!stat.world_writable? or stat.sticky?)
          tmp = dir
          break
         end rescue nil
  end
end

puts tmp


