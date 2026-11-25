class Stackrig < Formula
  desc "Runs Coolify-generated compose stacks without Coolify"
  homepage "https://github.com/tschuba/stackrig"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/tschuba/stackrig/releases/download/v0.2.0/strig-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "615298fb630dd633ae5774a639ed3512ca6222036faeadc18a809dd24fe35631"
    end
    on_intel do
      url "https://github.com/tschuba/stackrig/releases/download/v0.2.0/strig-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "bfb4d8ce5f0b5845f722b591fd01af2e42956b4e76958a21613c3c25a50be5a6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tschuba/stackrig/releases/download/v0.2.0/strig-0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0ca5ae17b0abca50f674c9a0eee74229809f438f813c8ab60ad2e86991d0d528"
    end
    on_intel do
      url "https://github.com/tschuba/stackrig/releases/download/v0.2.0/strig-0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ebd784addeb073d2cd799c5e87467035a0f956dfca15555c5ff5d2dbd2c9bb0b"
    end
  end

  def install
    bin.install "strig"
  end

  test do
    assert_predicate bin/"strig", :exist?
  end
end
