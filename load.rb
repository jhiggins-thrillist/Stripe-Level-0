#!/usr/bin/env ruby
require 'trie'
require 'set'

path = ARGV.length > 0 ? ARGV[0] : '/usr/share/dict/words' #'/Users/jhiggins/Code/Stripe/level0/test/data/words-6b898d7c48630be05b72b3ae07c5be6617f90d8e'

File.readlines(path).each do |word|
    trie.insert(word.slice(0, word.length - 1).downcase, true)
end

Marshall.dump(trie, File.open('./trie.txt', 'w'))
#trie = Marshal.load(File.open('./trie.txt', 'r'))