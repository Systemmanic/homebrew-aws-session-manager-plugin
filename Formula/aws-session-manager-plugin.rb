class AwsSessionManagerPlugin < Formula
  desc "Official Amazon AWS session manager plugin"
  homepage "https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html"
  url "https://s3.amazonaws.com/session-manager-downloads/plugin/1.1.61.0/mac/sessionmanager-bundle.zip"

  version "1.1.61.0"
  sha256 "426615b12b2d7728504ee7896c60fa330534314d6cb64ee8cb3ea0488e7d66e4"

  depends_on "awscli"

  def install
    bin.install "bin/session-manager-plugin"
    prefix.install %w[LICENSE VERSION]
  end

  test do
    system bin/"session-manager-plugin"
  end
end
