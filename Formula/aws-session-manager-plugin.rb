class AwsSessionManagerPlugin < Formula
  desc "Official Amazon AWS session manager plugin"
  homepage "https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html"
  url "https://s3.amazonaws.com/session-manager-downloads/plugin/1.1.54.0/mac/sessionmanager-bundle.zip"

  version "1.1.54.0"
  sha256 "d9b558193370b2ecc0ddba001b6ee974b14b60d4d247851706e26a9811f15349"

  depends_on "awscli"

  def install
    bin.install "bin/session-manager-plugin"
    prefix.install %w[LICENSE VERSION]
  end

  test do
    system bin/"session-manager-plugin"
  end
end
