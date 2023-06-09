import 'package:flutter/material.dart';
import 'package:mi_control_remoto_universal/design_system_weincode/foundations/foundation_colors.dart';
import 'package:unicons/unicons.dart';

import '../../../utilities/constants/constants.dart';
import '../../atoms/titles/title_base.dart';

enum PageTemplate { splashscreen, home, devices, settings }

class PageBase extends StatelessWidget {
  final String? title;
  final EdgeInsetsGeometry? padding;
  final Widget child;
  final PageTemplate template;

  const PageBase({
    required this.template,
    required this.child,
    Key? key,
    this.title,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (template == PageTemplate.settings) {
      return SettingsTemplate(
        title: title,
        child: child,
        padding: padding,
      );
    }
    if (template == PageTemplate.devices) {
      return DevicesTemplate(
        title: title,
        child: child,
        padding: padding,
      );
    }
    return Padding(
      padding: padding != null
          ? padding!
          : const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 20.0,
            ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          title != null
              ? Center(
                  child: Text(title!),
                )
              : const SizedBox.shrink(),
          child
        ],
      ),
    );
  }
}

class SettingsTemplate extends StatelessWidget {
  final String? title;
  final Widget child;
  final EdgeInsetsGeometry? padding;

  const SettingsTemplate({
    required this.child,
    Key? key,
    this.title,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarTemplate(
        iconData: UniconsLine.setting,
        title: title ?? lblSettings,
      ),
      body: BodyTemplate(
        body: child,
        padding: padding,
      ),
    );
  }
}

class DevicesTemplate extends StatelessWidget {
  final String? title;
  final Widget child;
  final EdgeInsetsGeometry? padding;

  const DevicesTemplate({
    required this.child,
    Key? key,
    this.title,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarTemplate(
        iconData: UniconsLine.apps,
        title: title ?? lblDevices,
      ),
      body: BodyTemplate(
        body: child,
        padding: padding,
      ),
    );
  }
}

class AppBarTemplate extends StatelessWidget with PreferredSizeWidget {
  final IconData iconData;
  final String title;

  const AppBarTemplate({
    required this.iconData,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Row(
        children: [
          IconTemplate(
            iconData: iconData,
          ),
          const SizedBox(
            width: 10,
          ),
          TitleBase(
            title: title,
            size: 18,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class IconTemplate extends StatelessWidget {
  final IconData iconData;

  const IconTemplate({
    required this.iconData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      color: WeincodeColorsFoundation.primaryColor,
      size: 18,
    );
  }
}

class BodyTemplate extends StatelessWidget {
  final Widget body;
  final EdgeInsetsGeometry? padding;

  const BodyTemplate({
    required this.body,
    Key? key,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: padding != null ? padding! : const EdgeInsets.all(20.0),
          child: body,
        ),
      ),
    );
  }
}
