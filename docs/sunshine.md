# Sunshine

## Steam

Do command (disable HDR, disable wide-gamut, set refresh to 120hz)

```bash
kscreen-doctor output.DP-3.mode.2560x1440@120 output.DP-3.hdr.disable output.DP-3.wcg.disable
```

Undo command (enable HDR, enable wide-gamut, set SDR brightness to 60%, set refresh to 165hz)

```bash
kscreen-doctor output.DP-3.mode.2560x1440@165 output.DP-3.hdr.enable output.DP-3.wcg.enable output.DP-3.sdr-brightness.500
```