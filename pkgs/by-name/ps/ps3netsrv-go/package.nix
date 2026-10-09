{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule {
  pname = "ps3netsrv-go";
  version = "0.5.1";

  src = fetchFromGitHub {
    owner = "xakep666";
    repo = "ps3netsrv-go";
    rev = "v${version}";
    hash = "sha256-r5cv8Jdr1oBwo0TsXzTF6+kCVCvmOu2B98xzUiloBVY=";
  };

  vendorHash = "sha256-L3x6fnwmVoqXRleiC1P2pVAJYdRvWoGbp3PrqRyWHrw=";

  subPackages = [ "cmd/ps3netsrv-go" ];

  meta = {
    description = "Alternative implementation of original ps3netsrv written in Go";
    homepage = "https://github.com/xakep666/ps3netsrv-go";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
    mainProgram = "ps3netsrv-go";
    platforms = lib.platforms.unix;
  };
}
