Before do |scn|
  @startup = Startup.new
end

After do |scn|
  binding.pry if scn.failed? && ENV['debug']
end