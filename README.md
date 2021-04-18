# Flutter GTK 🧊

Implementation of GTK & Adwaita widgets in Flutter.

<p align="center">
  <img src="https://raw.githubusercontent.com/jesusrp98/flutter_gtk/master/assets/flutter_loves_gtk.png" width="512">
</p>

This project aims to provide a set of tools and widgets derived from the [GTK library](https://www.gtk.org/) for GNU+Linux systems.

It allows the development of apps for Linux desktops, and provides a similiar user experience compared to 'native' GTK-based apps.

Note that this package IS IN DEVELOPMENT, and help from both the Flutter and GTK community will be pretty apreciated.

## Example

You can find an example app within this project. It emulates the [Clock](https://flathub.org/apps/details/org.gnome.clocks) app for GNOME.

Added to the example app is the [bitsdojo_window](https://pub.dev/packages/bitsdojo_window) package, that allows you add window controll buttons, such as maximize & close, as well as delete all window decorators, as reflected in this [GitHub issue](https://github.com/bitsdojo/bitsdojo_window/issues/43).

<p align="center">
  <img src="https://raw.githubusercontent.com/jesusrp98/flutter_gtk/master/assets/example.png" width="750">
</p>

## Widgets

### AdwaitaHeaderBar

This widget implements the window header bar introduced in GTK 3.

You can place elements at the left, right or center of the panel.

There's also the posibility to rener the window control buttons, such as minimize, maximize & close.

```
AdwaitaHeaderBar(
  onMinimize: () => appWindow.minimize(),
  onMaximize: () => appWindow.maximizeOrRestore(),
  onClose: () => appWindow.close(),
  leading: AdwaitaHeaderButton(
    icon: Icons.add,
    onTap: () => null,
  ),
  center: AdwaitaViewSwitcher(
    tabs: [
      ViewSwitcherData(
        icon: Icons.language,
        title: 'World',
      ),
      // ...
    ],
  ),
  trailling: AdwaitaHeaderButton(
    icon: Icons.menu,
    onTap: () => null,
  )
)
```

### AdwaitaViewSwitcher

This widget provides view switching functionality.

It looks and feel pretty similar to the `HdyViewSwitcherBar` component provided by `libhandy`.

```
AdwaitaViewSwitcher(
  tabs: [
    ViewSwitcherData(
      icon: Icons.language,
      title: 'World',
    ),
    // ...
  ]
)
```

### AdwaitaHeaderButton

A simple icon button, that can also display text, that usually is display within a `AdwaitaHeaderBar` widget.

```
AdwaitaHeaderButton(
  icon: Icons.menu,
  onTap: () => null,
)
```

## Getting Started

This project is a starting point for a Dart [package](https://flutter.io/developing-packages/), a library module containing code that can be shared easily across multiple Flutter or Dart projects.

For help getting started with Flutter, view our [online documentation](https://flutter.io/docs), which offers tutorials, samples, guidance on mobile development, and a full API reference.

## Built with

- [Flutter](https://flutter.dev/) - Beautiful native apps in record time.
- [Android Studio](https://developer.android.com/studio/index.html/) - Tools for building apps on every type of Android device.
- [Visual Studio Code](https://code.visualstudio.com/) - Code editing. Redefined.

## Authors

- **Jesús Rodríguez** - you can find me on [GitHub](https://github.com/jesusrp98), [Twitter](https://twitter.com/jesusrp98) & [Reddit](https://www.reddit.com/user/jesusrp98).

## License

This project is licensed under the GNU GPL v3 License - see the [LICENSE](LICENSE) file for details.
