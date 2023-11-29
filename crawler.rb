require 'fileutils'

system("rsync -avcizxL rsync.ietf.org::bibxml-ids ./bibxml-ids")

require "relaton_ietf"

FileUtils.rm Dir.glob("index*")
FileUtils.rm_rf "data"

RelatonIetf::DataFetcher.fetch "ietf-internet-drafts"
