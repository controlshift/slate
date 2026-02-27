# This is a monkey patch to fix the File.exists? method that was removed in newer Ruby versions
# The borrower gem (v0.10.0) uses this deprecated method, but in Ruby 3.4+ it's been removed
# This patch adds back the method by redirecting to the new File.exist? method

class File
  def self.exists?(path)
    exist?(path)
  end
end
