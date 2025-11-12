 class GcloudFusion < Formula
    desc "CLI shortcuts for Google Cloud Platform, Firebase, and GitHub operations"
    homepage "https://gcloud-fusion.devdeviants.com"
    url "https://github.com/silasljennings/homebrew-gcloud-fusion/raw/main/tarballs/cli-v1.5.0.tar.gz"
    sha256 "975780ef5c082631644021ccc7ec4ddced01b6f1b77f61b781f0d2ec8600f3c6"
    license "MIT"
    version "1.5.0"

    depends_on "node"
    depends_on "gh"
    depends_on "git"

    def install
      bin.install Dir["binaries/*"]
      libexec.install "templates.json"
      (var/"gcloud-fusion").mkpath
    end

    def caveats
      <<~EOS
        gcloud-fusion has been installed!

        Additional setup required:
          brew install --cask google-cloud-sdk
          npm install -g firebase-tools

        Available commands:
          • help - Show all available commands
          • create-repo, delete-repo, get-repo - GitHub operations
          • set-project, create-secret, create-artifact - Google Cloud operations
          • create-emulator, run-emulator - Firebase operations

        For full command list, run: help
      EOS
    end

    test do
      assert_match "GCLOUD FUSION AVAILABLE COMMANDS", shell_output("#{bin}/help")
    end
  end
