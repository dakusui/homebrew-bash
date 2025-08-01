# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class BashAT52 < Formula
  desc "GNU Bourne-Again Shell"
  homepage "https://www.gnu.org/software/bash/"
  url "https://ftp.gnu.org/gnu/bash/bash-5.2.tar.gz"
  sha256 "a139c166df7ff4471c5e0733051642ee5556c1cc8a4a78f145583c5c81ab32fb"
  license "GPL-3.0-or-later"

  # depends_on "cmake" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--with-installed-readline"
    system "make"
    system "make", "install"
  end

  test do
    assert_match "GNU bash, version 5.2", shell_output("#{bin}/bash --version")
  end
end
