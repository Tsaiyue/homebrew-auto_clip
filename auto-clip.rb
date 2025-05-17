class AutoClip < Formula
    desc "Automated video clipping tool (requires FFmpeg)"
    homepage "https://github.com/Tsaiyue/EggPainTT_autoclip"
    url "https://github.com/Tsaiyue/EggPainTT_autoclip/releases/download/v1.0.0-test/auto_clip_mac.tar.gz"
    sha256 "47212437cb55a820b9311fb4cccee483cb512322ee089659430f4b7a40c1476d"  # Obtain using shasum -a 256 auto_clip_mac.tar.gz
    license "MIT"
  
    depends_on "ffmpeg"  # Declare that the user needs to install FFmpeg
    depends_on "python@3.9"  # Declare that the user needs to install Python 3.9.6

    def install
      bin.install "auto_clip"  # Install
    end
  
    test do
        assert_match "usage", shell_output("#{bin}/auto_clip -h")  # 检查输出是否包含 "usage" 或其他关键字
    end
  end
