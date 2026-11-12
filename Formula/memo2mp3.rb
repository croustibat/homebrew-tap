class Memo2mp3 < Formula
  desc "Convert Apple Voice Memos recordings (.qta/.m4a) to MP3"
  homepage "https://github.com/croustibat/memo2mp3"
  url "https://github.com/croustibat/memo2mp3/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "2c3f82201df85b95336c44febfd7fb00eeb3f3123fb90d9cae9a3867979cd81f"
  license "MIT"

  depends_on "ffmpeg"
  depends_on :macos

  def install
    bin.install "memo2mp3"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/memo2mp3 --version")
  end
end
