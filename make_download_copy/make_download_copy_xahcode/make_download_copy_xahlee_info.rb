 # -*- coding: utf-8 -*-

require 'fileutils'

inpath ="/Users/xah/web/xahlee_info"

outpath ="/Users/xah/web/xahlee_org/diklo/yy_xahlee_info"


# remove existing
if File.exist?(outpath)
then FileUtils.remove_dir(outpath)
end

# copy dir
FileUtils.cp_r(inpath ,outpath)

# remove java doc
if File.exist?(outpath + "/java8_doc")
then FileUtils.rm_rf(outpath + "/java8_doc")
end

# replace scripts and ads
%x[python3 /Users/xah/git/xahscripts/make_download_copy/find_replace_ads.py3 #{outpath}]

# remove xx files and temp files etc
%x[python3 /Users/xah/git/xahscripts/make_download_copy/delete_temp_files.py3 #{outpath}]

p 'done'
