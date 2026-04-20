# This formula is regenerated on every tagged release by GoReleaser
# (see workspace/openotters/.goreleaser.yaml in the main repo). The
# checked-in version is a starter placeholder so `brew tap` + `brew
# install` work during local development before the first release.
#
# Once the first tag is cut, GoReleaser overwrites this file with
# versioned URLs, SHA256 checksums, and bottle declarations.

class Otters < Formula
  desc "Build, run, and chat with AI agents"
  homepage "https://github.com/openotters/openotters"
  version "0.0.0-dev"
  license "Apache-2.0"

  # Placeholder source URLs — replaced on first tagged release.
  on_macos do
    on_arm do
      url "https://github.com/openotters/openotters/releases/download/v#{version}/otters_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/openotters/openotters/releases/download/v#{version}/otters_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/openotters/openotters/releases/download/v#{version}/otters_linux_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/openotters/openotters/releases/download/v#{version}/otters_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "otters"
    bin.install "ottersd"
  end

  service do
    run [opt_bin/"ottersd", "serve"]
    keep_alive true
    log_path var/"log/ottersd.log"
    error_log_path var/"log/ottersd.err.log"
  end

  test do
    assert_match "otters", shell_output("#{bin}/otters --version")
  end
end
