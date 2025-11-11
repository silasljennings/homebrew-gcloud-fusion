class GcloudFusion < Formula
  desc "CLI shortcuts for Google Cloud Platform, Firebase, and GitHub operations"
  homepage "https://gcloud-fusion.devdeviants.com"
  url "https://github.com/silasljennings/gcloud-fusion/releases/download/v1.0.0/cli-v1.0.0.tar.gz"
  sha256 "PLACEHOLDER_SHA256"
  license "MIT"
  version "1.0.0"

  depends_on "google-cloud-sdk"
  depends_on "firebase-cli"
  depends_on "gh"
  depends_on "git"
  depends_on "node" # Required for firebase-cli

  def install
    # Install compiled binaries to Homebrew's bin directory
    bin.install Dir["binaries/*"]

    # Install templates and configuration files
    libexec.install "templates.json"

    # Create config directory structure
    (var/"gcloud-fusion").mkpath
  end

  def caveats
    <<~EOS
      gcloud-fusion has been installed!

      Available commands:
        • help - Show all available commands
        • create-repo, delete-repo, get-repo - GitHub repository operations
        • set-project, create-secret, create-artifact - Google Cloud operations
        • create-emulator, run-emulator - Firebase operations
        • copy-repo, get-boiler - Local operations

      For full command list, run: help

      Migration from old installation:
        The new installation uses direct commands instead of shell functions.
        You may want to remove old shell functions from your ~/.zshrc or ~/.bashrc
    EOS
  end

  test do
    # Test that binaries are executable and show help
    assert_match "GCLOUD FUSION AVAILABLE COMMANDS", shell_output("#{bin}/help")
  end
end