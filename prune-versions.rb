#!/usr/bin/env ruby

# for the given gems, we are only keeping the libraries associated
# with the requested profiles

$global_verbose=ARGV.include?('-v')

def array_as_glob(files)
  files.empty? ? "*" : "{#{files.join(',')}}"
end

def sys(cmd, verbose: nil)
  puts cmd if verbose.nil? ? $global_verbose : verbose
  `#{cmd}`.chomp
end

# https://github.com/ManageIQ/manageiq-providers-azure_stack/blob/master/manageiq-providers-azure_stack.gemspec#L21
gems_of_interest=%w[azure_mgmt_compute azure_mgmt_monitor azure_mgmt_network azure_mgmt_resources]
# https://github.com/ManageIQ/manageiq-providers-azure_stack/blob/master/app/models/manageiq/providers/azure_stack/manager_mixin.rb
profiles=[] # %w[v2017_03_09 v2018_03_01 latest]
# currently supporting all profiles
# will need to prune any unsupported profiles (since they have require statements of pruned files
# of note: check monitor does not have the profiles that we support
#          so something else is happening there

sum=0
gems_of_interest.each do |gem|
  sub_sum=0
  root="management/#{gem}"

  good_version_names=sys("cat #{root}/lib/profiles/#{array_as_glob(profiles)}/modules/*.rb | sed -n 's/.*Mgmt::V\\([^:]*\\):.*/\\1/p' | sort -u | sed 's/_/-/g'").chomp.split
  if good_version_names.empty?
    puts "","gem #{gem} does not have profiles #{profiles.join(',')}",""
    next
  end
  good_version_filenames=good_version_names.map { |fn| fn.gsub(/_/,'-') } 
  #puts "good filenames:", good_version_filenames

  good_versions = Dir["#{root}/lib/{#{array_as_glob(good_version_filenames)}}"]
  #puts "good versions:", good_versions

  if good_versions.empty?
    STDERR.puts "","did not find any good version for #{gem}"
    STDERR.puts "skipping... (please check for an error)",""
    next
  end

  all_versions=Dir["#{root}/lib/2*"]
  # puts "all versions:", all_versions.size

  bad_versions=(all_versions-good_versions)
  # puts "bad versions:", bad_versions.size

  bad_versions.each do |file|
    freed=sys("du -sk #{file}", verbose:false).to_i
    sum += freed
    sub_sum += freed
    # sys("rm #{file}")
  end

  puts ">> #{sub_sum/1024}mb pruned from #{gem}"
end

puts "",">> #{sum/1024}mb pruned from all gems"
