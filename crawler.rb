require 'fileutils'

system("rsync -avcizxL rsync.ietf.org::bibxml-ids ./bibxml-ids")

require "relaton_ietf"
RelatonIetf::DataFetcher.fetch "ietf-internet-drafts"
