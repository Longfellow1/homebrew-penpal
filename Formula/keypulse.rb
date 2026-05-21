class Keypulse < Formula
  include Language::Python::Virtualenv

  desc "Local-first personal activity memory layer for macOS"
  homepage "https://github.com/Longfellow1/keypulse"
  url "https://github.com/Longfellow1/keypulse/archive/refs/tags/v0.1.0-preview.1.tar.gz"
  version "0.1.0-preview.1"
  sha256 "ce9a8e0d3aaea44c95762c273d71ebb16d295cb4bf1e7a067e4d01674ce14efe"
  license "Apache-2.0"
  head "https://github.com/Longfellow1/keypulse.git", branch: "main"

  depends_on "python@3.13"

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/9d/76/f789f7a86709c6b087c5a2f52f911838cad707cc613162401badc665acfe/setuptools-82.0.1-py3-none-any.whl"
    sha256 "a59e362652f08dcd477c78bb6e7bd9d80a7995bc73ce773050228a348ce2e5bb"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/df/b2/87e62e8c3e2f4b32e5fe99e0b86d576da1312593b39f47d8ceef365e95ed/packaging-26.2-py3-none-any.whl"
    sha256 "5fc45236b9446107ff2415ce77c807cee2862cb6fac22b8a73826d0693b0980e"
  end

  resource "wheel" do
    url "https://files.pythonhosted.org/packages/87/1b/9e33c09813d65e248f7f773119148a612516a4bea93e9c6f545f78455b7c/wheel-0.47.0-py3-none-any.whl"
    sha256 "212281cab4dff978f6cedd499cd893e1f620791ca6ff7107cf270781e587eced"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/78/b6/6307fbef88d9b5ee7421e68d78a9f162e0da4900bc5f5793f6d3d0e34fb8/annotated_types-0.7.0-py3-none-any.whl"
    sha256 "1f02e8b43a8fbbc3f3e0d4f0f4bfc8131bcb4eebe8849b8e5c773f3a1c582a53"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/ee/ae/8e92f8058baf87f6c7d86ee7e457668690195cc77efedb8d3797a06e3940/click-8.4.0-py3-none-any.whl"
    sha256 "40c50b7c6c6adac2823d411041ec84f3f103f1b280d5e9ce0d7f998995832f81"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/b3/81/4da04ced5a082363ecfa159c010d200ecbd959ae410c10c0264a38cac0f5/markdown_it_py-4.2.0-py3-none-any.whl"
    sha256 "9f7ebbcd14fe59494226453aed97c1070d83f8d24b6fc3a3bcf9a38092641c4a"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/b3/38/89ba8ad64ae25be8de66a6d463314cf1eb366222074cfda9ee839c56a4b4/mdurl-0.1.2-py3-none-any.whl"
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/fd/7b/122376b1fd3c62c1ed9dc80c931ace4844b3c55407b6fb2d199377c9736f/pydantic-2.13.4-py3-none-any.whl"
    sha256 "45a282cde31d808236fd7ea9d919b128653c8b38b393d1c4ab335c62924d9aba"
  end

  resource "pydantic-core" do
    if Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/c1/81/4fa520eaffa8bd7d1525e644cd6d39e7d60b1592bc5b516693c7340b50f1/pydantic_core-2.46.4-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "c94f0688e7b8d0a67abf40e57a7eaaecd17cc9586706a31b76c031f63df052b4"
    else
      url "https://files.pythonhosted.org/packages/51/a2/5d30b469c5267a17b39dec53208222f76a8d351dfac4af661888c5aee77d/pydantic_core-2.46.4-cp313-cp313-macosx_10_12_x86_64.whl"
      sha256 "5d5902252db0d3cedf8d4a1bc68f70eeb430f7e4c7104c8c476753519b423008"
    end
  end

  resource "pydantic-settings" do
    url "https://files.pythonhosted.org/packages/ae/8d/f1af3832f5e6eb13ba94ee809e72b8ecb5eef226d27ee0bef7d963d943c7/pydantic_settings-2.14.1-py3-none-any.whl"
    sha256 "6e3c7edfd8277687cdc598f56e5cff0e9bfff0910a3749deaa8d4401c3a2b9de"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/f4/7e/a72dd26f3b0f4f2bf1dd8923c85f7ceb43172af56d63c7383eb62b332364/pygments-2.20.0-py3-none-any.whl"
    sha256 "81a9e26dd42fd28a23a2d169d86d7ac03b46e2f8b59ed4698fb4785f946d0176"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/f4/d2/29e5e536adc07bc3d33dd09f3f7cf844bf7b4981820dc2a91dd810f3c782/pyobjc_core-12.1-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "01c0cf500596f03e21c23aef9b5f326b9fb1f8f118cf0d8b66749b6cf4cbb37a"
  end

  resource "pyobjc-framework-ApplicationServices" do
    url "https://files.pythonhosted.org/packages/fc/21/79e42ee836f1010f5fe9e97d2817a006736bd287c15a3674c399190a2e77/pyobjc_framework_applicationservices-12.1-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "bd1f4dbb38234a24ae6819f5e22485cf7dd3dd4074ff3bf9a9fdb4c01a3b4a38"
  end

  resource "pyobjc-framework-Cocoa" do
    url "https://files.pythonhosted.org/packages/ad/31/0c2e734165abb46215797bd830c4bdcb780b699854b15f2b6240515edcc6/pyobjc_framework_cocoa-12.1-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "5a3dcd491cacc2f5a197142b3c556d8aafa3963011110102a093349017705118"
  end

  resource "pyobjc-framework-CoreML" do
    url "https://files.pythonhosted.org/packages/ae/3f/3749964aa3583f8c30d9996f0d15541120b78d307bb3070f5e47154ef38d/pyobjc_framework_coreml-12.1-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "48fa3bb4a03fa23e0e36c93936dca2969598e4102f4b441e1663f535fc99cd31"
  end

  resource "pyobjc-framework-CoreText" do
    url "https://files.pythonhosted.org/packages/20/a2/a3974e3e807c68e23a9d7db66fc38ac54f7ecd2b7a9237042006699a76e1/pyobjc_framework_coretext-12.1-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "7cbb2c28580e6704ce10b9a991ccd9563a22b3a75f67c36cf612544bd8b21b5f"
  end

  resource "pyobjc-framework-Quartz" do
    url "https://files.pythonhosted.org/packages/ba/2d/e8f495328101898c16c32ac10e7b14b08ff2c443a756a76fd1271915f097/pyobjc_framework_quartz-12.1-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "629b7971b1b43a11617f1460cd218bd308dfea247cd4ee3842eb40ca6f588860"
  end

  resource "pyobjc-framework-Vision" do
    url "https://files.pythonhosted.org/packages/f5/e4/e87361a31b82b22f8c0a59652d6e17625870dd002e8da75cb2343a84f2f9/pyobjc_framework_vision-12.1-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "7273e2508db4c2e88523b4b7ff38ac54808756e7ba01d78e6c08ea68f32577d2"
  end

  resource "pyobjc-framework-WebKit" do
    url "https://files.pythonhosted.org/packages/7a/3d/80d36280164c69220ce99372f7736a028617c207e42cb587716009eecb88/pyobjc_framework_webkit-12.1-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "1da0c428c9d9891c93e0de51c9f272bfeb96d34356cdf3136cb4ad56ce32ec2d"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/0b/d7/1959b9648791274998a9c3526f6d0ec8fd2233e4d4acce81bbae76b44b2a/python_dotenv-1.2.2-py3-none-any.whl"
    sha256 "1d8214789a24de455a8b8bd8ae6fe3c6b69a5e3d64aa8a8e5d68e694bbcb285a"
  end

  resource "PyYAML" do
    if Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/b1/16/95309993f1d3748cd644e02e38b75d50cbc0d9561d21f390a76242ce073f/pyyaml-6.0.3-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "2283a07e2c21a2aa78d9c4442724ec1eb15f5e42a723b99cb3d822d48f5f7ad1"
    else
      url "https://files.pythonhosted.org/packages/d1/11/0fd08f8192109f7169db964b5707a2f1e8b745d4e239b784a5a1dd80d1db/pyyaml-6.0.3-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "8da9669d359f02c0b91ccc01cac4a67f16afec0dac22c2ad09f46bee0697eba8"
    end
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/82/3b/64d4899d73f91ba49a8c18a8ff3f0ea8f1c1d75481760df8c68ef5235bf5/rich-15.0.0-py3-none-any.whl"
    sha256 "33bd4ef74232fb73fe9279a257718407f169c09b78a87ad3d296f548e27de0bb"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/18/67/36e9267722cc04a6b9f15c7f3441c2363321a3ea07da7ae0c0707beb2a9c/typing_extensions-4.15.0-py3-none-any.whl"
    sha256 "f0fa19c6845758ab08074a0cfa8b7aecb71c999ca73d62883bc25cc018c4e548"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/dc/9b/47798a6c91d8bdb567fe2698fe81e0c6b7cb7ef4d13da4114b41d239f65d/typing_inspection-0.4.2-py3-none-any.whl"
    sha256 "4ed1cacbdc298c220f1bd249ed5287caa16f34d44ef4e9c3d0cbad5b521545e7"
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
    bin.install_symlink libexec/"bin/keypulse"
  end

  def caveats
    <<~EOS
      To initialize KeyPulse:
        keypulse install init

      Then grant macOS permissions when prompted:
        System Settings -> Privacy & Security -> Accessibility
        System Settings -> Privacy & Security -> Screen Recording

      Check status:
        keypulse install doctor
        keypulse doctor
    EOS
  end

  test do
    assert_match "KeyPulse", shell_output("#{bin}/keypulse --help")
    assert_match "install", shell_output("#{bin}/keypulse install --help")
  end
end
