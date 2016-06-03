#!/usr/bin/env ruby

require_relative './helpers/string_colors'

NODE_PACKAGES = [
  'internal-ip', # Show iternal ip.
  'is-up',       # Check whether a website is up or down.
  'pageres',     # Capture screenshots of websites in various resolutions.
  'peerflix',    # Show torrent movies without downloading.
  'public-ip',   # Show public ip.
  'spoof',       # MAC Spoofing.
  'trash',       # Remove files safe.
  'urban'        # Urban Dictionary
].freeze

def install(package)
  system("npm install -g #{package}")
end

puts '  Installing Node packages'

NODE_PACKAGES.each do |package|
  puts "    Installing #{package} "
  install(package)
end
