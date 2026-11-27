class Stackrig < Formula
  desc "Runs Coolify-generated compose stacks without Coolify"
  homepage "https://github.com/tschuba/stackrig"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/tschuba/stackrig/releases/download/v1.1.0/strig-1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "a87fc0cecfac2ac4883ab969cb2ff08e7112adebd57107cbf2a11a4d24a3a578"
    end
    on_intel do
      url "https://github.com/tschuba/stackrig/releases/download/v1.1.0/strig-1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "a03efd52be3d5c55dbc96413ae73e3e94c39b8ad33d272e6ab516c7d6a9a7ca9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tschuba/stackrig/releases/download/v1.1.0/strig-1.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a66f8d9e95aa960c323cfdfcf7b39b94ef98ac128df1cff1a9a0b28c5e741ed5"
    end
    on_intel do
      url "https://github.com/tschuba/stackrig/releases/download/v1.1.0/strig-1.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "90d7225f58d41085e17431a407205629992e0600df4d2c37898bc6cddeecc043"
    end
  end

  def install
    bin.install "strig"
  end

  test do
    assert_predicate bin/"strig", :exist?
  end
end
