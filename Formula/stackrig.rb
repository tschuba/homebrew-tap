class Stackrig < Formula
  desc "Runs Coolify-generated compose stacks without Coolify"
  homepage "https://github.com/tschuba/stackrig"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/tschuba/stackrig/releases/download/v1.0.0/strig-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "65e6ee2eb114e00087cd159f2589c82bcedefe202a4742ebca3e58f035023d42"
    end
    on_intel do
      url "https://github.com/tschuba/stackrig/releases/download/v1.0.0/strig-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "b46bfdfbe372039159e34d512200bd809ea4798fd3f600ac163afcb764f26345"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tschuba/stackrig/releases/download/v1.0.0/strig-1.0.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5c07f9c67dc472132cb7ae0ffcad8894a4a3253ab9b9cd2cf9e6cdcf5e0db2be"
    end
    on_intel do
      url "https://github.com/tschuba/stackrig/releases/download/v1.0.0/strig-1.0.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "24dfee503f0901913c3f9c2df647fb26d1494ce271ef9247fb4c45adc1503b1e"
    end
  end

  def install
    bin.install "strig"
  end

  test do
    assert_predicate bin/"strig", :exist?
  end
end
