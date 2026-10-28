class Penpal < Formula
  include Language::Python::Virtualenv

  desc "The local memory all your AIs share"
  homepage "https://github.com/Longfellow1/penpal"
  url "https://github.com/Longfellow1/penpal/archive/refs/tags/v0.4.0.tar.gz"
  version "0.4.0"
  sha256 "9190a82e5d49657b7e1edfb2d5255673805a88f2d18f3a52912234672691a1f2"
  license "Apache-2.0"
  head "https://github.com/Longfellow1/penpal.git", branch: "main"

  depends_on "python@3.13"

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/95/9c/c510029fc6ef33a6275cd2c5d3cecd6613dfd6aa401d57c54f1c18852ccf/setuptools-84.0.0-py3-none-any.whl"
    sha256 "51a52592b3b99e102b609654876bd65f19f999935166d1352678931132b0c670"
  end

  resource "wheel" do
    url "https://files.pythonhosted.org/packages/2e/29/69cfbb602cd91690c55d38ba9fe53e6a7e76a6fa647bf38f19c138d25449/wheel-0.48.0-py3-none-any.whl"
    sha256 "3217dcc807155e45db462d7ef2431f5ddda0d7273b700d05a67b271ceb1287ab"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/63/34/ba1c580383c9eada3711951fef0795c80b829a078d72188184bcab9dd527/packaging-26.3-py3-none-any.whl"
    sha256 "d7193f7c8e4e93f444fde0262bf90af30e16fa0ad0ad44cb553c87339b23cd1c"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/99/91/8acff4f5e50511b911bbccb72b8628a49c68ce14148cd9f6431094859a90/annotated_types-0.8.0-py3-none-any.whl"
    sha256 "f072f4d804ea359e4eaf198b1af7a8b0943881a87f31bb764f8bf219bb9419e0"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/12/b8/4bd346e22b28902df4d651910f5242c28d84e4a5c2435ca5c3f797ed7e2e/anyio-4.15.1-py3-none-any.whl"
    sha256 "6152fdbbf9a77fdec97731721bebf7c4c44f7c29b424b0065826173efc7ed101"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/64/b4/17d4b0b2a2dc85a6df63d1157e028ed19f90d4cd97c36717afef2bc2f395/attrs-26.1.0-py3-none-any.whl"
    sha256 "c647aa4a12dfbad9333ca4e71fe62ddc36f4e63b2d260a37a8b83d2f043ac309"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/08/ba/95dd616042484f7c83a06974388b37b837732740ee70bc5dc715b5fcd55a/certifi-2026.10.18-py3-none-any.whl"
    sha256 "73191c47aaa79da394e8fee2dbc2ec827432cab56311122c9e47abf79e390f62"
  end

  resource "cffi" do
    if Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/55/41/4c7042f317b9217502988f0873af87e16ad606dc20f84e546e3e6ce9764c/cffi-2.1.1-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "19ee6127ee34de7d83ce3d371ebc5ed91addbdcc39f9ab15ce4eb35a4e534971"
    else
      url "https://files.pythonhosted.org/packages/a7/46/2e5fdde8555706dd98139a910ca11be02809f3f605ce956f655d0214e100/cffi-2.1.1-cp313-cp313-macosx_10_15_x86_64.whl"
      sha256 "9d2055050ea716bd38b7f7f1579c275386646b4894c155a3e2f3cd62ed41b7c6"
    end
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/58/50/6c0d534c5f134586a8e1ba4e330569e32f057e33372ae556463212fb4cd3/click-8.5.0-py3-none-any.whl"
    sha256 "255bc9599cf7748b4b1a446ccc735421bd08a2ae529a8b88597d3de5664ee360"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/1b/bc/ee4137cbbe105652c0ee4252792b78fc8e7afa4b8e61d9d5dc05a7f45731/cryptography-48.0.1-cp311-abi3-macosx_10_9_universal2.whl"
    sha256 "3e4a1a3232eef2e6c732827d5722db29a0cc8b27af2a4d865b094cf954be9ca1"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "httpx-sse" do
    url "https://files.pythonhosted.org/packages/d2/fd/6668e5aec43ab844de6fc74927e155a3b37bf40d7c3790e49fc0406b6578/httpx_sse-0.4.3-py3-none-any.whl"
    sha256 "0ac1c9fe3c0afad2e0ebb25a934a59f4c7823b60792691f779fad2c5568830fc"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/58/a2/bb081bab032533a855d44de1d56f8e8426114ff1ba5d1f07a438a0a654f8/idna-3.20-py3-none-any.whl"
    sha256 "ab7ae7122974553370f0bdb919e1a960b2cd1bc1ef0276416d896db81c14582c"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/69/90/f63fb5873511e014207a475e2bb4e8b2e570d655b00ac19a9a0ca0a385ee/jsonschema-4.26.0-py3-none-any.whl"
    sha256 "d489f15263b8d200f8387e64b4c3a75f06629559fb73deb8fdfb525f2dab50ce"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/41/45/1a4ed80516f02155c51f51e8cedb3c1902296743db0bbc66608a0db2814f/jsonschema_specifications-2025.9.1-py3-none-any.whl"
    sha256 "98802fee3a11ee76ecaca44429fda8a41bff98b00a0f2838151b113f210cc6fe"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/b3/81/4da04ced5a082363ecfa159c010d200ecbd959ae410c10c0264a38cac0f5/markdown_it_py-4.2.0-py3-none-any.whl"
    sha256 "9f7ebbcd14fe59494226453aed97c1070d83f8d24b6fc3a3bcf9a38092641c4a"
  end

  resource "mcp" do
    url "https://files.pythonhosted.org/packages/f5/f4/e58bc33317c92a0203664daaf00bf6f41166cc0149e5d6870a03f7cd004a/mcp-1.30.0-py3-none-any.whl"
    sha256 "666edb5009503e1047c9d60346a756f94b261f05cc2625f23d41c728ffc484d0"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/b3/38/89ba8ad64ae25be8de66a6d463314cf1eb366222074cfda9ee839c56a4b4/mdurl-0.1.2-py3-none-any.whl"
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/90/11/0e6f11117525ff0eec40ebac3d313376f102df93ca44ad9e893ee85e4f89/pycparser-3.11-py3-none-any.whl"
    sha256 "51d5a8ba2be0bbe440b99d2112604c95bbbc3c2748a64260186c541e1729cd80"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/35/ea/a56b9fe5066f3537b7882f77e9c5dfb26d8c2eefdaed9b5fc73d57b4dc22/pydantic-2.14.1-py3-none-any.whl"
    sha256 "9195d967ec791692a04438115466764fb8b9a27b31f14a760437694f40d6b454"
  end

  resource "pydantic-settings" do
    url "https://files.pythonhosted.org/packages/53/f4/b987bf8c51e5b19a95fa66d1ee596074141e085d9c2ddf97920803c7029b/pydantic_settings-2.16.0-py3-none-any.whl"
    sha256 "7e73acf7f61936a15e5a3b6eedaea29f133357faf7272f2607ba479b049dd7f2"
  end

  resource "pydantic_core" do
    if Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/f7/b9/c720e56858d4e1539503297ed37063e0c08e0f3541c41b777f6a800f75fa/pydantic_core-2.50.1-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "0c003c3b7f49debb893d2d85ae099ac5959c9839e2f330fadb1fcdf7a6594482"
    else
      url "https://files.pythonhosted.org/packages/ae/57/0e237d7091d2cd44a35d243b7344227f90440166860469cd036afc23a04d/pydantic_core-2.50.1-cp313-cp313-macosx_10_12_x86_64.whl"
      sha256 "d5e062c01286d861fd6a1c4ff6e063547b3e713067f2df033c0ff97ac2ca006b"
    end
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/71/46/17f022dd3e953bf20a04a028a21ec746d942f8d2af30fa0f124fa0e6a684/pygments-2.21.0-py3-none-any.whl"
    sha256 "2363c69b61c4a97c838da3b130dcd6468f4848992b21a82f2a63ec34377137d9"
  end

  resource "PyJWT" do
    url "https://files.pythonhosted.org/packages/50/ca/44de4e75f8aadc457f0634be3b542815078ded46dca30efb960edeecad6e/pyjwt-2.15.1-py3-none-any.whl"
    sha256 "42d59d631f7768a1028a64c7ff581a9bf7519804daf91fc5b6c56e30eec5e193"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/1b/ed/a8bf040caf3704023d74086b7fb96cf4ed2e844e24bd94e5248ba214b700/pyobjc_core-12.2.2-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "950bd2d9c74634398c4e3d24ef2f213d4e23d705083697464fa67afedc53c1ad"
  end

  resource "pyobjc-framework-ApplicationServices" do
    url "https://files.pythonhosted.org/packages/b1/9d/fe660a822cc66a4261227b1597855c802b04dee56e5c8c153b9d5e6bcf0d/pyobjc_framework_applicationservices-12.2.2-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "3b5693a377480cf127caa1c8c835b8620896971029c545d99d01aa31a2c38159"
  end

  resource "pyobjc-framework-Cocoa" do
    url "https://files.pythonhosted.org/packages/db/e1/5d9b04ebb60042b9cb49adc2d33115e2f2c2e4ff7d548017bfaff8b7f536/pyobjc_framework_cocoa-12.2.2-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "600b1723184ca094931330e79355274949965460e23de38628d601b5a967baf9"
  end

  resource "pyobjc-framework-CoreML" do
    url "https://files.pythonhosted.org/packages/21/7a/46cd02ceb310f2f20e4a5fb78b4f2e456ea0c54799c773343ca575ccfb04/pyobjc_framework_coreml-12.2.2-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "70ae22934f2432677bbbcee04a21db2b0301056cd8390e61101fb59e1d374174"
  end

  resource "pyobjc-framework-CoreText" do
    url "https://files.pythonhosted.org/packages/6c/6d/e1a4c572c867bd40b705687c741a747083c6dbc63bd797bb6ed5c5108f6e/pyobjc_framework_coretext-12.2.2-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "dbd0f288a859e359ee8e7ccf45bc2c489f38ae1087c21468b61d700433e0c91b"
  end

  resource "pyobjc-framework-Quartz" do
    url "https://files.pythonhosted.org/packages/bb/ae/b515852dbe491171f2f2e2eb7739588a5eb7f36720a739545337b8c0d706/pyobjc_framework_quartz-12.2.2-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "0ec9751904ef975bf0789d760dc4fadcb400edc4ffe4a736eb54971968babe5c"
  end

  resource "pyobjc-framework-Vision" do
    url "https://files.pythonhosted.org/packages/c9/f6/e3cb58a12ab51ff9ac159988fc3c6410a60234dc7b448223fc090cd3d1f7/pyobjc_framework_vision-12.2.2-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "306e536e12d3565e53649818e3324e801fbb1696ea75ba751852dffbacba8b14"
  end

  resource "pyobjc-framework-WebKit" do
    url "https://files.pythonhosted.org/packages/69/84/036541aaf4795c0022b6b1dda9a4e099e14b137012065a799a0b174947e5/pyobjc_framework_webkit-12.2.2-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "206f88451e1c3e152c72c16c2af2664646cd752a3007c9cda8029a9e3f0ec9a4"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/60/d1/38f3a3405989a89ac18390803e70c6ad7c7760da4f9b83cbeca0c44a0c72/python_dotenv-1.2.4-py3-none-any.whl"
    sha256 "42269a8a5b3fd54ffa6f3d84b18abed50064717576b4ecf03dc4a55d8aa04fdc"
  end

  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/e1/04/e8135ebd1ad02c56ec633277529b2602ff99ff634be76cdba5744cf554fd/python_multipart-0.0.32-py3-none-any.whl"
    sha256 "ff6d3f776f16878c894e52e107296ffc890e913c611b1a4ec6c44e2821fe2e23"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/2c/58/ca301544e1fa93ed4f80d724bf5b194f6e4b945841c5bfd555878eea9fcb/referencing-0.37.0-py3-none-any.whl"
    sha256 "381329a9f99628c9069361716891d34ad94af76e461dcb0335825aecc7692231"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/82/3b/64d4899d73f91ba49a8c18a8ff3f0ea8f1c1d75481760df8c68ef5235bf5/rich-15.0.0-py3-none-any.whl"
    sha256 "33bd4ef74232fb73fe9279a257718407f169c09b78a87ad3d296f548e27de0bb"
  end

  resource "rpds-py" do
    if Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/57/71/a097d6552f837500fc36e6b23d09cfb9890c3cc47531f9ca64e149799615/rpds_py-2026.9.1-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "eba5d173f7d5708b22a93815017a4611873ed54db9f268077c0dd1ed99cfc858"
    else
      url "https://files.pythonhosted.org/packages/83/ea/ee88fd9e756ff93fb6b1182a47ec09504a242620e33ce1d20679efefe841/rpds_py-2026.9.1-cp313-cp313-macosx_10_12_x86_64.whl"
      sha256 "a36b70596407634ca82d4b989a3729074a008537a0522e4c8046a67c729103e9"
    end
  end

  resource "sse-starlette" do
    url "https://files.pythonhosted.org/packages/be/e4/cdda14023c316d71493bc54fdffc3dd006631b88866145c9d3cc33e0f1df/sse_starlette-3.5.0-py3-none-any.whl"
    sha256 "3e6e1070df3f0f5d9cea81496de92dbb72f6721871d99748ece67441dd8b7997"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/f3/93/181df62699d9b5aca1d87e5cfda131dac87e3cdaebf668662f7206ca3470/starlette-1.9.0-py3-none-any.whl"
    sha256 "fd3f159936e882d06c1108f84688f7cda2cf85fc6a592a50edbd175e882c2ddc"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/49/d3/b8441a820a491ddfc024b0b0cf0393375b75ea13866d9c66727e54c2fc80/typing_extensions-4.16.0-py3-none-any.whl"
    sha256 "481caa481374e813c1b176ada14e97f1f67a4539ce9cfeb3f350d78d6370c2e8"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/67/81/4add07e5172b7ac40d8ed5ff580409a7801a4fe26d529bdd915401dabfbe/typing_inspection-0.4.4-py3-none-any.whl"
    sha256 "65b8397ba37ccbce054456aaccddfc91e6e3083c92824df348d96ca832f3f147"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/38/0c/b54a4fdd7f90a3af8b02ebc9ce6712c2c208b7926a2f7bad95c33ebbe943/uvicorn-0.54.0-py3-none-any.whl"
    sha256 "505bdb0f318731d45f1f712071fc781a8981f6847a31c902c9f5e652d4f67faf"
  end

  def install
    python = Formula["python@3.13"].opt_bin/"python3.13"
    virtualenv_create(libexec, python, system_site_packages: false)

    resources.each do |resource|
      resource.stage do
        wheel = Pathname.glob("*.whl").first
        system python, "-m", "pip", "--python=#{libexec}/bin/python", "install",
               "--no-deps", "--no-compile", wheel || Pathname.pwd
      end
    end

    system python, "-m", "pip", "--python=#{libexec}/bin/python", "install", "--no-deps", "--no-build-isolation",
           "--no-compile", "#{buildpath}[macos]"
    bin.install_symlink libexec/"bin/penpal"
    bin.install_symlink libexec/"bin/keypulse"
  end

  def caveats
    <<~EOS
      To initialize Penpal (also run this once when upgrading from 0.2.x):
        penpal install init

      Then check the setup and grant the macOS permissions it asks for:
        penpal doctor

      Grant these to "Penpal" (System Settings -> Privacy & Security):
        Input Monitoring
        Accessibility
        Full Disk Access (needed for Safari history)
      Screen Recording is not required. doctor names the exact app to grant.
      Later upgrades keep these grants.
    EOS
  end

  test do
    assert_match "Penpal", shell_output("#{bin}/penpal --help")
  end
end
