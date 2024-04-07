{ lib
, mkXfceDerivation
, gtk3
, libnotify
, librsvg
, libwnck
, libxklavier
, garcon
, libxfce4ui
, libxfce4util
, xfce4-panel
, xfconf
}:

mkXfceDerivation {
  category = "panel-plugins";
  pname = "xfce4-wavelan-plugin";
  version = "0.6.3";
  sha256 = "sha256-WvtbKwGadtoD3tADGgchBxgjwHgX3B/D9EpJWyRJSI4=";

  buildInputs = [
    garcon
    gtk3
    libnotify # optional notification support
    librsvg
    libxfce4ui
    libxfce4util
    libxklavier
    libwnck
    xfce4-panel
    xfconf
  ];

  meta = with lib; {
    description = "Allows you to setup and use multiple keyboard layouts";
    maintainers = with maintainers; [ yayayayaka ] ++ teams.xfce.members;
  };
}
