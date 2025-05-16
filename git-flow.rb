class GitFlow < Formula
  desc "Git extensions to make you better at your job"
  homepage "https://github.com/anhkhoakz/gitflow#readme"
  url "https://github.com/anhkhoakz/gitflow/archive/refs/tags/v1.12.4.tar.gz"
  sha256 "07b68c76beb4a69f7724e9ef62eb4d1d665169cbdaa95b3f7a453c708a39c5dd"

  def install
    # Install executable files
    bin.install "git-flow"

    # Install script files
    bin.install %w[
      git-flow-init
      git-flow-feature
      git-flow-bugfix
      git-flow-hotfix
      git-flow-release
      git-flow-support
      git-flow-version
      git-flow-log
      git-flow-config
      gitflow-common
      gitflow-shFlags
    ]

    # Install hooks
    (share/"doc/gitflow/hooks").install Dir["hooks/*"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test git-toolbelt`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
