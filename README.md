# mobx_questions

Project to play with MobX features.

## Getting Started

This project is playground to try out MobX features and answer questions about the package that 
arise from use.

## Investigations

### Methods to have Widgets observe changes

Tl;dr New users of MobX should use the Observer widget, once familiar/confident with MobX you may want to inherit from Stateless/StatefulObserverWidget.

There are many different ways to achieve having a Widget observe MobX Stores, the following techniques are explored in this project:

1. Wrap the Widget in [Observer](https://pub.dev/documentation/flutter_mobx/latest/flutter_mobx/Observer-class.html)
    - See lib/components/observer_widget.dart for an example
    - Pros
        - Simple
        - Well documented
        - Seems to be the convention/preferred method (he MobX examples and docs all use this)
        - Since it's explicit it's easy to understand what's happening and build an understanding of MobX.
    - Cons
        - Adds another level of code nesting in the build function
        - Adds another BuildContext
1. Subclass [StatelessObserverWidget](https://pub.dev/documentation/flutter_mobx/latest/flutter_mobx/StatelessObserverWidget-class.html) or [StatefulObserverWidget](https://pub.dev/documentation/flutter_mobx/latest/flutter_mobx/StatefulObserverWidget-class.html)
    - See lib/components/sublcass_widget.dart for an example
    - Pros
        - Less code and no boiler plate
        - Seamlessly makes a custom Widget respond to observable changes
        - Doesn't add more Widgets or contexts to your build function
    - Cons
        - Slightly 'magical' (i.e. the wiring is hidden from view)
        - Would be easy to forget the build function isn't normal leading to annoying bugs
1. Use [ObserverWidgetMixin](https://pub.dev/documentation/flutter_mobx/latest/flutter_mobx/ObserverWidgetMixin-mixin.html)
    - See lib/components/mixin_widget.dart for an example
    - Pros
        - Provides ultimate flexibility and freedom to develop sophisticated behavior
    - Cons
        - More complicated and requires more setup/boilerplate
        - There are surely times when you'd want this level of control, but none come to mind

Q: Is using ObserverWidgetMixin in custom Widgets cleaner than wrapping its children in Observer?

A: No. It seems ObserverWidgetMixin wasn't designed to seamlessly add Observer functionality to
custom Widgets and instead is more of an implementation detail of MobX. MobX implements Observer
(and friends) using ObserverWidgetMixin. It is possible to use the mixin in custom classes, but it
requires a fair amount of extra setup, so unless you need sophisticated custom behavior, using
Observer or Stateless/StatefulObserverWidget is a better option.


## Future Investigations

### Store constructors and initialization
1. What are the different ways to construct/initialize a Store and what are their tradeoffs?
1. How do we provide a const constructor?
1. How do we use final/required fields?

### Seamless mixin
1. ObserverWidgetMixin may not have been designed to seamlessly convert custom Widgets, but can we make a mixin that *does* to that?